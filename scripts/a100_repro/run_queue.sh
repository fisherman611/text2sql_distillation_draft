#!/usr/bin/env bash
# Run all baseline checkpoints through run_ckpt.sh with one worker per GPU.
# Polite on a shared box: a worker only takes a job when ITS GPU is idle (memory < IDLE_MIB for two
# consecutive checks), so it never runs on top of someone else's job. Safe to re-run: finished
# benchmarks are skipped by run_ckpt.sh.
set -uo pipefail

W="${W:?set W}"
PY="${PY:?set PY}"
GPUS="${GPUS:-0 1}"
IDLE_MIB="${IDLE_MIB:-3000}"
cd "${W}"
export W PY OUT_ROOT="${W}/out"

QUEUE="${W}/queue.txt"
LOCK="${W}/queue.lock"

if [[ ! -s "${QUEUE}" ]]; then
  R1=csd_train_0.6b_4b_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1
  R2=csd_train_0.6b_4b_kd0.6_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.6-lora-16-64-0.1
  R3=distillm_train_0.6b_4b_spider_adaptive-srkl_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1
  : > "${QUEUE}"
  for step in 1090 872 654 436 218; do
    for run in "${R1}" "${R3}" "${R2}"; do
      echo "${run} ${step}" >> "${QUEUE}"
    done
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
  local gpu="$1" job run step
  while true; do
    # wait until this GPU is idle (two checks, 20 s apart)
    until gpu_idle "${gpu}" && { sleep 20; gpu_idle "${gpu}"; }; do
      echo "[worker gpu${gpu}] $(date -Is) GPU busy (not mine), waiting"
      sleep 60
    done
    job="$(pop_job)"
    [[ -z "${job}" ]] && { echo "[worker gpu${gpu}] queue empty, exiting"; return 0; }
    read -r run step <<< "${job}"
    echo "[worker gpu${gpu}] $(date -Is) start ${run:0:24}... ${step}"
    CUDA_VISIBLE_DEVICES="${gpu}" bash "${W}/run_ckpt.sh" "${run}" "${step}" > "${W}/logs/${run:0:16}_${step}_gpu${gpu}.log" 2>&1
    echo "[worker gpu${gpu}] $(date -Is) finished ${run:0:24}... ${step} rc=$?"
  done
}

mkdir -p "${W}/logs"
for g in ${GPUS}; do
  worker "${g}" &
done
wait
date -Is > "${W}/QUEUE_DONE"
echo "[queue] all workers finished"
