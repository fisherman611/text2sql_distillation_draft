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

## Test-suite execution accuracy (`testsuite/`)

Predictions in `final_predictions.zip` re-scored with the distilled test suites of Zhong et al. (EMNLP 2020,
`taoyds/test-suite-sql-eval`; databases from the Google Drive link in its README). The evaluator in `src/evaluator`
runs gold and prediction on every `*.sqlite` of a db_id. Same flags as the earlier EX numbers (no `--plug_value`,
no `--keep_distinct`); only the databases differ. Script: `scripts/a100_repro/testsuite_eval.py`,
aggregation: `testsuite_summary.py`. 5 seeds, mean ± std.

| Benchmark | Method | 1-DB EX | Test-suite EX | drop |
|---|---|---|---|---|
| Spider-Syn (n=1034) | SynID-SQL | 56.23±0.86 | 49.09±0.76 | 7.14 |
| Spider-Syn (n=1034) | CSD | 53.42±0.42 | 46.09±0.50 | 7.33 |
| Spider-Syn (n=1034) | DistillLLM | 50.39±0.50 | 44.02±0.25 | 6.36 |
| Spider-Realistic (n=508) | SynID-SQL | 60.83±0.57 | 50.47±0.99 | 10.35 |
| Spider-Realistic (n=508) | CSD | 54.72±0.14 | 47.32±0.30 | 7.40 |
| Spider-Realistic (n=508) | DistillLLM | 51.46±0.33 | 45.47±0.92 | 5.98 |
| Spider-DK, 7/10 DBs (n=408) | SynID-SQL | 55.49±0.54 | 44.02±0.22 | 11.47 |
| Spider-DK, 7/10 DBs (n=408) | CSD | 55.15±0.67 | 46.67±0.64 | 8.48 |
| Spider-DK, 7/10 DBs (n=408) | DistillLLM | 51.03±0.63 | 42.40±0.83 | 8.63 |

Coverage and caveats

- No test suite exists for the Spider **test** set (0/40 DBs in the download), so it is not scored here.
- Spider-DK: the 3 DK-specific DBs (`new_concert_singer`, `new_orchestra`, `new_pets_1`) have no test suite; DK numbers
  (both columns) are restricted to the 408 questions on the other 7 DBs.
- Test-suite never turns a failure into a pass (0 fail->ok flips in all runs); it only removes accidental matches.
- `testsuite_per_sample.zip` has the per-sample 1-DB/test-suite flags for every method, benchmark and seed.
