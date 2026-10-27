| Benchmark | Method | 1-DB EX | Test-suite EX | drop | flips (1-DB ok -> suite fail) per seed | suite fail -> ok |
|---|---|---|---|---|---|---|
| Spider-Syn (n=1034) | SynID-SQL | 56.23±0.86 | 49.09±0.76 | 7.14 | 74 | 0.0 |
| Spider-Syn (n=1034) | CSD | 53.42±0.42 | 46.09±0.50 | 7.33 | 76 | 0.0 |
| Spider-Syn (n=1034) | DistillLLM | 50.39±0.50 | 44.02±0.25 | 6.36 | 66 | 0.0 |
| Spider-Realistic (n=508) | SynID-SQL | 60.83±0.57 | 50.47±0.99 | 10.35 | 53 | 0.0 |
| Spider-Realistic (n=508) | CSD | 54.72±0.14 | 47.32±0.30 | 7.40 | 38 | 0.0 |
| Spider-Realistic (n=508) | DistillLLM | 51.46±0.33 | 45.47±0.92 | 5.98 | 30 | 0.0 |
| Spider-DK (7/10 DBs with test suite) (n=408) | SynID-SQL | 55.49±0.54 | 44.02±0.22 | 11.47 | 47 | 0.0 |
| Spider-DK (7/10 DBs with test suite) (n=408) | CSD | 55.15±0.67 | 46.67±0.64 | 8.48 | 35 | 0.0 |
| Spider-DK (7/10 DBs with test suite) (n=408) | DistillLLM | 51.03±0.63 | 42.40±0.83 | 8.63 | 35 | 0.0 |
