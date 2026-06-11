#! /usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"

PYTHON_BIN="${PYTHON:-python}"
INFER_SCRIPT="${INFER_SCRIPT:-${ROOT_DIR}/infer.py}"
INFER_BENCHMARK="${INFER_BENCHMARK:-spider_data}"
INFER_SPLIT="${INFER_SPLIT:-test}"
INFER_DB="${INFER_DB:-full}"
INFER_BATCH_SIZE="${INFER_BATCH_SIZE:-1}"
INFER_MAX_LENGTH="${INFER_MAX_LENGTH:-856}"
INFER_DEVICE="${INFER_DEVICE:-cuda}"
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT:-${ROOT_DIR}/results/infer/qwen/spider_data}"

export PYTHONPATH="${ROOT_DIR}${PYTHONPATH:+:${PYTHONPATH}}"

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
fi

mkdir -p "${INFER_OUTPUT_ROOT}"

latest_checkpoint_dir() {
  local ckpt_root="$1"

  if [[ ! -d "${ckpt_root}" ]]; then
    echo "Checkpoint root does not exist: ${ckpt_root}" >&2
    return 1
  fi

  find "${ckpt_root}" -mindepth 1 -maxdepth 1 -type d -regex '.*/[0-9]+' | sort -V | tail -n 1
}

run_infer() {
  local run_id="$1"
  local model="$2"
  local ckpt_root="$3"
  local ckpt_path
  local ckpt_step
  local output_path
  local -a cmd

  ckpt_path="$(latest_checkpoint_dir "${ckpt_root}")"
  if [[ -z "${ckpt_path}" ]]; then
    echo "No numeric checkpoint found under: ${ckpt_root}" >&2
    return 1
  fi

  ckpt_step="$(basename "${ckpt_path}")"
  output_path="${INFER_OUTPUT_ROOT}/${run_id}__ckpt${ckpt_step}__${INFER_SPLIT}__${INFER_DB}_sql_result.json"

  cmd=(
    "${PYTHON_BIN}" "${INFER_SCRIPT}"
    --benchmark "${INFER_BENCHMARK}"
    --split "${INFER_SPLIT}"
    --db "${INFER_DB}"
    --model "${model}"
    --ckpt_path "${ckpt_path}"
    --device "${INFER_DEVICE}"
    --batch-size "${INFER_BATCH_SIZE}"
    --max-length "${INFER_MAX_LENGTH}"
    --output_path "${output_path}"
  )

  echo "[infer] ${run_id}"
  echo "        model: ${model}"
  echo "        ckpt : ${ckpt_path}"
  echo "        out  : ${output_path}"
  echo "        cmd  : ${cmd[*]}"
  "${cmd[@]}"
}

# Configs derived from scripts/qwen/sft/sft_qwen3_0.6b.sh
run_infer \
  "sft__sft_qwen3_0.6b" \
  "Qwen/Qwen3-0.6B" \
  "${ROOT_DIR}/results/qwen3/sft_sft_qwen3_0.6b_spider/e5-bs4-lr5e-05-G4-N2-NN1"

# Configs derived from scripts/qwen/sft/sft_qwen3_4b.sh
run_infer \
  "sft__sft_qwen3_4b" \
  "Qwen/Qwen3-4B" \
  "${ROOT_DIR}/results/qwen3/sft_sft_qwen3_4b_spider_lora/e5-bs4-lr0.0001-G4-N2-NN1-lora-32-64-0.1"
