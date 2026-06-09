# analysis-v2

`analysis-v2/` is a standalone SQL benchmark analysis pipeline for the local
Spider, SParC, and CoSQL copies under `benchmarks/`.

It extends the original `analysis/` workflow with:

- parser-based SQL structure metrics
- schema graph complexity metrics
- dialog-aware turn and edit metrics
- generated insight reports
- train-prep manifests for single-turn, multi-turn, and edit-style training

## Run

From the repository root:

```powershell
python analysis-v2\run_analysis.py
```

Optional flags:

```powershell
python analysis-v2\run_analysis.py --include-spider-others
python analysis-v2\run_analysis.py --skip-train-prep
python analysis-v2\run_analysis.py --skip-figures
```

## Outputs

Default outputs go to `analysis-v2/results/`:

- `dataset_summary.csv/json`
- `split_summary.csv/json`
- `sample_level.csv`
- `dialog_level.csv`
- `db_level.csv`
- `analysis_report.md`
- `metric_definitions.json`
- `parse_failures.jsonl`
- `run_metadata.json`
- `validation_samples.json`

Figures:

- `figures/radar_chart.svg`
- `figures/hardness_distribution.svg`
- `figures/dialog_turn_complexity.svg`
- `figures/schema_complexity.svg`

Train-prep outputs:

- `train_prep/single_turn_manifest.csv/jsonl`
- `train_prep/multi_turn_manifest.jsonl`
- `train_prep/edit_turn_manifest.jsonl`
- `train_prep/hardness_buckets.json`
- `train_prep/schema_complexity_buckets.json`
- `train_prep/phenomenon_tags.json`
- `train_prep/sampling_recommendations.md`
