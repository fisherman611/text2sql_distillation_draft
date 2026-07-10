#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../../.." && pwd)"
cd "${REPO_ROOT}"

if [[ -n "${RUN_GPUS:-0 1}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
fi

BASE_MODEL="${BASE_MODEL:-Qwen/Qwen3-0.6B}"
DEVICE="${DEVICE:-cuda}"
BATCH_SIZE="${BATCH_SIZE:-100}"
FLUSH_EVERY="${FLUSH_EVERY:-100}"
OUT_ROOT="${OUT_ROOT:-infer_results/infer/qwen/spider_4sets/synid_ce_3_csd_tau0.05_1090}"
SKIP_EXISTING="${SKIP_EXISTING:-false}"
FORMAT_AFTER_INFER="${FORMAT_AFTER_INFER:-true}"

BENCHMARKS=(
  "spider_data:856"
  "spider_syn:756"
  "spider_realistic:755"
  "spider_dk:663"
)

CKPTS=(
  "a0.1|hf://distillation-sql/bird_baselines/qwen3/synid_ce_3_train_0.6b_4b_csd_spider_synid_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-csd-tau0.05-a0.1-b0.1-poolsc-lora-16-64-0.1/1090"
  "a0.2|hf://distillation-sql/bird_baselines/qwen3/synid_ce_3_train_0.6b_4b_csd_spider_synid_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-csd-tau0.05-a0.2-b0.1-poolsc-lora-16-64-0.1/1090"
  "a0.3|hf://distillation-sql/bird_baselines/qwen3/synid_ce_3_train_0.6b_4b_csd_spider_synid_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-csd-tau0.05-a0.3-b0.1-poolsc-lora-16-64-0.1/1090"
  "a0.4|hf://distillation-sql/bird_baselines/qwen3/synid_ce_3_train_0.6b_4b_csd_spider_synid_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-csd-tau0.05-a0.4-b0.1-poolsc-lora-16-64-0.1/1090"
  "a0.5|hf://distillation-sql/bird_baselines/qwen3/synid_ce_3_train_0.6b_4b_csd_spider_synid_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-csd-tau0.05-a0.5-b0.1-poolsc-lora-16-64-0.1/1090"
)

for ckpt_item in "${CKPTS[@]}"; do
  label="${ckpt_item%%|*}"
  ckpt_path="${ckpt_item#*|}"
  out_dir="${OUT_ROOT}/${label}"
  mkdir -p "${out_dir}"

  for benchmark_item in "${BENCHMARKS[@]}"; do
    benchmark="${benchmark_item%%:*}"
    max_length="${benchmark_item#*:}"
    output_path="${out_dir}/${benchmark}_test_full_sql_result.json"

    if [[ "${SKIP_EXISTING}" == "true" && -s "${output_path}" ]]; then
      echo "[skip] ${label} ${benchmark}: ${output_path}"
      continue
    fi

    echo "[infer] ${label} ${benchmark} max_length=${max_length}"
    cmd=(
      python infer.py
      --benchmark "${benchmark}"
      --split test
      --db full
      --model "${BASE_MODEL}"
      --ckpt_path "${ckpt_path}"
      --device "${DEVICE}"
      --max-length "${max_length}"
      --batch-size "${BATCH_SIZE}"
      --flush-every "${FLUSH_EVERY}"
      --output_path "${output_path}"
    )

    if [[ -n "${LIMIT:-}" ]]; then
      cmd+=(--limit "${LIMIT}")
    fi

    "${cmd[@]}"
  done

  if [[ "${FORMAT_AFTER_INFER}" == "true" ]]; then
    python scripts/format_spider_infer_results.py --input-dir "${out_dir}"
  fi
done

