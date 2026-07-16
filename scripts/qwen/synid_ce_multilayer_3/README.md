# synid_ce_multilayer_3

Third SynID-CE multilayer CSD sweep on Spider privileged data. This folder is
structured like `synid_ce_multilayer_2`: train entrypoints are named
`train_g*.sh`, and the run wrapper filters only that prefix so utility scripts
are not scheduled.

Plan: keep the three layer families from `synid_ce_multilayer_2`, but move the
regularization search toward softer settings. The previous grid already tested
`alpha=0.15/0.20/0.30` with fixed `beta=0.1` and `tau=0.05`; this grid tests
lower `beta`, a gentler tau, and a sharper tau around the more conservative
`alpha=0.10/0.20` range.

Fixed:
- `SYNID_KD_LOSS=csd`
- `KD_RATIO=0.7`

Grid:

| Script | ID | Student layers | Teacher layers | alpha | beta | contrastive tau | Purpose |
|---|---|---|---|---:|---:|---:|---|
| `train_g01.sh` | G01 | `16,22` | `21,28` | 0.10 | 0.05 | 0.07 | late-layer soft |
| `train_g02.sh` | G02 | `16,22` | `21,28` | 0.20 | 0.05 | 0.05 | late-layer low beta |
| `train_g03.sh` | G03 | `16,22` | `21,28` | 0.20 | 0.10 | 0.03 | late-layer sharper |
| `train_g04.sh` | G04 | `22,-1` | `28,-1` | 0.10 | 0.05 | 0.07 | final-biased soft |
| `train_g05.sh` | G05 | `22,-1` | `28,-1` | 0.20 | 0.05 | 0.05 | final-biased low beta |
| `train_g06.sh` | G06 | `22,-1` | `28,-1` | 0.20 | 0.10 | 0.03 | final-biased sharper |
| `train_g07.sh` | G07 | `16,22,-1` | `21,28,-1` | 0.10 | 0.05 | 0.07 | late + final soft |
| `train_g08.sh` | G08 | `16,22,-1` | `21,28,-1` | 0.20 | 0.05 | 0.05 | late + final low beta |
| `train_g09.sh` | G09 | `16,22,-1` | `21,28,-1` | 0.20 | 0.10 | 0.03 | late + final sharper |

Run all 9 jobs sequentially on two GPUs, infer 5 seeds on all 4 Spider variants
after each checkpoint, then upload `results/` to Hugging Face through
`upload_to_hf.py`:

```bash
bash scripts/qwen/synid_ce_multilayer_3/run_full_grid_multiseed.sh
```

Run the full pipeline in one command: train, infer, upload checkpoints/infer,
format, evaluate, then upload eval logs:

```bash
bash scripts/qwen/synid_ce_multilayer_3/run_full_pipeline.sh
```

By default inference selects the checkpoint with the best dev `exact_match`
from each training `log.txt`. The selection record is written to:

```text
run_logs/<timestamp>/checkpoint_selection.jsonl
```

Use `INFER_CHECKPOINT_METRIC=latest` to force the old latest-checkpoint behavior.

The wrapper expands to:

```bash
INFER_SEEDS=10,42,50,100,1234 \
FORMAT_AFTER_INFER=true \
SKIP_EXISTING=true \
INFER_CHECKPOINT_METRIC=exact_match \
bash running.sh \
  --mode sequential \
  --gpus 0,1 \
  --gpus-per-job 2 \
  --filter scripts/qwen/synid_ce_multilayer_3/train_g \
  --infer-after-train \
  --infer-script scripts/qwen/synid_ce_multilayer_3/infer_multiseed.py \
  --infer-benchmarks spider_data,spider_syn,spider_realistic,spider_dk \
  --infer-split test \
  --infer-db full \
  --infer-batch-size 100 \
  --infer-output-root results/infer/synid_ce_multilayer_3 \
  --infer-extra-args "--flush-every 100"
```

Run one config through `running.sh`:

```bash
INFER_SEEDS=10,42,50,100,1234 \
FORMAT_AFTER_INFER=true \
SKIP_EXISTING=true \
bash running.sh \
  --mode sequential \
  --gpus 0,1 \
  --gpus-per-job 2 \
  --filter scripts/qwen/synid_ce_multilayer_3/train_g02.sh \
  --infer-after-train \
  --infer-script scripts/qwen/synid_ce_multilayer_3/infer_multiseed.py \
  --infer-benchmarks spider_data,spider_syn,spider_realistic,spider_dk \
  --infer-split test \
  --infer-db full \
  --infer-batch-size 100 \
  --infer-output-root results/infer/synid_ce_multilayer_3 \
  --infer-extra-args "--flush-every 100"
```

Multi-seed inference output layout:

```text
results/infer/synid_ce_multilayer_3/qwen/<benchmark>/seed<seed>/<run>__ckpt<step>__test__full_sql_result.json
```

Because the outputs live under `results/`, the final `running.sh` upload includes
both checkpoints and inference outputs.

Format and evaluate all generated multi-seed outputs:

```bash
bash scripts/qwen/synid_ce_multilayer_3/format_eval_multiseed.sh
```

Evaluation defaults to `--etype all`, so the Spider evaluator reports both
exact-match and execution metrics.

Evaluate one benchmark only:

```bash
bash scripts/qwen/synid_ce_multilayer_3/format_eval_multiseed.sh spider_dk
```
