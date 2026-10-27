#!/usr/bin/env python3
"""Test-suite execution accuracy (Zhong et al., EMNLP 2020) for formatted predictions.

For every sample the prediction is executed against the gold query on
  * the distilled test-suite databases (all *.sqlite in database/<db_id>/), and
  * the single original Spider database,
so the two scores are paired. Same flags as the earlier EX runs: no --plug_value, no --keep_distinct.
Per-sample flags are written to <out>/<method>/<bench>/seed<N>.json.

Usage (on the A100, from the project root that contains src/evaluator):
  python scripts/a100_repro/testsuite_eval.py --pred-root final_predictions --methods synid_sql_row3 csd_kd0.6_ckpt654 distillm_ckpt872 \
      --benches spider_syn spider_realistic spider_dk --seeds 42 --workers 40
"""
import argparse
import json
import os
import sys
import time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

ROOT = Path.cwd()
sys.path.insert(0, str(ROOT / "src" / "evaluator"))
from exec_eval import eval_exec_match  # noqa: E402

# benchmark -> directory with the single original databases
SINGLE_DB = {
    "spider_data": "benchmarks/spider_data/test_database",  # Spider test (needs a generated suite, none is released)
    "spider_syn": "benchmarks/spider_data/database",
    "spider_realistic": "benchmarks/spider_data/database",
    "spider_dk": "benchmarks/spider_dk/database",
}


def one(task):
    idx, db_id, g_str, p_str, suite_dir, single_dir, timeout = task
    p_str = p_str.replace("value", "1")  # same normalisation as evaluation.evaluate()
    out = {"idx": idx, "db": db_id, "suite": None, "single": None, "has_suite": suite_dir is not None}
    for key, d in (("suite", suite_dir), ("single", single_dir)):
        if d is None:
            continue
        try:
            out[key] = int(eval_exec_match(db=str(Path(d) / db_id / f"{db_id}.sqlite"), p_str=p_str, g_str=g_str,
                                           plug_value=False, keep_distinct=False,
                                           progress_bar_for_each_datapoint=False, timeout=timeout))
        except Exception as exc:  # noqa: BLE001 - record and keep going
            out[key] = None
            out[key + "_error"] = f"{type(exc).__name__}: {exc}"[:200]
    return out


def read_pairs(pred_path, gold_path):
    preds = Path(pred_path).read_text(errors="ignore").split("\n")
    if preds and preds[-1] == "":
        preds.pop()
    golds = [l.split("\t") for l in Path(gold_path).read_text(errors="ignore").split("\n") if l.strip()]
    assert len(preds) == len(golds), f"row mismatch {len(preds)} != {len(golds)}"
    return [(g[0], g[1], p) for g, p in zip(golds, preds)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--pred-root", required=True)
    ap.add_argument("--methods", nargs="+", required=True)
    ap.add_argument("--benches", nargs="+", required=True)
    ap.add_argument("--seeds", nargs="+", type=int, required=True)
    ap.add_argument("--suite-dir", default="testsuite_db/database")
    ap.add_argument("--out", default="out_testsuite")
    ap.add_argument("--workers", type=int, default=32)
    ap.add_argument("--timeout", type=int, default=60)
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args()

    suite_dbs = {d for d in os.listdir(args.suite_dir) if (Path(args.suite_dir) / d).is_dir()}
    with ProcessPoolExecutor(args.workers) as pool:
        for method in args.methods:
            for bench in args.benches:
                for seed in args.seeds:
                    d = Path(args.pred_root) / method / bench / f"seed{seed}"
                    d = d / "formatted_data" if (d / "formatted_data").exists() else d  # synid_sql_row3 is flat
                    pred, gold = next(d.glob("*.pred.sql")), next(d.glob("*.gold.sql"))
                    pairs = read_pairs(pred, gold)[: args.limit]
                    tasks = [(i, db, g, p, args.suite_dir if db in suite_dbs else None, SINGLE_DB[bench], args.timeout)
                             for i, (g, db, p) in enumerate(pairs)]
                    t0 = time.time()
                    res = list(pool.map(one, tasks, chunksize=4))
                    n = len(res)
                    ok_s = [r for r in res if r["single"] is not None]
                    ok_t = [r for r in res if r["suite"] is not None]
                    summ = {
                        "method": method, "bench": bench, "seed": seed, "n": n,
                        "single_ex": 100 * sum(r["single"] for r in ok_s) / len(ok_s),
                        "suite_ex": 100 * sum(r["suite"] for r in ok_t) / len(ok_t) if ok_t else None,
                        "n_with_suite": len(ok_t),
                        "errors": sum(1 for r in res if ("suite_error" in r or "single_error" in r)),
                        "seconds": round(time.time() - t0, 1),
                    }
                    outp = Path(args.out) / method / bench
                    outp.mkdir(parents=True, exist_ok=True)
                    (outp / f"seed{seed}.json").write_text(json.dumps({"summary": summ, "samples": res}))
                    print(json.dumps(summ), flush=True)


if __name__ == "__main__":
    main()
