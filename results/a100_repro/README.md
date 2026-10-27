# A100 reproduction of paper checkpoints (Qwen3-4B -> Qwen3-0.6B, Spider + variants)

`final_predictions.zip` holds the final predictions (pred/gold SQL, full result json, eval logs) for
3 methods x 4 benchmarks x 5 seeds (10, 42, 50, 100, 1234). `MANIFEST.tsv` lists row counts and a SHA-256
prefix of every `pred.sql`.

| Method | Checkpoint | Source of predictions | vs. sheet "Multi-seeds run" |
|---|---|---|---|
| CSD | `csd_train_0.6b_4b_kd0.6_...` step 654 | re-inferred on A100, batch 100 | 40/40 cells identical |
| DistillLLM | `distillm_train_0.6b_4b_spider_adaptive-srkl_...` step 872 | re-inferred on A100, batch 100 | 40/40 cells identical |
| SynID-SQL (row3) | `synid_ce_keywords_weight_lora_218` g01 step 4375 | HF `Dream-AI-HUST/synid_ckpt` (original inference) | 40/40 cells match the sheet (see notes) |

Notes

- SynID-SQL predictions are the original ones from HF, not re-inferred. Re-inference of the same checkpoint
  on the A100 (batch 100, T=0.5 sampling) gives scores within about +-2 points of the sheet, not identical;
  only ~55% of predictions coincide between any two sampling runs, so exact reproduction needs the original
  environment.
- HF eval data gaps for SynID-SQL: Spider seed 10 has `null` scores in `collect/seed10/eval_grid_results.json`
  (the eval log is complete: EX 71.0, EM 58.3), and the eval log for Spider-DK seed 50 is truncated at 69%
  (the collect json has EX 55.3, EM 43.7). Predictions are complete for all 20 SynID sets.
- Hyper-parameters of the SynID-SQL checkpoint match the main setting in the paper appendix (CSD, KD ratio 0.7,
  anchors 0.3/0.3, pooling tau 5.0, contrastive tau 0.05, syntax weight 2.0, student layer 27 / teacher layer 35).
- `seed_vs_sheet.json`, `seed_summary.json`, `comparison.json`: score summaries of the A100 runs.
  Scripts used are in `scripts/a100_repro/` (paths inside refer to the A100 server).
