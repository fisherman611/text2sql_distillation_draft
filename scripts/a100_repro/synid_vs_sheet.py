#!/usr/bin/env python3
"""A100 re-inference (bs100) of the 4 SynID ckpts vs the sheet 'Ours Method' rows and the HF-published eval. EX/EM %, finished benchmarks only."""
import json, sys, re, glob
from pathlib import Path
sys.path.insert(0, "/mnt/hungpv/baseline_ckpt_infer")
from compare_to_sheet import parse_eval, BENCHES
exec(open("/mnt/hungpv/baseline_ckpt_infer/sheet_synid.py").read())   # defines SHEET (rows), SEEDS
OUT = Path("/mnt/hungpv/baseline_ckpt_infer/out")
RUNS = {"row1": ("synid_nokw218_g01", 3500), "row2": ("synid_nokw218_g02", 3500),
        "row3": ("synid_g01_keywords_lora218", 4375), "row4": ("synid_nokw436_g01", 4375)}
only = [int(s) for s in sys.argv[1:]] or SEEDS
tot_all = []
for row, (run, step) in RUNS.items():
    print(f"== {row} = {run} ckpt{step}   ours / sheet (diff)")
    print(f"{'':20s}" + "".join(f"{'s'+str(s):>22s}" for s in only))
    diffs = []
    for b in BENCHES:
        for m in ("EX", "EM"):
            cells = []
            for s in only:
                i = SEEDS.index(s); d = OUT/run/f"ckpt{step}"/b/f"seed{s}"
                r = parse_eval(d/"eval.log") if (d/".complete").exists() else None
                sv = SHEET[row][b][m][i]
                if r is None: cells.append(f"{'- / '+format(sv,'.1f'):>22s}"); continue
                v = round(r[m], 1); diffs.append(v - sv)
                cells.append(f"{format(v,'.1f')+' / '+format(sv,'.1f')+' ('+format(v-sv,'+.1f')+')':>22s}")
            print(f"{b[7:] or 'spider':9s}{m:11s}" + "".join(cells))
    if diffs:
        print(f"  -> {len(diffs)} cells, exact {sum(abs(d)<0.05 for d in diffs)}, mean|diff|={sum(map(abs,diffs))/len(diffs):.2f}, max|diff|={max(map(abs,diffs)):.1f}, mean signed={sum(diffs)/len(diffs):+.2f}\n")
    else:
        print("  -> nothing finished\n")
