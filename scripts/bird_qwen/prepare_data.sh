#! /bin/bash

set -euo pipefail

BASE_PATH="${BASE_PATH:-.}"
RAW_ROOT="${RAW_ROOT:-benchmarks_2/bird}"
RAW_DIR="${RAW_DIR:-${RAW_ROOT}/format_data}"
PROCESSED_ROOT="${PROCESSED_ROOT:-processed_data/benchmarks/bird}"
MODEL_PATH="${MODEL_PATH:-Qwen/Qwen3-0.6B}"
DATA_PROCESS_WORKERS="${DATA_PROCESS_WORKERS:-8}"

MAX_LENGTH="${MAX_LENGTH:-3001}"
MAX_PROMPT_LENGTH="${MAX_PROMPT_LENGTH:-2912}"

export PYTHONPATH="${BASE_PATH}"

python "${BASE_PATH}/scripts/format_bird_jsonl.py" \
  --root "${RAW_ROOT}" \
  --splits train val test

# process_data.py maps --split valid to the source file dev.jsonl.
cp "${RAW_DIR}/val.jsonl" "${RAW_DIR}/dev.jsonl"

for SPLIT in train valid test; do
  python "${BASE_PATH}/process_data.py" \
    --base-path "${BASE_PATH}" \
    --model-path "${MODEL_PATH}" \
    --model-type qwen \
    --data-dir "${RAW_DIR}" \
    --processed-data-dir "${PROCESSED_ROOT}" \
    --split "${SPLIT}" \
    --data-process-workers "${DATA_PROCESS_WORKERS}" \
    --max-length "${MAX_LENGTH}" \
    --max-prompt-length "${MAX_PROMPT_LENGTH}"
done

echo "Processed BIRD Qwen data at ${PROCESSED_ROOT}/qwen"
