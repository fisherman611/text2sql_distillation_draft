#!/usr/bin/env python3
"""Seed-42 SynID candidates (bs100) ranked by closeness to the chosen target (sheet row3 seed 42 = 71.2 Spider EX)."""
import sys
from pathlib import Path
sys.path.insert(0, "/mnt/hungpv/baseline_ckpt_infer")
from compare_to_sheet import parse_eval, BENCHES
exec(open("/mnt/hungpv/baseline_ckpt_infer/sheet_synid.py").read())
OUT = Path("/mnt/hungpv/baseline_ckpt_infer/out")
T = {b: {m: SHEET["row3"][b][m][0] for m in ("EX", "EM")} for b in BENCHES}
rows = []
for run in sorted(OUT.glob("synid_*")):
    for ck in sorted(run.glob("ckpt*"), key=lambda p: int(p.name[4:])):
        v = {}
        for b in BENCHES:
            d = ck / b / "seed42"
            r = parse_eval(d / "eval.log") if (d / ".complete").exists() else None
            if r: v[b] = r
        if len(v) < 4: continue
        diffs = [v[b][m] - T[b][m] for b in BENCHES for m in ("EX", "EM")]
        rows.append((sum(map(abs, diffs)) / 8, run.name, ck.name, v, sum(diffs) / 8))
hdr = "target(row3 s42)".ljust(32) + " ".join(f"{T[b]['EX']:5.1f}/{T[b]['EM']:4.1f}" for b in BENCHES)
print("columns: Spider | Syn | Realistic | DK  (EX/EM)\n" + hdr)
for mad, run, ck, v, sg in sorted(rows):
    print(f"{(run[:21] + ' ' + ck).ljust(32)}" + " ".join(f"{v[b]['EX']:5.1f}/{v[b]['EM']:4.1f}" for b in BENCHES) + f"   mean|d|={mad:.2f} signed={sg:+.2f}")
