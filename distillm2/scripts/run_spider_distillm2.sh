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
BASE_CONFIG="${BASE_CONFIG:-training_configs/qwen3-0.6b-4b-spider-distillm2.yaml}"
CONFIG="${CONFIG:-runtime_configs/spider_distillm2.yaml}"
STUDENT_MODEL="${STUDENT_MODEL:-Qwen/Qwen3-0.6B}"
STUDENT_CKPT_PATH="${STUDENT_CKPT_PATH:-hf://distillation-sql/baselines/qwen3/sft_sft_qwen3_0.6b_spider/e5-bs4-lr5e-05-G4-N2-NN1/1090}"
STUDENT_IS_LORA="${STUDENT_IS_LORA:-auto}"
TEACHER_BASE="${TEACHER_BASE:-Qwen/Qwen3-4B-Instruct-2507}"
TEACHER_LORA="${TEACHER_LORA:-hf://distillation-sql/baselines/qwen3/sft_sft_qwen3_4b_spider_lora/e5-bs4-lr0.0001-G4-N2-NN1-lora-32-64-0.1/1090}"
PAIR_DATA_DIR="${PAIR_DATA_DIR:-data/spider_sql_distillm2}"
TEACHER_TRAIN_RESULTS="${TEACHER_TRAIN_RESULTS:-infer_results/qwen3_teacher_train.json}"
TEACHER_VALID_RESULTS="${TEACHER_VALID_RESULTS:-infer_results/qwen3_teacher_valid.json}"
STUDENT_TRAIN_RESULTS="${STUDENT_TRAIN_RESULTS:-infer_results/qwen3_sft_train.json}"
STUDENT_VALID_RESULTS="${STUDENT_VALID_RESULTS:-infer_results/qwen3_sft_valid.json}"
OUTPUT_DIR="${OUTPUT_DIR:-outputs/qwen3-0.6b-4b-spider-distillm2}"
PUSH_TO_HUB="${PUSH_TO_HUB:-false}"
HUB_MODEL_ID="${HUB_MODEL_ID:-null}"
REBUILD_INFERENCE="${REBUILD_INFERENCE:-0}"
REBUILD_PAIRS="${REBUILD_PAIRS:-0}"
DRY_RUN="${DRY_RUN:-0}"
GENERATION_BATCH_SIZE="${GENERATION_BATCH_SIZE:-4}"

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
  --set "ref_model_name_or_path=${TEACHER_BASE}" \
  --set "ref_adapter_name_or_path=${TEACHER_LORA}" \
  --set "output_dir=${OUTPUT_DIR}" \
  --set "run_name=$(basename "${OUTPUT_DIR}")" \
  --set "push_to_hub=${PUSH_TO_HUB}" \
  --set "hub_model_id=${HUB_MODEL_ID}" \
  --set "dataset_mixer={'${PAIR_DATA_DIR}': 1.0}"

echo "Student train source: ${TRAIN_STUDENT}"
echo "Teacher base: ${TEACHER_BASE}"
echo "Teacher adapter: ${TEACHER_LORA}"
echo "Runtime config: ${CONFIG}"
echo "Generation batch size: ${GENERATION_BATCH_SIZE}"

if [[ "${DRY_RUN}" == "1" ]]; then
  echo "DRY_RUN=1, stopping before inference and training."
  exit 0
fi

if [[ "${REBUILD_PAIRS}" == "1" || ! -f "${PAIR_DATA_DIR}/dataset_dict.json" ]]; then
  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${TEACHER_TRAIN_RESULTS}" ]]; then
    run_teacher_infer \
      ../processed_data/benchmarks/spider_data/qwen/train.jsonl \
      "${TEACHER_TRAIN_RESULTS}"
  else
    echo "Reusing teacher train results: ${TEACHER_TRAIN_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${TEACHER_VALID_RESULTS}" ]]; then
    run_teacher_infer \
      ../processed_data/benchmarks/spider_data/qwen/valid.jsonl \
      "${TEACHER_VALID_RESULTS}"
  else
    echo "Reusing teacher valid results: ${TEACHER_VALID_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${STUDENT_TRAIN_RESULTS}" ]]; then
    run_student_infer \
      ../processed_data/benchmarks/spider_data/qwen/train.jsonl \
      "${STUDENT_TRAIN_RESULTS}"
  else
    echo "Reusing student train results: ${STUDENT_TRAIN_RESULTS}"
  fi

  if [[ "${REBUILD_INFERENCE}" == "1" || ! -f "${STUDENT_VALID_RESULTS}" ]]; then
    run_student_infer \
      ../processed_data/benchmarks/spider_data/qwen/valid.jsonl \
      "${STUDENT_VALID_RESULTS}"
  else
    echo "Reusing student valid results: ${STUDENT_VALID_RESULTS}"
  fi

  python scripts/prepare_spider_sql_data.py \
    --mode pairs \
    --output-dir "${PAIR_DATA_DIR}" \
    --teacher-train-results "${TEACHER_TRAIN_RESULTS}" \
    --teacher-valid-results "${TEACHER_VALID_RESULTS}" \
    --student-train-results "${STUDENT_TRAIN_RESULTS}" \
    --student-valid-results "${STUDENT_VALID_RESULTS}"
else
  echo "Reusing pair dataset: ${PAIR_DATA_DIR}"
fi

accelerate launch \
  --config_file accelerate_configs/deepspeed_zero3.yaml \
  --num_processes="${NUM_PROCESSES}" \
  src/run_distillm.py "${CONFIG}"
