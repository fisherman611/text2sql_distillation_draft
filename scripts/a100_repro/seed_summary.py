#!/usr/bin/env python3
"""Per-seed EX/EM (%) for the sheet-matching baseline ckpts + mean/std over finished seeds vs the sheet's 5-seed mean/std.
Only benchmarks with a .complete marker are counted. Writes out/seed_summary.json."""
import json, statistics as st
from pathlib import Path
import sys
sys.path.insert(0, "/mnt/hungpv/baseline_ckpt_infer")
from compare_to_sheet import SHEET, BENCHES, METRICS, parse_eval

OUT = Path("/mnt/hungpv/baseline_ckpt_infer/out")
SEEDS = [10, 42, 50, 100, 1234]
RUNS = {
    "CSD": ("csd_train_0.6b_4b_kd0.6_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.6-lora-16-64-0.1", 654),
    "DistillLLM": ("distillm_train_0.6b_4b_spider_adaptive-srkl_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1", 872),
}
summary = {}
for row, (run, step) in RUNS.items():
    base = OUT / run / f"ckpt{step}"
    per = {b: {m: {} for m in METRICS} for b in BENCHES}
    for b in BENCHES:
        for s in SEEDS:
            d = base / b / f"seed{s}"
            if not (d / ".complete").exists():
                continue
            r = parse_eval(d / "eval.log")
            if r:
                for m in METRICS:
                    per[b][m][s] = r[m]
    summary[row] = per
    print(f"== {row}  ckpt{step}   (cells: seed values; 'mean±std [sheet mean±std]', n = seeds done)")
    print(f"{'bench':17s}{'':3s}" + "".join(f"{s:>8d}" for s in SEEDS) + "   mean±std (n)    [sheet]")
    for b in BENCHES:
        for m in METRICS:
            vals = per[b][m]
            cells = "".join(f"{vals[s]:8.1f}" if s in vals else f"{'-':>8s}" for s in SEEDS)
            v = list(vals.values())
            ms = f"{st.mean(v):.2f}±{(st.stdev(v) if len(v) > 1 else 0):.2f} ({len(v)})" if v else "-"
            sm, ss = SHEET[row][b][m][1], SHEET[row][b][m][2]
            print(f"{b:17s}{m:3s}{cells}   {ms:16s}[{sm:.2f}±{ss:.2f}]")
    print()
(OUT / "seed_summary.json").write_text(json.dumps(summary, indent=2) + "\n")
