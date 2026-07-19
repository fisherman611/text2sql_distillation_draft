#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../../.." && pwd)"
cd "${REPO_ROOT}"

DISTILLM2_OUTPUT_DIR="${DISTILLM2_OUTPUT_DIR:-outputs/llama3.2-1b-8b-spider-distillm2}"
INFER_BENCHMARKS="${INFER_BENCHMARKS:-spider_data,spider_syn,spider_realistic,spider_dk}"
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT:-results/infer/llama_distillm2_ref/llama}"
EVAL_OUTPUT_ROOT="${EVAL_OUTPUT_ROOT:-results/eval/llama_distillm2_ref/llama}"
SKIP_HF_UPLOAD="${SKIP_HF_UPLOAD:-0}"

echo "[pipeline] train DistiLLM-2 reference Llama"
OUTPUT_DIR="${DISTILLM2_OUTPUT_DIR}" \
  bash distillm2/scripts/run_spider_distillm2_llama.sh

echo "[pipeline] multi-seed infer + eval"
IFS=',' read -r -a BENCHMARK_ARGS <<< "${INFER_BENCHMARKS}"
for i in "${!BENCHMARK_ARGS[@]}"; do
  BENCHMARK_ARGS[$i]="${BENCHMARK_ARGS[$i]//[[:space:]]/}"
done

PHASE=all \
CKPT_PATH="distillm2/${DISTILLM2_OUTPUT_DIR}" \
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT}" \
EVAL_OUTPUT_ROOT="${EVAL_OUTPUT_ROOT}" \
  bash scripts/llama/distillm2/run_infer_eval_multiseed.sh "${BENCHMARK_ARGS[@]}"

case "${SKIP_HF_UPLOAD}" in
  1|true|TRUE|yes|YES|y|Y)
    echo "[upload-skip] SKIP_HF_UPLOAD=${SKIP_HF_UPLOAD}"
    ;;
  *)
    echo "[pipeline] upload to Hugging Face"
    "${PYTHON:-python}" scripts/llama/distillm2/upload_to_hf.py \
      --checkpoint-dir "distillm2/${DISTILLM2_OUTPUT_DIR}" \
      --infer-output-root "${INFER_OUTPUT_ROOT%/llama}" \
      --eval-output-root "${EVAL_OUTPUT_ROOT%/llama}"
    ;;
esac

echo "[pipeline-done]"
