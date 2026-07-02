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

NUM_PROCESSES="${NUM_PROCESSES:-2}"
BASE_CONFIG="${BASE_CONFIG:-training_configs/qwen3-0.6b-spider-sft.yaml}"
CONFIG="${CONFIG:-runtime_configs/spider_sft.yaml}"
DATA_DIR="${DATA_DIR:-data/spider_sql_sft}"
MODEL_NAME_OR_PATH="${MODEL_NAME_OR_PATH:-Qwen/Qwen3-0.6B}"
OUTPUT_DIR="${OUTPUT_DIR:-outputs/qwen3-0.6b-spider-sft}"
PUSH_TO_HUB="${PUSH_TO_HUB:-false}"
HUB_MODEL_ID="${HUB_MODEL_ID:-null}"

if [[ -n "${RUN_GPUS:-}" ]]; then
  export CUDA_VISIBLE_DEVICES="${RUN_GPUS}"
  IFS=',' read -r -a GPU_LIST <<< "${RUN_GPUS}"
  NUM_PROCESSES="${#GPU_LIST[@]}"
fi

python scripts/prepare_spider_sql_data.py \
  --mode sft \
  --output-dir "${DATA_DIR}"

python scripts/make_hf_config.py \
  --template "${BASE_CONFIG}" \
  --output "${CONFIG}" \
  --set "model_name_or_path=${MODEL_NAME_OR_PATH}" \
  --set "output_dir=${OUTPUT_DIR}" \
  --set "push_to_hub=${PUSH_TO_HUB}" \
  --set "hub_model_id=${HUB_MODEL_ID}" \
  --set "dataset_mixer={'${DATA_DIR}': 1.0}"

accelerate launch \
  --config_file accelerate_configs/deepspeed_zero3.yaml \
  --num_processes="${NUM_PROCESSES}" \
  src/run_sft.py "${CONFIG}"
