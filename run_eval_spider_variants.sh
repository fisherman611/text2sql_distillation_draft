#! /usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"

PYTHON_BIN="${PYTHON:-python}"
FORMAT_SCRIPT="${FORMAT_SCRIPT:-${ROOT_DIR}/scripts/format_spider_infer_results.py}"
EVAL_SCRIPT="${EVAL_SCRIPT:-${ROOT_DIR}/src/evaluator/run_benchmark.py}"
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT:-${ROOT_DIR}/infer_results/infer/qwen}"
EVAL_OUTPUT_ROOT="${EVAL_OUTPUT_ROOT:-${ROOT_DIR}/results/eval/qwen}"
ETYPE="${ETYPE:-all}"
EXEC_TIMEOUT="${EXEC_TIMEOUT:-60}"
PROGRESS_BAR="${PROGRESS_BAR:-0}"

BENCHMARKS=(
  "spider_syn:spider_syn_test"
  "spider_realistic:spider_realistic_test"
  "spider_dk:spider_dk_test"
)

export PYTHONPATH="${ROOT_DIR}${PYTHONPATH:+:${PYTHONPATH}}"

usage() {
  cat <<'EOF'
Usage: ./run_eval_spider_variants.sh [spider_syn|spider_realistic|spider_dk ...]

Format and evaluate all Spider-variant inference outputs under:
  infer_results/infer/qwen/<benchmark>/*_sql_result.json

Default evaluation:
  --etype all
  --exec_timeout 60

Environment overrides:
  INFER_OUTPUT_ROOT   Default: ./infer_results/infer/qwen
  EVAL_OUTPUT_ROOT    Default: ./results/eval/qwen
  ETYPE               Default: all
  EXEC_TIMEOUT        Default: 60
  PROGRESS_BAR=1      Add --progress_bar_for_each_datapoint

Examples:
  ./run_eval_spider_variants.sh
  ./run_eval_spider_variants.sh spider_dk
  PROGRESS_BAR=1 ./run_eval_spider_variants.sh
  PROGRESS_BAR=1 ./run_eval_spider_variants.sh spider_dk
  INFER_OUTPUT_ROOT=infer_results/infer/qwen_spider_variants ./run_eval_spider_variants.sh
EOF
}

safe_name() {
  local raw="$1"
  raw="${raw//[^[:alnum:]._-]/_}"
  printf '%s' "${raw}"
}

run_eval_for_benchmark() {
  local benchmark="$1"
  local eval_key="$2"
  local input_dir="${INFER_OUTPUT_ROOT}/${benchmark}"
  local formatted_dir="${input_dir}/formatted_data"
  local eval_dir="${EVAL_OUTPUT_ROOT}/${benchmark}"
  local pred
  local gold
  local run_name
  local log_path
  local -a cmd

  if [[ ! -d "${input_dir}" ]]; then
    echo "[skip] Missing inference output dir: ${input_dir}" >&2
    return 0
  fi

  shopt -s nullglob
  local input_files=("${input_dir}"/*_sql_result.json)
  shopt -u nullglob
  if [[ "${#input_files[@]}" -eq 0 ]]; then
    echo "[skip] No *_sql_result.json files in ${input_dir}" >&2
    return 0
  fi

  mkdir -p "${formatted_dir}" "${eval_dir}"

  echo "[format] ${benchmark}"
  "${PYTHON_BIN}" "${FORMAT_SCRIPT}" \
    --input-dir "${input_dir}" \
    --output-dir "${formatted_dir}"

  shopt -s nullglob
  local pred_files=("${formatted_dir}"/*.pred.sql)
  shopt -u nullglob
  if [[ "${#pred_files[@]}" -eq 0 ]]; then
    echo "[skip] No formatted predictions in ${formatted_dir}" >&2
    return 0
  fi

  for pred in "${pred_files[@]}"; do
    gold="${pred%.pred.sql}.gold.sql"
    if [[ ! -f "${gold}" ]]; then
      echo "[skip] Missing gold file for ${pred}: ${gold}" >&2
      continue
    fi

    run_name="$(safe_name "$(basename "${pred%.pred.sql}")")"
    log_path="${eval_dir}/${run_name}.etype-${ETYPE}.timeout-${EXEC_TIMEOUT}.log"

    cmd=(
      "${PYTHON_BIN}" "${EVAL_SCRIPT}"
      --benchmark "${eval_key}"
      --gold "${gold}"
      --pred "${pred}"
      --etype "${ETYPE}"
      --exec_timeout "${EXEC_TIMEOUT}"
    )
    if [[ "${PROGRESS_BAR}" == "1" ]]; then
      cmd+=(--progress_bar_for_each_datapoint)
    fi

    echo "[eval] ${benchmark} :: ${run_name}"
    echo "       pred: ${pred}"
    echo "       gold: ${gold}"
    echo "       log : ${log_path}"
    echo "       cmd : ${cmd[*]}"
    {
      echo "${cmd[*]}"
      "${cmd[@]}"
    } 2>&1 | tee "${log_path}"
    echo "[done] ${log_path}"
  done
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ "$#" -gt 0 ]]; then
  FILTERED_BENCHMARKS=()
  for requested in "$@"; do
    matched=0
    for item in "${BENCHMARKS[@]}"; do
      if [[ "${item%%:*}" == "${requested}" ]]; then
        FILTERED_BENCHMARKS+=("${item}")
        matched=1
        break
      fi
    done
    if [[ "${matched}" -eq 0 ]]; then
      echo "[error] Unknown benchmark: ${requested}" >&2
      usage >&2
      exit 2
    fi
  done
  BENCHMARKS=("${FILTERED_BENCHMARKS[@]}")
fi

for item in "${BENCHMARKS[@]}"; do
  run_eval_for_benchmark "${item%%:*}" "${item##*:}"
done
