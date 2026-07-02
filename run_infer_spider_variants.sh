#! /usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"

PYTHON_BIN="${PYTHON:-python}"
INFER_SCRIPT="${INFER_SCRIPT:-${ROOT_DIR}/infer.py}"
CKPT_SEARCH_ROOT="${CKPT_SEARCH_ROOT:-${ROOT_DIR}/results/qwen3}"
INFER_SPLIT="${INFER_SPLIT:-test}"
INFER_DB="${INFER_DB:-full}"
INFER_BATCH_SIZE="${INFER_BATCH_SIZE:-1}"
INFER_DEVICE="${INFER_DEVICE:-cuda}"
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT:-${ROOT_DIR}/results/infer/qwen}"
INFER_EXTRA_ARGS="${INFER_EXTRA_ARGS:-}"
OVERWRITE="${OVERWRITE:-0}"

BENCHMARKS=(
  "spider_syn:756"
  "spider_realistic:755"
  "spider_dk:663"
)

export PYTHONPATH="${ROOT_DIR}${PYTHONPATH:+:${PYTHONPATH}}"

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
fi

usage() {
  cat <<'EOF'
Usage: ./run_infer_spider_variants.sh [checkpoint_root ...]

Run full test inference for trained Spider checkpoints on:
  spider_syn        max_length=756
  spider_realistic  max_length=755
  spider_dk         max_length=663

If checkpoint roots are not provided, the script scans:
  $CKPT_SEARCH_ROOT/*spider*

Environment overrides:
  RUN_GPUS              CUDA_VISIBLE_DEVICES value.
  CKPT_SEARCH_ROOT      Default: ./results/qwen3
  INFER_BATCH_SIZE      Default: 1
  INFER_DEVICE          Default: cuda
  INFER_OUTPUT_ROOT     Default: ./results/infer/qwen
  INFER_EXTRA_ARGS      Extra raw args appended to infer.py.
  OVERWRITE=1           Re-run even when output JSON already exists.

Examples:
  ./run_infer_spider_variants.sh
  RUN_GPUS=0 ./run_infer_spider_variants.sh results/qwen3/kd_3_rkl_train_0.6b_4b_kd0.6_spider_lora
  INFER_BATCH_SIZE=4 OVERWRITE=1 ./run_infer_spider_variants.sh
EOF
}

safe_name() {
  local raw="$1"
  raw="${raw//[^[:alnum:]._-]/_}"
  printf '%s' "${raw}"
}

latest_checkpoint_dir() {
  local save_path="$1"

  "${PYTHON_BIN}" - "$save_path" <<'PY'
import sys
from pathlib import Path

save_path = Path(sys.argv[1])
marker_files = {
    "adapter_config.json",
    "config.json",
    "model.safetensors",
    "pytorch_model.bin",
    "adapter_model.bin",
    "adapter_model.safetensors",
}
candidates = []

if save_path.is_dir():
    for child in (save_path, *save_path.rglob("*")):
        if not child.is_dir():
            continue
        if any((child / marker).exists() for marker in marker_files):
            step = int(child.name) if child.name.isdigit() else -1
            candidates.append((step, child.stat().st_mtime, child))

if candidates:
    print(str(max(candidates, key=lambda item: (item[0], item[1]))[2]))
PY
}

read_args_json_value() {
  local args_json="$1"
  local key="$2"

  "${PYTHON_BIN}" - "$args_json" "$key" <<'PY'
import json
import sys

args_json, key = sys.argv[1], sys.argv[2]
try:
    with open(args_json, "r", encoding="utf-8") as fin:
        value = json.load(fin).get(key, "")
except Exception:
    value = ""
print("" if value is None else value)
PY
}

infer_model_from_name() {
  local run_id="$1"
  local lower
  lower="$(printf '%s' "${run_id}" | tr '[:upper:]' '[:lower:]')"

  if [[ "${lower}" == *"4b"* && "${lower}" != *"0.6b_4b"* ]]; then
    printf 'Qwen/Qwen3-4B'
  else
    printf 'Qwen/Qwen3-0.6B'
  fi
}

model_for_checkpoint() {
  local ckpt_root="$1"
  local ckpt_path="$2"
  local args_json
  local model_path

  for args_json in "${ckpt_path}/args.json" "${ckpt_root}/args.json"; do
    if [[ -f "${args_json}" ]]; then
      model_path="$(read_args_json_value "${args_json}" "model_path")"
      if [[ -n "${model_path}" ]]; then
        printf '%s' "${model_path}"
        return
      fi
    fi
  done

  infer_model_from_name "$(basename "${ckpt_root}")"
}

discover_checkpoint_roots() {
  if [[ "$#" -gt 0 ]]; then
    printf '%s\n' "$@"
    return
  fi

  if [[ ! -d "${CKPT_SEARCH_ROOT}" ]]; then
    echo "Checkpoint search root does not exist: ${CKPT_SEARCH_ROOT}" >&2
    return 1
  fi

  find "${CKPT_SEARCH_ROOT}" -mindepth 1 -maxdepth 1 -type d -name '*spider*' | sort
}

run_one() {
  local ckpt_root="$1"
  local ckpt_path
  local ckpt_step
  local run_id
  local model
  local benchmark_spec
  local benchmark
  local max_length
  local output_dir
  local output_path
  local -a cmd
  local -a extra_args

  ckpt_path="$(latest_checkpoint_dir "${ckpt_root}")"
  if [[ -z "${ckpt_path}" ]]; then
    echo "[skip] No checkpoint marker found under ${ckpt_root}" >&2
    return 0
  fi

  ckpt_step="$(basename "${ckpt_path}")"
  run_id="$(safe_name "$(basename "${ckpt_root}")")"
  model="$(model_for_checkpoint "${ckpt_root}" "${ckpt_path}")"

  for benchmark_spec in "${BENCHMARKS[@]}"; do
    benchmark="${benchmark_spec%%:*}"
    max_length="${benchmark_spec##*:}"
    output_dir="${INFER_OUTPUT_ROOT}/${benchmark}"
    output_path="${output_dir}/${run_id}__ckpt${ckpt_step}__${INFER_SPLIT}__${INFER_DB}_sql_result.json"
    mkdir -p "${output_dir}"

    if [[ -f "${output_path}" && "${OVERWRITE}" != "1" ]]; then
      echo "[skip-existing] ${output_path}"
      continue
    fi

    cmd=(
      "${PYTHON_BIN}" "${INFER_SCRIPT}"
      --benchmark "${benchmark}"
      --split "${INFER_SPLIT}"
      --db "${INFER_DB}"
      --model "${model}"
      --ckpt_path "${ckpt_path}"
      --device "${INFER_DEVICE}"
      --batch-size "${INFER_BATCH_SIZE}"
      --max-length "${max_length}"
      --output_path "${output_path}"
    )
    if [[ -n "${INFER_EXTRA_ARGS}" ]]; then
      # Intentional word-splitting: this is a raw convenience escape hatch.
      extra_args=( ${INFER_EXTRA_ARGS} )
      cmd+=("${extra_args[@]}")
    fi

    echo "[infer] ${run_id} -> ${benchmark}"
    echo "        model     : ${model}"
    echo "        ckpt      : ${ckpt_path}"
    echo "        max length: ${max_length}"
    echo "        out       : ${output_path}"
    echo "        cmd       : ${cmd[*]}"
    "${cmd[@]}"
  done
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

mapfile -t CKPT_ROOTS < <(discover_checkpoint_roots "$@")
if [[ "${#CKPT_ROOTS[@]}" -eq 0 ]]; then
  echo "No checkpoint roots found." >&2
  exit 1
fi

echo "Found ${#CKPT_ROOTS[@]} checkpoint root(s)."
for ckpt_root in "${CKPT_ROOTS[@]}"; do
  run_one "${ckpt_root}"
done
