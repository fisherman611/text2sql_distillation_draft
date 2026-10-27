#!/usr/bin/env python3
"""Compare seed-42 EX/EM of baseline checkpoints with the SynID-SQL sheet (Qwen3-0.6B block).

Targets come from the sheet 'Multi-seeds run (Spider & Variants)': per-seed value for Seed=42
and mean/std over the 5 seeds. Reads <out>/<run>/ckpt<step>/<bench>/seed42/eval.log.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

BENCHES = ["spider_data", "spider_syn", "spider_realistic", "spider_dk"]
METRICS = ["EX", "EM"]

# (seed42, mean, std) per benchmark and metric, in %
SHEET = {
    "CSD": {
        "spider_data": {"EX": (67.2, 67.20, 0.25), "EM": (60.0, 60.32, 0.48)},
        "spider_syn": {"EX": (53.5, 53.44, 0.43), "EM": (46.9, 46.54, 0.46)},
        "spider_realistic": {"EX": (54.7, 54.70, 0.14), "EM": (51.8, 51.44, 0.77)},
        "spider_dk": {"EX": (55.5, 55.30, 0.67), "EM": (46.7, 45.94, 0.55)},
    },
    "DistillLLM": {
        "spider_data": {"EX": (66.2, 66.24, 0.29), "EM": (58.8, 58.82, 0.22)},
        "spider_syn": {"EX": (50.6, 50.40, 0.51), "EM": (43.5, 43.50, 0.16)},
        "spider_realistic": {"EX": (51.2, 51.48, 0.33), "EM": (48.0, 48.96, 0.89)},
        "spider_dk": {"EX": (51.8, 52.64, 0.52), "EM": (44.7, 45.38, 0.58)},
    },
}


def sheet_row_for(run: str) -> str:
    return "DistillLLM" if run.startswith("distillm") else "CSD"


def parse_eval(log: Path) -> dict[str, float] | None:
    if not log.exists():
        return None
    out: dict[str, float] = {}
    for line in log.read_text(errors="ignore").splitlines():
        parts = line.split()
        if parts[:1] == ["execution"] and "EX" not in out:
            out["EX"] = float(parts[-1]) * 100
        elif parts[:2] == ["exact", "match"] and "EM" not in out:
            out["EM"] = float(parts[-1]) * 100
    return out if len(out) == 2 else None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()

    results = []
    for run_dir in sorted(p for p in args.out.iterdir() if p.is_dir()):
        for ck in sorted(run_dir.glob("ckpt*"), key=lambda p: int(p.name[4:])):
            row = sheet_row_for(run_dir.name)
            vals: dict[str, dict[str, float | None]] = {}
            for b in BENCHES:
                r = parse_eval(ck / b / f"seed{args.seed}" / "eval.log")
                vals[b] = {m: (r[m] if r else None) for m in METRICS}
            diffs = [abs(vals[b][m] - SHEET[row][b][m][0]) for b in BENCHES for m in METRICS if vals[b][m] is not None]
            z = [
                abs(vals[b][m] - SHEET[row][b][m][1]) / max(SHEET[row][b][m][2], 1e-9)
                for b in BENCHES for m in METRICS if vals[b][m] is not None
            ]
            within = [
                abs(vals[b][m] - SHEET[row][b][m][1]) <= SHEET[row][b][m][2]
                for b in BENCHES for m in METRICS if vals[b][m] is not None
            ]
            results.append({
                "run": run_dir.name, "ckpt": ck.name, "sheet_row": row, "values": vals,
                "n_metrics": len(diffs),
                "mean_abs_diff_vs_seed42": sum(diffs) / len(diffs) if diffs else None,
                "max_abs_diff_vs_seed42": max(diffs) if diffs else None,
                "n_within_1std_of_mean": sum(within), "mean_z_vs_mean_std": sum(z) / len(z) if z else None,
            })

    print(f"seed {args.seed}: baseline checkpoints vs sheet (Qwen3-0.6B block). Values are %; sheet seed42 in brackets.\n")
    for r in results:
        print(f"== {r['run']} / {r['ckpt']}  (sheet row: {r['sheet_row']})")
        print(f"   {'bench':17s}{'EX':>8s}{'[sheet]':>9s}{'EM':>8s}{'[sheet]':>9s}")
        for b in BENCHES:
            v = r["values"][b]
            s = SHEET[r["sheet_row"]][b]
            fx = f"{v['EX']:.1f}" if v["EX"] is not None else "n/a"
            fm = f"{v['EM']:.1f}" if v["EM"] is not None else "n/a"
            print(f"   {b:17s}{fx:>8s}{('[' + str(s['EX'][0]) + ']'):>9s}{fm:>8s}{('[' + str(s['EM'][0]) + ']'):>9s}")
        if r["n_metrics"]:
            print(f"   -> mean |diff| vs seed42 = {r['mean_abs_diff_vs_seed42']:.2f}, max |diff| = {r['max_abs_diff_vs_seed42']:.1f}, "
                  f"within 1 std of sheet mean: {r['n_within_1std_of_mean']}/{r['n_metrics']}")
        else:
            print("   -> no eval results yet")
        print()

    ranked = sorted((r for r in results if r["n_metrics"] == 8), key=lambda r: r["mean_abs_diff_vs_seed42"])
    if ranked:
        print("Ranking by mean |diff| to sheet seed-42 (lower = closer):")
        for r in ranked:
            print(f"  {r['mean_abs_diff_vs_seed42']:.2f}  max {r['max_abs_diff_vs_seed42']:.1f}  "
                  f"in-1std {r['n_within_1std_of_mean']}/8  {r['run'][:46]} / {r['ckpt']}")
    (args.out / "comparison.json").write_text(json.dumps(results, indent=2) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
