#!/usr/bin/env bash
# Remaining seeds (10 50 100 1234) for the sheet-matching baseline ckpts. Same polite one-worker-per-idle-GPU
# scheme as run_queue.sh; each job is run_ckpt.sh with SEED set. Safe to re-run (finished benchmarks skipped).
set -uo pipefail
W="${W:?set W}"; PY="${PY:?set PY}"
GPUS="${GPUS:-0 1}"; IDLE_MIB="${IDLE_MIB:-3000}"
cd "${W}"
export W PY OUT_ROOT="${W}/out"
QUEUE="${W}/synid_queue.txt"; LOCK="${W}/synid_queue.lock"
if [[ ! -s "${QUEUE}" ]]; then
  R_CSD=csd_train_0.6b_4b_kd0.6_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.6-lora-16-64-0.1
  R_DST=distillm_train_0.6b_4b_spider_adaptive-srkl_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1
  : > "${QUEUE}"
  for seed in 10 50 100 1234; do
    echo "${R_CSD} 654 ${seed}" >> "${QUEUE}"
    echo "${R_DST} 872 ${seed}" >> "${QUEUE}"
  done
fi
gpu_idle() {
  local used
  used="$(nvidia-smi -i "$1" --query-gpu=memory.used --format=csv,noheader,nounits | tr -d ' ')"
  [[ -n "${used}" && "${used}" -lt "${IDLE_MIB}" ]]
}
pop_job() {
  flock "${LOCK}" bash -c 'line="$(head -n 1 "$1")"; [[ -n "$line" ]] && sed -i 1d "$1"; printf "%s" "$line"' _ "${QUEUE}"
}
worker() {
  local gpu="$1" job run step seed
  while true; do
    until gpu_idle "${gpu}" && { sleep 20; gpu_idle "${gpu}"; }; do
      echo "[worker gpu${gpu}] $(date -Is) GPU busy (not mine), waiting"; sleep 60
    done
    job="$(pop_job)"
    [[ -z "${job}" ]] && { echo "[worker gpu${gpu}] queue empty, exiting"; return 0; }
    read -r run step seed <<< "${job}"
    echo "[worker gpu${gpu}] $(date -Is) start ${run:0:12} step=${step} seed=${seed}"
    SEED="${seed}" CUDA_VISIBLE_DEVICES="${gpu}" bash "${W}/run_ckpt.sh" "${run}" "${step}" > "${W}/logs/${run:0:12}_${step}_seed${seed}_gpu${gpu}.log" 2>&1
    echo "[worker gpu${gpu}] $(date -Is) finished ${run:0:12} step=${step} seed=${seed} rc=$?"
  done
}
mkdir -p "${W}/logs"
for g in ${GPUS}; do worker "${g}" & done
wait
date -Is > "${W}/SYNID_QUEUE_DONE"
echo "[synid-queue] all workers finished"
