#!/usr/bin/env bash
# Infer (seed 42) + format + eval on the 4 Spider sets for ONE baseline checkpoint. Resumable.
# usage: run_ckpt.sh <run_dir_name> <step> [limit]
# env:   W (workdir)  PY (python)  SEED (42)  BATCH_SIZE (100)  OUT_ROOT ($W/out)
# A benchmark counts as done only if its result file has the full row count AND eval produced EX/EM;
# then <seed_dir>/.complete is written and the benchmark is skipped on re-runs.
# Mirrors the ablation_study pipeline: infer_multiseed.py -> format_spider_infer_results.py -> run_benchmark.py
set -uo pipefail

W="${W:?set W}"
cd "${W}"
RUN="$1"
STEP="$2"
LIMIT="${3:-}"
SEED="${SEED:-42}"
BATCH_SIZE="${BATCH_SIZE:-100}"
PY="${PY:?set PY}"

export PYTHONPATH="${W}"
export TOKENIZERS_PARALLELISM=false

CKPT="${W}/hf_baselines/qwen3/${RUN}/${STEP}"
OUT="${OUT_ROOT:-${W}/out}/${RUN}/ckpt${STEP}"
mkdir -p "${OUT}"
TIMINGS="${OUT}/timings.jsonl"

echo "[run_ckpt] host=$(hostname) gpu=${CUDA_VISIBLE_DEVICES:-all} run=${RUN} step=${STEP} seed=${SEED} batch=${BATCH_SIZE} limit=${LIMIT:-none}"
[[ -f "${CKPT}/adapter_config.json" ]] || { echo "[error] missing ${CKPT}/adapter_config.json" >&2; exit 2; }

# benchmark : evaluator key : max new tokens : expected rows
BENCHES=(
  "spider_data:spider_test:856:2147"
  "spider_syn:spider_syn_test:756:1034"
  "spider_realistic:spider_realistic_test:755:508"
  "spider_dk:spider_dk_test:663:535"
)

secs() { awk -v a="$1" -v b="$2" 'BEGIN { printf "%.1f", b - a }'; }
count_rows() { "${PY}" -c "import json,sys; print(len(json.load(open(sys.argv[1]))))" "$1" 2>/dev/null || echo -1; }

for item in "${BENCHES[@]}"; do
  IFS=: read -r bench key maxlen expected <<< "${item}"
  name="${RUN}__ckpt${STEP}__test__${bench}"
  seed_dir="${OUT}/${bench}/seed${SEED}"
  out_json="${OUT}/${bench}/${name}_sql_result.json"

  if [[ -f "${seed_dir}/.complete" && -z "${LIMIT}" ]]; then
    echo "[skip] ${bench} already complete"
    continue
  fi
  if [[ -d "${seed_dir}" ]]; then
    mv "${seed_dir}" "${seed_dir}.PARTIAL.$(date +%s)"
  fi
  mkdir -p "${OUT}/${bench}"

  echo "[infer] ${bench} (max_new_tokens=${maxlen}, expect ${expected} rows)"
  t0="$(date +%s.%N)"
  INFER_SEEDS="${SEED}" "${PY}" scripts/qwen_updated_2/synid_ce_keywords_weight_lora_218/infer_multiseed.py \
    --benchmark "${bench}" --split test --db full \
    --model Qwen/Qwen3-0.6B --ckpt_path "${CKPT}" --device cuda \
    --batch-size "${BATCH_SIZE}" --max-length "${maxlen}" \
    --output_path "${out_json}" --flush-every 100 ${LIMIT:+--limit "${LIMIT}"}
  rc_infer=$?
  t1="$(date +%s.%N)"

  result="${seed_dir}/${name}_sql_result.json"
  rows="$(count_rows "${result}")"
  want="${LIMIT:-${expected}}"
  rc_eval=-1
  status="ok"
  if [[ "${rc_infer}" -ne 0 || "${rows}" -ne "${want}" ]]; then
    status="INCOMPLETE(rc=${rc_infer},rows=${rows}/${want})"
    echo "[warn] ${bench}: ${status}; skipping format/eval"
  else
    echo "[format+eval] ${bench}"
    "${PY}" scripts/format_spider_infer_results.py --input-dir "${seed_dir}" --output-dir "${seed_dir}/formatted_data"
    pred="$(ls "${seed_dir}"/formatted_data/*.pred.sql 2>/dev/null | head -1)"
    gold="${pred%.pred.sql}.gold.sql"
    rc_eval=1
    if [[ -n "${pred}" && -f "${gold}" ]]; then
      "${PY}" src/evaluator/run_benchmark.py --benchmark "${key}" --gold "${gold}" --pred "${pred}" \
        --etype all --exec_timeout 60 > "${seed_dir}/eval.log" 2>&1
      rc_eval=$?
    fi
    if [[ "${rc_eval}" -eq 0 ]] && grep -q "^execution" "${seed_dir}/eval.log" && grep -q "^exact match" "${seed_dir}/eval.log"; then
      [[ -z "${LIMIT}" ]] && touch "${seed_dir}/.complete"
    else
      status="EVAL_FAILED(rc=${rc_eval})"
    fi
  fi
  t2="$(date +%s.%N)"
  printf '{"bench": "%s", "infer_s": %s, "eval_s": %s, "rows": %s, "status": "%s"}\n' \
    "${bench}" "$(secs "${t0}" "${t1}")" "$(secs "${t1}" "${t2}")" "${rows}" "${status}" >> "${TIMINGS}"
done
echo "[run_ckpt] done run=${RUN} step=${STEP}"
