#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

HF_ENV_FILE="${HF_ENV_FILE:-.env.hf}"
if [[ -f "${HF_ENV_FILE}" ]]; then
  set -a
  source "${HF_ENV_FILE}"
  set +a
fi

NUM_PROCESSES="${NUM_PROCESSES:-2}"
BASE_CONFIG="${BASE_CONFIG:-training_configs/llama3.2-1b-8b-spider-distillm2.yaml}"
CONFIG="${CONFIG:-runtime_configs/spider_distillm2_llama.yaml}"
PROCESSED_ROOT="${LLAMA_PROCESSED_ROOT:-../processed_data/spider_data/llama}"
STUDENT_MODEL="${LLAMA_STUDENT_MODEL:-meta-llama/Llama-3.2-1B-Instruct}"
STUDENT_CKPT_PATH="${LLAMA_STUDENT_CKPT_PATH:-}"
STUDENT_IS_LORA="${LLAMA_STUDENT_IS_LORA:-auto}"
TEACHER_BASE="${LLAMA_TEACHER_BASE:-meta-llama/Llama-3.1-8B-Instruct}"
TEACHER_LORA="${LLAMA_TEACHER_LORA:-hf://distillation-sql/llama_spider/llama/sft_sft_llama3_8b_lora_spider_lm_e5-bs2-lr0.0001-G8-N2-NN1-lora-16-64-0.1/e5-bs2-lr0.0001-G8-N2-NN1-lora-16-64-0.1/1090}"
PAIR_DATA_DIR="${LLAMA_PAIR_DATA_DIR:-data/spider_sql_distillm2_llama}"
TEACHER_TRAIN_RESULTS="${LLAMA_TEACHER_TRAIN_RESULTS:-infer_results/llama_teacher_train.json}"
TEACHER_VALID_RESULTS="${LLAMA_TEACHER_VALID_RESULTS:-infer_results/llama_teacher_valid.json}"
STUDENT_TRAIN_RESULTS="${LLAMA_STUDENT_TRAIN_RESULTS:-infer_results/llama_student_train.json}"
STUDENT_VALID_RESULTS="${LLAMA_STUDENT_VALID_RESULTS:-infer_results/llama_student_valid.json}"
OUTPUT_DIR="${LLAMA_OUTPUT_DIR:-${DISTILLM2_OUTPUT_DIR:-outputs/llama3.2-1b-8b-spider-distillm2}}"
PUSH_TO_HUB="${PUSH_TO_HUB:-false}"
HUB_MODEL_ID="${LLAMA_HUB_MODEL_ID:-null}"
ATTN_IMPLEMENTATION="${ATTN_IMPLEMENTATION:-sdpa}"
REBUILD_INFERENCE="${REBUILD_INFERENCE:-0}"
REBUILD_PAIRS="${REBUILD_PAIRS:-0}"
DRY_RUN="${DRY_RUN:-0}"
GENERATION_BATCH_SIZE="${LLAMA_GENERATION_BATCH_SIZE:-4}"
KD_LOSS_WEIGHT="${KD_LOSS_WEIGHT:-1.0}"
RESUME="${RESUME:-1}"
PREPARE_EXTRA_ARGS="${PREPARE_EXTRA_ARGS:---no-thinking-stub}"

if [[ "${RESUME}" == "0" || "${RESUME}" == "false" ]]; then
  AUTO_RESUME_FROM_CHECKPOINT=false
else
  AUTO_RESUME_FROM_CHECKPOINT=true
fi

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
  IFS=',' read -r -a GPU_LIST <<< "${RUN_GPUS}"
  NUM_PROCESSES="${#GPU_LIST[@]}"
fi

run_student_infer() {
  local input="$1"
  local output="$2"
  local -a cmd=(
    python infer_spider_sql.py
    --input "${input}"
    --model "${STUDENT_MODEL}"
    --batch-size "${GENERATION_BATCH_SIZE}"
    --output "${output}"
  )
  if [[ -n "${STUDENT_CKPT_PATH}" ]]; then
    cmd+=(--ckpt-path "${STUDENT_CKPT_PATH}")
  fi
  "${cmd[@]}"
}

run_teacher_infer() {
  local input="$1"
  local output="$2"
  local -a cmd=(
    python infer_spider_sql.py
    --input "${input}"
    --model "${TEACHER_BASE}"
    --batch-size "${GENERATION_BATCH_SIZE}"
    --output "${output}"
  )
  if [[ -n "${TEACHER_LORA}" ]]; then
    cmd+=(--ckpt-path "${TEACHER_LORA}")
  fi
  "${cmd[@]}"
}

if [[ -n "${STUDENT_CKPT_PATH}" && "${STUDENT_IS_LORA}" != "0" && "${STUDENT_IS_LORA}" != "false" ]]; then
  TRAIN_STUDENT="${STUDENT_CKPT_PATH}"
else
  TRAIN_STUDENT="${STUDENT_MODEL}"
fi

python scripts/make_hf_config.py \
  --template "${BASE_CONFIG}" \
  --output "${CONFIG}" \
  --set "model_name_or_path=${TRAIN_STUDENT}" \
  --set "tokenizer_name_or_path=${STUDENT_MODEL}" \
  --set "ref_model_name_or_path=${TEACHER_BASE}" \
  --set "ref_adapter_name_or_path=${TEACHER_LORA}" \
  --set "output_dir=${OUTPUT_DIR}" \
  --set "run_name=$(basename "${OUTPUT_DIR}")" \
  --set "push_to_hub=${PUSH_TO_HUB}" \
  --set "hub_model_id=${HUB_MODEL_ID}" \
  --set "attn_implementation=${ATTN_IMPLEMENTATION}" \
  --set "kd_loss_weight=${KD_LOSS_WEIGHT}" \
  --set "auto_resume_from_checkpoint=${AUTO_RESUME_FROM_CHECKPOINT}" \
  --set "dataset_mixer={'${PAIR_DATA_DIR}': 1.0}"

echo "Student train source: ${TRAIN_STUDENT}"
echo "Teacher base: ${TEACHER_BASE}"
echo "Teacher adapter: ${TEACHER_LORA}"
echo "Processed root: ${PROCESSED_ROOT}"
echo "Runtime config: ${CONFIG}"
echo "Attention implementation: ${ATTN_IMPLEMENTATION}"
echo "Generation batch size: ${GENERATION_BATCH_SIZE}"
echo "Loss: (1 - ${KD_LOSS_WEIGHT}) * gold SFT CE + ${KD_LOSS_WEIGHT} * DistiLLM-2"
echo "Auto resume: ${AUTO_RESUME_FROM_CHECKPOINT}"

if [[ "${DRY_RUN}" == "1" ]]; then
  echo "DRY_RUN=1, stopping before inference and training."
  exit 0
fi

if [[ "${REBUILD_PAIRS}" == "1" || ! -f "${PAIR_DATA_DIR}/dataset_dict.json" ]]; then
  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${TEACHER_TRAIN_RESULTS}" ]]; then
    run_teacher_infer "${PROCESSED_ROOT}/train.jsonl" "${TEACHER_TRAIN_RESULTS}"
  else
    echo "Reusing teacher train results: ${TEACHER_TRAIN_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${TEACHER_VALID_RESULTS}" ]]; then
    run_teacher_infer "${PROCESSED_ROOT}/valid.jsonl" "${TEACHER_VALID_RESULTS}"
  else
    echo "Reusing teacher valid results: ${TEACHER_VALID_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${STUDENT_TRAIN_RESULTS}" ]]; then
    run_student_infer "${PROCESSED_ROOT}/train.jsonl" "${STUDENT_TRAIN_RESULTS}"
  else
    echo "Reusing student train results: ${STUDENT_TRAIN_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${STUDENT_VALID_RESULTS}" ]]; then
    run_student_infer "${PROCESSED_ROOT}/valid.jsonl" "${STUDENT_VALID_RESULTS}"
  else
    echo "Reusing student valid results: ${STUDENT_VALID_RESULTS}"
  fi

  python scripts/prepare_spider_sql_data.py \
    --mode pairs \
    --processed-root "${PROCESSED_ROOT}" \
    --output-dir "${PAIR_DATA_DIR}" \
    --teacher-train-results "${TEACHER_TRAIN_RESULTS}" \
    --teacher-valid-results "${TEACHER_VALID_RESULTS}" \
    --student-train-results "${STUDENT_TRAIN_RESULTS}" \
    --student-valid-results "${STUDENT_VALID_RESULTS}" \
    ${PREPARE_EXTRA_ARGS}
else
  echo "Reusing pair dataset: ${PAIR_DATA_DIR}"
fi

accelerate launch \
  --config_file accelerate_configs/deepspeed_zero3.yaml \
  --num_processes="${NUM_PROCESSES}" \
  src/run_distillm.py "${CONFIG}"
