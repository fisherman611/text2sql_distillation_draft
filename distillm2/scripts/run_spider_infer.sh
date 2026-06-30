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

MODEL="${MODEL:-Qwen/Qwen3-0.6B}"
CKPT_PATH="${CKPT_PATH:-outputs/qwen3-0.6b-4b-spider-distillm2}"
HF_TOKEN="${HF_TOKEN:-${HF_READ_TOKEN:-}}"
INPUT="${INPUT:-../processed_data/benchmarks/spider_data/qwen/test.jsonl}"
OUTPUT="${OUTPUT:-infer_results/qwen3_distillm2_test.json}"
BATCH_SIZE="${BATCH_SIZE:-1}"
MAX_NEW_TOKENS="${MAX_NEW_TOKENS:-256}"

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
fi

cmd=(
  python infer_spider_sql.py
  --input "${INPUT}"
  --model "${MODEL}"
  --batch-size "${BATCH_SIZE}"
  --max-new-tokens "${MAX_NEW_TOKENS}"
  --output "${OUTPUT}"
)
if [[ -n "${CKPT_PATH}" ]]; then
  cmd+=(--ckpt-path "${CKPT_PATH}")
fi
"${cmd[@]}"
