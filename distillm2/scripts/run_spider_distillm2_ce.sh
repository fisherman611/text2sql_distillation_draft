#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

# Mix gold-label SFT cross entropy with the DistiLLM-2 loss:
#   total_loss = (1 - KD_LOSS_WEIGHT) * gold_sft_ce + KD_LOSS_WEIGHT * distillm2_loss
KD_LOSS_WEIGHT="${KD_LOSS_WEIGHT:-0.5}"
BASE_CONFIG="${BASE_CONFIG:-training_configs/qwen3-0.6b-4b-spider-distillm2.yaml}"
CONFIG="${CONFIG:-runtime_configs/spider_distillm2_ce.yaml}"
OUTPUT_DIR="${OUTPUT_DIR:-outputs/qwen3-0.6b-4b-spider-distillm2-beta${KD_LOSS_WEIGHT}}"
REBUILD_PAIRS="${REBUILD_PAIRS:-1}"

BASE_CONFIG="${BASE_CONFIG}" \
CONFIG="${CONFIG}" \
OUTPUT_DIR="${OUTPUT_DIR}" \
REBUILD_PAIRS="${REBUILD_PAIRS}" \
KD_LOSS_WEIGHT="${KD_LOSS_WEIGHT}" \
bash scripts/run_spider_distillm2.sh
