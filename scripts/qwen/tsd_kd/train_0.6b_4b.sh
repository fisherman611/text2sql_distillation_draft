#! /bin/bash

set -euo pipefail

if [[ -n "${RUN_GPUS:-}" ]]; then
  IFS=', ' read -r -a GPUS <<< "${RUN_GPUS}"
else
  GPUS=(0 1)
fi
export CUDA_VISIBLE_DEVICES=$(IFS=,; echo "${GPUS[*]}")

MASTER_PORT=${RUN_MASTER_PORT:-66$(($RANDOM%90+10))}
GPUS_PER_NODE=${#GPUS[@]}

BASE_PATH=.
SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}" .sh)"
SCRIPT_GROUP="$(basename "$(dirname "${BASH_SOURCE[0]}")")"

DATA_DIR="${DATA_DIR:-processed_data/benchmarks/spider_data/qwen}"
TRAIN_FILE="${TRAIN_FILE:-${DATA_DIR}/train.jsonl}"
EVAL_FILE="${EVAL_FILE:-${DATA_DIR}/valid.jsonl}"

STUDENT_CKPT_NAME="qwen3-0.6B"
STUDENT_CKPT="${STUDENT_CKPT:-Qwen/Qwen3-0.6B}"
TEACHER_CKPT_NAME="qwen3-4B"
TEACHER_CKPT="${TEACHER_CKPT:-Qwen/Qwen3-4B-Instruct-2507}"
TEACHER_PEFT_PATH="${TEACHER_PEFT_PATH:-hf://distillation-sql/baselines/qwen3/sft_sft_qwen3_4b_spider_lora/e5-bs4-lr0.0001-G4-N2-NN1-lora-32-64-0.1/1090}"

BATCH_SIZE="${BATCH_SIZE:-2}"
EVAL_BATCH_SIZE="${EVAL_BATCH_SIZE:-16}"
LR="${LR:-0.0001}"
GRAD_ACC="${GRAD_ACC:-8}"
EPOCHS="${EPOCHS:-5}"

MAX_LENGTH="${MAX_LENGTH:-1612}"
MAX_PROMPT_LENGTH="${MAX_PROMPT_LENGTH:-1479}"
MAX_NEW_TOKENS="${MAX_NEW_TOKENS:-133}"

BETA="${BETA:-0.9}"
LAMBDA="${LAMBDA:-1.0}"
THRESHOLD="${THRESHOLD:-0.1}"
INDIRECT_KD_ALPHA="${INDIRECT_KD_ALPHA:-0.1}"

RUN_TAG="e${EPOCHS}-bs${BATCH_SIZE}-lr${LR}-G${GRAD_ACC}-N${GPUS_PER_NODE}-beta${BETA}-lam${LAMBDA}-thr${THRESHOLD}-ia${INDIRECT_KD_ALPHA}-len${MAX_LENGTH}-${MAX_PROMPT_LENGTH}"
SAVE_TAG="${SAVE_TAG:-${SCRIPT_GROUP}_${SCRIPT_NAME}_${STUDENT_CKPT_NAME}_${TEACHER_CKPT_NAME}_spider_${RUN_TAG}}"
SAVE_PATH="${BASE_PATH}/results/qwen3/${SAVE_TAG}"
SEED="${SEED:-42}"

OPTS=""
OPTS+=" --student-model-path ${STUDENT_CKPT}"
OPTS+=" --teacher-model-path ${TEACHER_CKPT}"
OPTS+=" --teacher-peft-path ${TEACHER_PEFT_PATH}"
OPTS+=" --model-family qwen"
OPTS+=" --output-dir ${SAVE_PATH}"
OPTS+=" --train-file ${TRAIN_FILE}"
OPTS+=" --eval-file ${EVAL_FILE}"
OPTS+=" --beta ${BETA}"
OPTS+=" --lambda ${LAMBDA}"
OPTS+=" --threshold ${THRESHOLD}"
OPTS+=" --indirect-kd-alpha ${INDIRECT_KD_ALPHA}"
OPTS+=" --max-length ${MAX_LENGTH}"
OPTS+=" --max-prompt-length ${MAX_PROMPT_LENGTH}"
OPTS+=" --max-new-tokens ${MAX_NEW_TOKENS}"
OPTS+=" --num-train-epochs ${EPOCHS}"
OPTS+=" --per-device-train-batch-size ${BATCH_SIZE}"
OPTS+=" --per-device-eval-batch-size ${EVAL_BATCH_SIZE}"
OPTS+=" --gradient-accumulation-steps ${GRAD_ACC}"
OPTS+=" --learning-rate ${LR}"
OPTS+=" --warmup-ratio 0.1"
OPTS+=" --weight-decay 1e-2"
OPTS+=" --logging-steps 10"
OPTS+=" --gradient-checkpointing"
OPTS+=" --bf16"
OPTS+=" --report-to none"
OPTS+=" --seed ${SEED}"

if [[ -n "${MAX_SAMPLES:-}" ]]; then
  OPTS+=" --max-samples ${MAX_SAMPLES}"
fi

export NCCL_DEBUG=""
export WANDB_DISABLED=True
export TF_CPP_MIN_LOG_LEVEL=3
export PYTHONPATH=${BASE_PATH}

CMD="accelerate launch --config_file ${BASE_PATH}/finetuning/tsd_kd/accelerate_ddp_config.yaml --mixed_precision bf16 --num_processes ${GPUS_PER_NODE} --main_process_port ${MASTER_PORT} ${BASE_PATH}/finetuning/tsd_kd/train.py ${OPTS} $@"

echo "${CMD}"
echo "PYTHONPATH=${PYTHONPATH}"
mkdir -p "${SAVE_PATH}"
CODE_BASE=HF ${CMD}
