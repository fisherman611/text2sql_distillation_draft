### Spider test (2147 questions, 40 generated test-suite DBs)
| Method | 1-DB EX | Test-suite EX (generated) | drop |
|---|---|---|---|
| SynID-SQL | 70.96±0.22 | 64.76±0.44 | 6.20 |
| CSD | 67.20±0.27 | 62.10±0.33 | 5.10 |
| DistillLLM | 66.25±0.27 | 61.20±0.28 | 5.05 |

### Spider-DK (535 questions): official suite on 7 DBs (408 q) + generated suite on 3 DK-specific DBs (127 q)
| Method | part | n | 1-DB EX | Test-suite EX | drop |
|---|---|---|---|---|---|
| SynID-SQL | all 535 | 535 | 55.40±0.28 | 44.71±0.24 | 10.69 |
| SynID-SQL | 7 DBs, official suite | 408 | 55.49±0.54 | 44.02±0.22 | 11.47 |
| SynID-SQL | 3 DBs, generated suite | 127 | 55.12±0.56 | 46.93±0.90 | 8.19 |
| CSD | all 535 | 535 | 55.29±0.67 | 46.47±0.63 | 8.82 |
| CSD | 7 DBs, official suite | 408 | 55.15±0.67 | 46.67±0.64 | 8.48 |
| CSD | 3 DBs, generated suite | 127 | 55.75±1.51 | 45.83±1.88 | 9.92 |
| DistillLLM | all 535 | 535 | 52.64±0.52 | 43.70±0.86 | 8.93 |
| DistillLLM | 7 DBs, official suite | 408 | 51.03±0.63 | 42.40±0.83 | 8.63 |
| DistillLLM | 3 DBs, generated suite | 127 | 57.80±0.90 | 47.87±1.29 | 9.92 |
