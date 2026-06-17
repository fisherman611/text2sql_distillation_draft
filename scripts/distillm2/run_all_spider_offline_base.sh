#! /bin/bash

set -euo pipefail

BASE_PATH="${BASE_PATH:-.}"
SOURCE_TRAIN_JSONL="${SOURCE_TRAIN_JSONL:-benchmarks_2/spider_data/format_data/train.jsonl}"
SOURCE_DEV_JSONL="${SOURCE_DEV_JSONL:-benchmarks_2/spider_data/format_data/dev.jsonl}"
PAIR_DIR="${PAIR_DIR:-data/distillm2/spider_data}"
PROCESSED_DIR="${PROCESSED_DIR:-processed_data/distillm2/spider_data}"

TEACHER_JSONL="${TEACHER_JSONL:-generated/distillm2/spider_data/teacher_train.jsonl}"
STUDENT_JSONL="${STUDENT_JSONL:-generated/distillm2/spider_data/student_base_train.jsonl}"
LIMIT="${LIMIT:-}"

export BASE_PATH
export INPUT_JSONL="${SOURCE_TRAIN_JSONL}"
export OUTPUT_JSONL="${TEACHER_JSONL}"
if [[ -n "${LIMIT}" ]]; then
  export LIMIT
fi
bash "${BASE_PATH}/scripts/distillm2/generate_teacher_outputs.sh"

export OUTPUT_JSONL="${STUDENT_JSONL}"
bash "${BASE_PATH}/scripts/distillm2/generate_student_outputs.sh"

BUILD_OPTS=""
BUILD_OPTS+=" --source-train-jsonl ${SOURCE_TRAIN_JSONL}"
BUILD_OPTS+=" --source-dev-jsonl ${SOURCE_DEV_JSONL}"
BUILD_OPTS+=" --teacher-jsonl ${TEACHER_JSONL}"
BUILD_OPTS+=" --student-jsonl ${STUDENT_JSONL}"
BUILD_OPTS+=" --output-dir ${PAIR_DIR}"
if [[ -n "${LIMIT}" ]]; then
  BUILD_OPTS+=" --limit ${LIMIT}"
fi
python "${BASE_PATH}/scripts/distillm2/build_distillm2_pairs.py" ${BUILD_OPTS}

COMMON_PROCESS_OPTS=""
COMMON_PROCESS_OPTS+=" --model-path ${CKPT:-Qwen/Qwen3-0.6B}"
COMMON_PROCESS_OPTS+=" --model-type qwen"
COMMON_PROCESS_OPTS+=" --data-dir ${PAIR_DIR}"
COMMON_PROCESS_OPTS+=" --processed-data-dir ${PROCESSED_DIR}"
COMMON_PROCESS_OPTS+=" --max-length ${MAX_LENGTH:-1612}"
COMMON_PROCESS_OPTS+=" --max-prompt-length ${MAX_PROMPT_LENGTH:-1479}"
COMMON_PROCESS_OPTS+=" --data-process-workers ${DATA_PROCESS_WORKERS:-1}"

python "${BASE_PATH}/process_distillm2_data.py" ${COMMON_PROCESS_OPTS} --split train
python "${BASE_PATH}/process_distillm2_data.py" ${COMMON_PROCESS_OPTS} --split valid

export DATA_DIR="${PROCESSED_DIR}/qwen"
bash "${BASE_PATH}/scripts/qwen/distillm2/train_0.6b_4b_offline_base.sh" "$@"
