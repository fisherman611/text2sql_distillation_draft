#! /bin/bash

set -euo pipefail

BASE_PATH="${BASE_PATH:-.}"
SOURCE_TRAIN_JSONL="${SOURCE_TRAIN_JSONL:-benchmarks_2/spider_data/format_data/train.jsonl}"
SOURCE_DEV_JSONL="${SOURCE_DEV_JSONL:-benchmarks_2/spider_data/format_data/dev.jsonl}"
DISTILLM2_WORK_DIR="${DISTILLM2_WORK_DIR:-runs/distillm2/spider_paper_full}"

CKPT="${CKPT:-Qwen/Qwen3-0.6B}"
TEACHER_CKPT="${TEACHER_CKPT:-Qwen/Qwen3-4B-Instruct-2507}"
TEACHER_PEFT_PATH="${TEACHER_PEFT_PATH:-hf://distillation-sql/baselines/qwen3/sft_sft_qwen3_4b_spider_lora/e5-bs4-lr0.0001-G4-N2-NN1-lora-32-64-0.1/1090}"

TOTAL_EPOCHS="${EPOCHS:-5}"
LIMIT="${LIMIT:-}"
DEVICE="${DEVICE:-auto}"
BATCH_SIZE="${BATCH_SIZE:-2}"
MAX_LENGTH="${MAX_LENGTH:-1612}"
MAX_PROMPT_LENGTH="${MAX_PROMPT_LENGTH:-1479}"
GEN_TEMPERATURE="${GEN_TEMPERATURE:-0.5}"
GEN_TOP_P="${GEN_TOP_P:-0.95}"
GEN_TOP_K="${GEN_TOP_K:-0}"

if [[ -n "${LIMIT}" && -z "${GRAD_ACC:-}" ]]; then
  export GRAD_ACC=1
fi

mkdir -p "${DISTILLM2_WORK_DIR}/generated" "${DISTILLM2_WORK_DIR}/data" "${DISTILLM2_WORK_DIR}/processed" "${DISTILLM2_WORK_DIR}/checkpoints"

TEACHER_JSONL="${DISTILLM2_WORK_DIR}/generated/teacher_train.jsonl"
if [[ ! -s "${TEACHER_JSONL}" || "${FORCE_GENERATE_TEACHER:-0}" == "1" ]]; then
  teacher_opts=(
    --input-jsonl "${SOURCE_TRAIN_JSONL}"
    --output-jsonl "${TEACHER_JSONL}"
    --model "${TEACHER_CKPT}"
    --ckpt-path "${TEACHER_PEFT_PATH}"
    --device "${DEVICE}"
    --batch-size "${BATCH_SIZE}"
    --max-length "${MAX_LENGTH}"
    --temperature "${GEN_TEMPERATURE}"
    --top-p "${GEN_TOP_P}"
    --top-k "${GEN_TOP_K}"
  )
  if [[ -n "${LIMIT}" ]]; then
    teacher_opts+=(--limit "${LIMIT}")
  fi
  PYTHONPATH="${BASE_PATH}" python "${BASE_PATH}/scripts/distillm2/generate_outputs.py" "${teacher_opts[@]}"
else
  echo "Using cached teacher outputs: ${TEACHER_JSONL}"
fi

PREV_CKPT="${INITIAL_PEFT_PATH:-}"
CHOSEN_GAP_ANCHOR=""
REJECTED_GAP_ANCHOR=""

for epoch in $(seq 1 "${TOTAL_EPOCHS}"); do
  echo "========== DistiLLM-2 paper epoch ${epoch}/${TOTAL_EPOCHS} =========="

  STUDENT_JSONL="${DISTILLM2_WORK_DIR}/generated/student_epoch_${epoch}.jsonl"
  student_opts=(
    --input-jsonl "${SOURCE_TRAIN_JSONL}"
    --output-jsonl "${STUDENT_JSONL}"
    --model "${CKPT}"
    --device "${DEVICE}"
    --batch-size "${BATCH_SIZE}"
    --max-length "${MAX_LENGTH}"
    --temperature "${GEN_TEMPERATURE}"
    --top-p "${GEN_TOP_P}"
    --top-k "${GEN_TOP_K}"
  )
  if [[ -n "${PREV_CKPT}" ]]; then
    student_opts+=(--ckpt-path "${PREV_CKPT}")
  fi
  if [[ -n "${LIMIT}" ]]; then
    student_opts+=(--limit "${LIMIT}")
  fi
  PYTHONPATH="${BASE_PATH}" python "${BASE_PATH}/scripts/distillm2/generate_outputs.py" "${student_opts[@]}"

  PAIR_DIR="${DISTILLM2_WORK_DIR}/data/epoch_${epoch}"
  PROCESSED_DIR="${DISTILLM2_WORK_DIR}/processed/epoch_${epoch}"
  mkdir -p "${PAIR_DIR}" "${PROCESSED_DIR}"

  build_opts=(
    --source-train-jsonl "${SOURCE_TRAIN_JSONL}"
    --source-dev-jsonl "${SOURCE_DEV_JSONL}"
    --teacher-jsonl "${TEACHER_JSONL}"
    --student-jsonl "${STUDENT_JSONL}"
    --output-dir "${PAIR_DIR}"
  )
  if [[ -n "${LIMIT}" ]]; then
    build_opts+=(--limit "${LIMIT}")
  fi
  PYTHONPATH="${BASE_PATH}" python "${BASE_PATH}/scripts/distillm2/build_distillm2_pairs.py" "${build_opts[@]}"

  common_process_opts=(
    --model-path "${CKPT}"
    --model-type qwen
    --data-dir "${PAIR_DIR}"
    --processed-data-dir "${PROCESSED_DIR}"
    --max-length "${MAX_LENGTH}"
    --max-prompt-length "${MAX_PROMPT_LENGTH}"
    --data-process-workers "${DATA_PROCESS_WORKERS:-1}"
  )
  PYTHONPATH="${BASE_PATH}" python "${BASE_PATH}/process_distillm2_data.py" "${common_process_opts[@]}" --split train
  PYTHONPATH="${BASE_PATH}" python "${BASE_PATH}/process_distillm2_data.py" "${common_process_opts[@]}" --split valid

  SAVE_PATH="${DISTILLM2_WORK_DIR}/checkpoints/epoch_${epoch}"
  export BASE_PATH
  export BATCH_SIZE
  export DATA_DIR="${PROCESSED_DIR}/qwen"
  export SAVE_PATH
  export CKPT
  export MAX_LENGTH
  export MAX_PROMPT_LENGTH
  export TEACHER_CKPT
  export TEACHER_PEFT_PATH
  export EPOCHS=1
  export DISTILLM2_CURRENT_EPOCH="${epoch}"
  export DISTILLM2_TOTAL_EPOCHS="${TOTAL_EPOCHS}"
  export DISTILLM2_CHOSEN_GAP_ANCHOR="${CHOSEN_GAP_ANCHOR}"
  export DISTILLM2_REJECTED_GAP_ANCHOR="${REJECTED_GAP_ANCHOR}"
  if [[ -n "${PREV_CKPT}" ]]; then
    export PEFT_PATH="${PREV_CKPT}"
  else
    unset PEFT_PATH || true
  fi

  bash "${BASE_PATH}/scripts/qwen/distillm2/train_0.6b_4b_offline_base.sh" "$@"

  LATEST_CKPT="$(ls -d "${SAVE_PATH}"/[0-9]* 2>/dev/null | sort -V | tail -n 1 || true)"
  if [[ -z "${LATEST_CKPT}" ]]; then
    echo "No numeric checkpoint directory found under ${SAVE_PATH}" >&2
    exit 1
  fi
  PREV_CKPT="${LATEST_CKPT}"

  ANCHOR_JSON="${SAVE_PATH}/distillm2_anchors.json"
  if [[ -s "${ANCHOR_JSON}" ]]; then
    CHOSEN_GAP_ANCHOR="$(python -c "import json,sys; print(json.load(open(sys.argv[1]))['chosen_gap_anchor'])" "${ANCHOR_JSON}")"
    REJECTED_GAP_ANCHOR="$(python -c "import json,sys; print(json.load(open(sys.argv[1]))['rejected_gap_anchor'])" "${ANCHOR_JSON}")"
  fi
done

echo "Final DistiLLM-2 checkpoint: ${PREV_CKPT}"
