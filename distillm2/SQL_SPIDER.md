# Spider SQL workflow

This folder is adapted from `distillm-2-ref` for Qwen3 and the processed Spider SQL data in:

`../processed_data/benchmarks/spider_data/qwen`

## 1. Prepare SFT data

```bash
python scripts/prepare_spider_sql_data.py \
  --mode sft \
  --output-dir data/spider_sql_sft
```

## 2. Train Spider SFT

```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml \
  --num_processes=4 \
  src/run_sft.py training_configs/qwen3-0.6b-spider-sft.yaml
```

## 3. Infer and write result files

```bash
python infer_spider_sql.py \
  --input ../processed_data/benchmarks/spider_data/qwen/test.jsonl \
  --model Qwen/Qwen3-0.6B \
  --ckpt-path outputs/qwen3-0.6b-spider-sft \
  --batch-size 16 \
  --output infer_results/qwen3_0.6b_sft_test.json
```

This writes:

- `infer_results/qwen3_0.6b_sft_test.json`
- `infer_results/qwen3_0.6b_sft_test.pred.sql`
- `infer_results/qwen3_0.6b_sft_test.gold.sql`

## 4. Prepare DistiLLM-2 pair data

Run teacher inference on train and valid splits. In DistiLLM-2, the teacher
generation is the `chosen` response:

```bash
python infer_spider_sql.py \
  --input ../processed_data/benchmarks/spider_data/qwen/train.jsonl \
  --model Qwen/Qwen3-4B-Instruct-2507 \
  --ckpt-path outputs/qwen3-4b-spider-teacher-lora \
  --batch-size 100 \
  --output infer_results/qwen3_4b_teacher_train.json

python infer_spider_sql.py \
  --input ../processed_data/benchmarks/spider_data/qwen/valid.jsonl \
  --model Qwen/Qwen3-4B-Instruct-2507 \
  --ckpt-path outputs/qwen3-4b-spider-teacher-lora \
  --batch-size 100 \
  --output infer_results/qwen3_4b_teacher_valid.json
```

Run student inference on train and valid splits. The student generation is the
`rejected` response:

```bash
python infer_spider_sql.py \
  --input ../processed_data/benchmarks/spider_data/qwen/train.jsonl \
  --model Qwen/Qwen3-0.6B \
  --ckpt-path outputs/qwen3-0.6b-spider-sft \
  --batch-size 100 \
  --output infer_results/qwen3_0.6b_sft_train.json

python infer_spider_sql.py \
  --input ../processed_data/benchmarks/spider_data/qwen/valid.jsonl \
  --model Qwen/Qwen3-0.6B \
  --ckpt-path outputs/qwen3-0.6b-spider-sft \
  --batch-size 100 \
  --output infer_results/qwen3_0.6b_sft_valid.json
```

Then build DistiLLM-2 comparison data where teacher output is `chosen` and
student output is `rejected`, matching `distillm-2-ref/generate/reformat.py`:

```bash
python scripts/prepare_spider_sql_data.py \
  --mode pairs \
  --output-dir data/spider_sql_distillm2 \
  --teacher-train-results infer_results/qwen3_4b_teacher_train.json \
  --teacher-valid-results infer_results/qwen3_4b_teacher_valid.json \
  --student-train-results infer_results/qwen3_0.6b_sft_train.json \
  --student-valid-results infer_results/qwen3_0.6b_sft_valid.json
```

## 5. Train DistiLLM-2

```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml \
  --num_processes=4 \
  src/run_distillm.py training_configs/qwen3-0.6b-4b-spider-distillm2.yaml
```

The base config keeps the original objective unchanged:

```text
loss = distillm2_loss
```

To add supervised cross entropy on the gold SQL response:

```bash
bash scripts/run_spider_distillm2_ce.sh
```

This branch uses:

```text
loss = (1 - kd_loss_weight) * gold_sft_ce + kd_loss_weight * distillm2_loss
```

`KD_LOSS_WEIGHT` is beta and defaults to `0.5`, so the wrapper runs an even
CE/KD mix. It also rebuilds the pair dataset by default
because older pair datasets do not contain the `gold` field. To choose another
coefficient:

```bash
KD_LOSS_WEIGHT=0.8 bash scripts/run_spider_distillm2_ce.sh
```

If the output directory already contains an old DeepSpeed checkpoint and you
want to start a fresh run instead of auto-resuming:

```bash
RESUME=0 KD_LOSS_WEIGHT=0.5 bash scripts/run_spider_distillm2_ce.sh
```

## Using HF SFT and HF teacher LoRA

The repository includes the existing Spider SFT and teacher LoRA paths in `.env.hf.example`.

```bash
cp .env.hf.example .env.hf
```

Set a token in `.env.hf` if `distillation-sql/baselines` is private:

```bash
HF_TOKEN=hf_...
```

The preset also sets `HF_HOME=.hf_cache` so downloaded model files stay inside the project cache.

Then run the complete pair-generation and DistiLLM-2 training workflow:

```bash
bash scripts/run_spider_distillm2.sh
```

The default `.env.hf.example` points to:

- the uploaded Qwen3-0.6B Spider SFT checkpoint under `distillation-sql/baselines`;
- `Qwen/Qwen3-4B-Instruct-2507`;
- the uploaded Qwen3-4B Spider teacher LoRA under `distillation-sql/baselines`.

The script writes a generated config to `runtime_configs/spider_distillm2.yaml`,
runs teacher and student inference if needed, builds teacher/student pair data,
then launches training.

Validate the HF mapping and generated config without downloading models:

```bash
DRY_RUN=1 bash scripts/run_spider_distillm2.sh
```

Reuse existing inference results and pair data by default. Force regeneration with:

```bash
REBUILD_INFERENCE=1 REBUILD_PAIRS=1 bash scripts/run_spider_distillm2.sh
```

To push the trained adapter/model to Hugging Face:

```bash
PUSH_TO_HUB=true \
HUB_MODEL_ID=your-org/your-distillm2-run \
STUDENT_MODEL=your-org/your-qwen3-spider-sft \
STUDENT_CKPT_PATH= \
TEACHER_BASE=Qwen/Qwen3-4B \
TEACHER_LORA=your-org/your-teacher-lora \
bash scripts/run_spider_distillm2.sh
```

For inference from a Hugging Face full model:

```bash
MODEL=your-org/your-distillm2-run \
CKPT_PATH= \
OUTPUT=infer_results/your_distillm2_test.json \
bash scripts/run_spider_infer.sh
```

For inference from a Hugging Face LoRA adapter:

```bash
MODEL=Qwen/Qwen3-0.6B \
CKPT_PATH=your-org/your-distillm2-lora \
OUTPUT=infer_results/your_distillm2_test.json \
bash scripts/run_spider_infer.sh
```

## Notes

- `setup.py` now requires `transformers>=4.51.0` for Qwen3 model support.
- Qwen3 thinking is disabled in config via `enable_thinking: false`; the processed data already contains an empty thinking stub before the JSON SQL answer.
- Student and teacher should use compatible tokenizers/vocabularies for token-level KL distillation. The default 0.6B student and 4B teacher are both Qwen3.
