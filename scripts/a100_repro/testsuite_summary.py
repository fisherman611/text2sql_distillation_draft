#!/usr/bin/env python3
"""Aggregate out_testsuite/<method>/<bench>/seed*.json: single-DB EX vs test-suite EX (mean +- std over seeds)."""
import json
import statistics as st
import sys
from pathlib import Path

root = Path(sys.argv[1] if len(sys.argv) > 1 else "out_testsuite")
METHODS = [("synid_sql_row3", "SynID-SQL"), ("csd_kd0.6_ckpt654", "CSD"), ("distillm_ckpt872", "DistillLLM")]
BENCHES = [("spider_syn", "Spider-Syn"), ("spider_realistic", "Spider-Realistic"), ("spider_dk", "Spider-DK (7/10 DBs with test suite)")]
SEEDS = [42, 10, 50, 100, 1234]
ms = lambda v: f"{st.mean(v):.2f}±{st.stdev(v):.2f}"
summary, lines = {}, []
lines.append("| Benchmark | Method | 1-DB EX | Test-suite EX | drop | flips (1-DB ok -> suite fail) per seed | suite fail -> ok |")
lines.append("|---|---|---|---|---|---|---|")
for b, bname in BENCHES:
    for m, mname in METHODS:
        single, suite, down, up = [], [], [], []
        for s in SEEDS:
            r = json.loads((root / m / b / f"seed{s}.json").read_text())["samples"]
            r = [x for x in r if x["has_suite"] and x["suite"] is not None and x["single"] is not None]  # DK: only DBs with a test suite
            n = len(r)
            single.append(100 * sum(x["single"] for x in r) / n)
            suite.append(100 * sum(x["suite"] for x in r) / n)
            down.append(sum(1 for x in r if x["single"] == 1 and x["suite"] == 0))
            up.append(sum(1 for x in r if x["single"] == 0 and x["suite"] == 1))
        summary[f"{m}|{b}"] = {"n": n, "single": single, "suite": suite, "down": down, "up": up}
        lines.append(f"| {bname} (n={n}) | {mname} | {ms(single)} | {ms(suite)} | {st.mean(single) - st.mean(suite):.2f} | {st.mean(down):.0f} | {st.mean(up):.1f} |")
out = "\n".join(lines)
print(out)
(root / "summary.md").write_text(out + "\n")
(root / "summary.json").write_text(json.dumps(summary, indent=1))
