# synid_ce_3

Grid search for SynID CE CSD runs on Spider privileged data.

Fixed:
- `SYNID_KD_LOSS=csd`
- `KD_RATIO=0.7`
- `SYNID_BETA=0.1`

Grid:
- `SYNID_CONTRASTIVE_TAU`: `0.05`, `0.02`
- `SYNID_ALPHA`: `0.1`, `0.2`, `0.3`, `0.4`, `0.5`

Run the full grid:

```bash
RUN_GPUS=0,1 bash scripts/qwen/synid_ce_3/run_grid_csd.sh
```

Run one configuration:

```bash
RUN_GPUS=0,1 SYNID_CONTRASTIVE_TAU=0.05 SYNID_ALPHA=0.3 \
  bash scripts/qwen/synid_ce_3/train_0.6b_4b_csd.sh
```
