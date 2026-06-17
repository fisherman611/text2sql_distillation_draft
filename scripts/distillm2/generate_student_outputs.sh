#! /bin/bash

set -euo pipefail

BASE_PATH="${BASE_PATH:-.}"
INPUT_JSONL="${INPUT_JSONL:-benchmarks_2/spider_data/format_data/train.jsonl}"
OUTPUT_JSONL="${OUTPUT_JSONL:-generated/distillm2/spider_data/student_base_train.jsonl}"

STUDENT_GEN_CKPT="${STUDENT_GEN_CKPT:-Qwen/Qwen3-0.6B}"

BATCH_SIZE="${BATCH_SIZE:-1}"
MAX_NEW_TOKENS="${MAX_NEW_TOKENS:-512}"
TEMPERATURE="${TEMPERATURE:-0.5}"
TOP_P="${TOP_P:-0.95}"
TOP_K="${TOP_K:-0}"
LIMIT="${LIMIT:-}"
DEVICE="${DEVICE:-auto}"

OPTS=""
OPTS+=" --input-jsonl ${INPUT_JSONL}"
OPTS+=" --output-jsonl ${OUTPUT_JSONL}"
OPTS+=" --model ${STUDENT_GEN_CKPT}"
OPTS+=" --device ${DEVICE}"
OPTS+=" --batch-size ${BATCH_SIZE}"
OPTS+=" --max-new-tokens ${MAX_NEW_TOKENS}"
OPTS+=" --temperature ${TEMPERATURE}"
OPTS+=" --top-p ${TOP_P}"
OPTS+=" --top-k ${TOP_K}"

if [[ -n "${LIMIT}" ]]; then
  OPTS+=" --limit ${LIMIT}"
fi

export PYTHONPATH="${BASE_PATH}"
python "${BASE_PATH}/scripts/distillm2/generate_outputs.py" ${OPTS} "$@"
