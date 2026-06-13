# Benchmark Analysis

## Dataset Summary

| Dataset | Train samples | Dev samples | Train dialogs | Total SQL | Schema DB | Table/DB mean | SQL token mean | ORDER % | GROUP % | HAVING % | NESTED % |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| spider | 7000 | 1034 |  | 8034 | 166 | 5.28 | 21.87 | 23.21 | 25.54 | 6.3 | 14.66 |
| sparc | 9025 | 1203 | 3030 | 10228 | 166 | 5.28 | 18.16 | 15.49 | 20.09 | 4.49 | 9.05 |
| cosql | 7343 | 1007 | 2159 | 8350 | 178 | 5.39 | 18.6 | 18.66 | 16.06 | 4.79 | 10.51 |

## Split Summary

| Dataset | Split | Samples | Dialogs | DB | SQL token mean | SQL token p90 | SQL token max |
|---|---|---:|---:|---:|---:|---:|---:|
| spider | train | 7000 |  | 140 | 21.91 | 42 | 128 |
| spider | dev | 1034 |  | 20 | 21.59 | 40 | 88 |
| sparc | train | 9025 | 3030 | 140 | 18.06 | 38 | 128 |
| sparc | dev | 1203 | 422 | 20 | 18.87 | 38 | 86 |
| cosql | train | 7343 | 2159 | 140 | 18.63 | 38 | 128 |
| cosql | dev | 1007 | 293 | 20 | 18.35 | 38 | 122 |

## Chart

Wrote radar SVG: analysis\results\radar_chart.svg

Skipped radar chart: matplotlib is not available (No module named 'matplotlib').
