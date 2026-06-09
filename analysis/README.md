# Benchmark Analysis

This folder contains a standalone analysis workflow for the three local
text-to-SQL benchmarks under `benchmarks/`:

- Spider: `benchmarks/spider_data`
- SParC: `benchmarks/sparc`
- CoSQL: `benchmarks/cosql_dataset`

Run from the repository root:

```powershell
python analysis/analyze_benchmarks.py
```

Default outputs are written to `analysis/results/`:

- `summary.csv` / `summary.json`: one row per dataset.
- `split_summary.csv` / `split_summary.json`: train/dev breakdown.
- `normalized_radar.csv` / `normalized_radar.json`: 0-1 normalized metrics for radar plotting.
- `samples.csv`: flattened per-SQL-turn records with clause flags and SQL length.
- `report.md`: compact Markdown report.
- `radar_chart.svg`: dependency-free radar chart.
- `radar_chart.png`: created only when `matplotlib` is installed.

By default, Spider train counts use `train_spider.json` only. To include
`train_others.json` in the Spider train count:

```powershell
python analysis/analyze_benchmarks.py --include-spider-others
```

For SParC and CoSQL, `samples` means SQL turns. The report also includes dialog
counts so turn-level and conversation-level sizes are both visible.
