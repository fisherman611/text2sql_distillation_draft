#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../../.." && pwd)"
cd "${REPO_ROOT}"

PYTHON_BIN="${PYTHON:-python}"
RUN_ID="${RUN_ID:-distillm2_ref_llama}"
BASE_MODEL="${BASE_MODEL:-meta-llama/Llama-3.2-1B-Instruct}"
CKPT_PATH="${CKPT_PATH:-distillm2/outputs/llama3.2-1b-8b-spider-distillm2}"
CKPT_TAG="${CKPT_TAG:-distillm2ref}"
INFER_SCRIPT="${INFER_SCRIPT:-scripts/llama/baselines/infer_multiseed.py}"
FORMAT_EVAL_SCRIPT="${FORMAT_EVAL_SCRIPT:-scripts/llama/baselines/format_eval_multiseed.sh}"
INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT:-results/infer/llama_distillm2_ref/llama}"
EVAL_OUTPUT_ROOT="${EVAL_OUTPUT_ROOT:-results/eval/llama_distillm2_ref/llama}"
INFER_SEEDS="${INFER_SEEDS:-10,42,50,100,1234}"
INFER_SPLIT="${INFER_SPLIT:-test}"
INFER_DB="${INFER_DB:-full}"
INFER_BATCH_SIZE="${INFER_BATCH_SIZE:-32}"
INFER_DEVICE="${INFER_DEVICE:-cuda}"
INFER_EXTRA_ARGS="${INFER_EXTRA_ARGS:---flush-every 100}"
FORMAT_AFTER_INFER="${FORMAT_AFTER_INFER:-true}"
SKIP_EXISTING="${SKIP_EXISTING:-true}"
PHASE="${PHASE:-all}"
ETYPE="${ETYPE:-all}"
EXEC_TIMEOUT="${EXEC_TIMEOUT:-60}"
PROGRESS_BAR="${PROGRESS_BAR:-1}"
SKIP_EXISTING_EVAL="${SKIP_EXISTING_EVAL:-false}"
EVAL_SCRIPT="${EVAL_SCRIPT:-src/evaluator/run_benchmark_safe.py}"

BENCHMARK_SPECS=(
  "spider_data:856"
  "spider_syn:756"
  "spider_realistic:755"
  "spider_dk:663"
)

export PYTHONPATH="${REPO_ROOT}${PYTHONPATH:+:${PYTHONPATH}}"
export INFER_SEEDS FORMAT_AFTER_INFER SKIP_EXISTING

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
fi

usage() {
  cat <<'EOF'
Usage: bash scripts/llama/distillm2/run_infer_eval_multiseed.sh [benchmark ...]

Run multi-seed inference/eval for a Llama DistiLLM-2 reference checkpoint.

Default benchmark set:
  spider_data spider_syn spider_realistic spider_dk

Environment overrides:
  PHASE=infer|eval|all       Default: all.
  RUN_GPUS=0,1               CUDA_VISIBLE_DEVICES for inference.
  CKPT_PATH=<path>           Default: distillm2/outputs/llama3.2-1b-8b-spider-distillm2.
  BASE_MODEL=<model>         Default: meta-llama/Llama-3.2-1B-Instruct.
  INFER_SEEDS=10,42,...      Default: 10,42,50,100,1234.
  ETYPE=all|exec|match       Default: all.
EOF
}

selected_specs() {
  if [[ "$#" -eq 0 ]]; then
    printf '%s\n' "${BENCHMARK_SPECS[@]}"
    return
  fi

  local requested spec benchmark matched
  for requested in "$@"; do
    matched=0
    for spec in "${BENCHMARK_SPECS[@]}"; do
      benchmark="${spec%%:*}"
      if [[ "${benchmark}" == "${requested}" ]]; then
        printf '%s\n' "${spec}"
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
}

run_infer_one() {
  local benchmark="$1"
  local max_length="$2"
  local output_dir="${INFER_OUTPUT_ROOT}/${benchmark}"
  local output_path="${output_dir}/${RUN_ID}__ckpt${CKPT_TAG}__${INFER_SPLIT}__${INFER_DB}_sql_result.json"
  local -a cmd
  local -a extra_args

  mkdir -p "${output_dir}"

  cmd=(
    "${PYTHON_BIN}" "${INFER_SCRIPT}"
    --benchmark "${benchmark}"
    --split "${INFER_SPLIT}"
    --db "${INFER_DB}"
    --model "${BASE_MODEL}"
    --ckpt_path "${CKPT_PATH}"
    --device "${INFER_DEVICE}"
    --batch-size "${INFER_BATCH_SIZE}"
    --max-length "${max_length}"
    --output_path "${output_path}"
  )

  if [[ -n "${INFER_EXTRA_ARGS}" ]]; then
    extra_args=( ${INFER_EXTRA_ARGS} )
    cmd+=("${extra_args[@]}")
  fi

  echo "[infer] ${benchmark}"
  echo "        seeds : ${INFER_SEEDS}"
  echo "        model : ${BASE_MODEL}"
  echo "        ckpt  : ${CKPT_PATH}"
  echo "        out   : ${output_path}"
  "${cmd[@]}"
}

run_eval() {
  local -a benchmarks=("$@")
  INFER_OUTPUT_ROOT="${INFER_OUTPUT_ROOT}" \
  EVAL_OUTPUT_ROOT="${EVAL_OUTPUT_ROOT}" \
  ETYPE="${ETYPE}" \
  EXEC_TIMEOUT="${EXEC_TIMEOUT}" \
  PROGRESS_BAR="${PROGRESS_BAR}" \
  SKIP_EXISTING_EVAL="${SKIP_EXISTING_EVAL}" \
  EVAL_SCRIPT="${EVAL_SCRIPT}" \
    bash "${FORMAT_EVAL_SCRIPT}" "${benchmarks[@]}"
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ "${PHASE}" != "infer" && "${PHASE}" != "eval" && "${PHASE}" != "all" ]]; then
  echo "[error] PHASE must be one of: infer, eval, all" >&2
  exit 2
fi

mapfile -t SPECS < <(selected_specs "$@")
BENCHMARKS=()
for spec in "${SPECS[@]}"; do
  benchmark="${spec%%:*}"
  max_length="${spec##*:}"
  BENCHMARKS+=("${benchmark}")
  if [[ "${PHASE}" == "infer" || "${PHASE}" == "all" ]]; then
    run_infer_one "${benchmark}" "${max_length}"
  fi
done

if [[ "${PHASE}" == "eval" || "${PHASE}" == "all" ]]; then
  run_eval "${BENCHMARKS[@]}"
fi
