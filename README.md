# text2sql_distillation

## DistiLLM-2 offline fair-base

Default fair-base setup:

```text
trainable student init = Qwen/Qwen3-0.6B
rejected y_s           = Qwen/Qwen3-0.6B generated output
chosen y_t             = Qwen/Qwen3-4B-Instruct-2507 + teacher LoRA generated output
```

Run the full pipeline:

```bash
bash scripts/distillm2/run_all_spider_offline_base.sh
```

Or run stages manually:

```bash
bash scripts/distillm2/generate_teacher_outputs.sh
bash scripts/distillm2/generate_student_outputs.sh
python scripts/distillm2/build_distillm2_pairs.py \
  --source-train-jsonl benchmarks_2/spider_data/format_data/train.jsonl \
  --source-dev-jsonl benchmarks_2/spider_data/format_data/dev.jsonl \
  --teacher-jsonl generated/distillm2/spider_data/teacher_train.jsonl \
  --student-jsonl generated/distillm2/spider_data/student_base_train.jsonl \
  --output-dir data/distillm2/spider_data
python process_distillm2_data.py \
  --model-path Qwen/Qwen3-0.6B \
  --model-type qwen \
  --data-dir data/distillm2/spider_data \
  --processed-data-dir processed_data/distillm2/spider_data \
  --max-length 1612 \
  --max-prompt-length 1479 \
  --split train
python process_distillm2_data.py \
  --model-path Qwen/Qwen3-0.6B \
  --model-type qwen \
  --data-dir data/distillm2/spider_data \
  --processed-data-dir processed_data/distillm2/spider_data \
  --max-length 1612 \
  --max-prompt-length 1479 \
  --split valid
bash scripts/qwen/distillm2/train_0.6b_4b_offline_base.sh
```

Useful smoke-test override:

```bash
LIMIT=20 RUN_GPUS=0 bash scripts/distillm2/run_all_spider_offline_base.sh \
  --slice-data --total-iters 2 --save-interval 2 --eval-interval 2
```
