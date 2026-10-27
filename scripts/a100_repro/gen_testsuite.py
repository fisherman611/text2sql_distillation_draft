#!/usr/bin/env python3
"""Generate distilled test suites (Zhong et al., EMNLP 2020) for Spider databases that have no released suite.

Re-implements the loop of TestSuiteEval/demo.ipynb on top of its `fuzz` and `sql_util` modules
(https://github.com/ruiqi-zhong/TestSuiteEval):
  1. neighbours = fuzz.neighbor.generate_neighbor_queries_path(db, gold) for every gold query of the database;
  2. repeatedly sample a random database (fuzz.fuzz.generate_random_db_with_queries_wrapper, seeded with all gold
     queries of the database) and keep it iff it distinguishes the gold query from at least one still
     undistinguished neighbour (different denotation, bag semantics unless the gold has ORDER BY);
  3. stop when every neighbour is distinguished, after --max-samples samples, or after --patience samples in a row
     without a new kept database (the paper's loop only has the first two; semantically equivalent neighbours can
     never be distinguished, so the plateau stop saves time without changing what is distinguishable in practice).
Output layout matches the official release: <out>/<db_id>/<db_id>.sqlite (original, with data) + <db_id>v<N>.sqlite.
These suites are random: they are NOT the official leaderboard suites.

Usage (A100): python scripts/a100_repro/gen_testsuite.py --tse-root ref/TestSuiteEval --gold benchmarks/spider_data/test_gold.sql \
    --db-dir benchmarks/spider_data/test_database --out testsuite_gen_test/database --workers 40
"""
import argparse
import collections
import json
import os
import random
import shutil
import sqlite3
import sys
import time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path


def exec_ok(path, query, timeout=5.0):
    """In-process execution with a wall-clock limit. Returns (ok, rows)."""
    from sql_util.run import replace_cur_year
    con = sqlite3.connect(path)
    con.text_factory = lambda b: b.decode(errors="ignore")
    t0 = time.time()
    con.set_progress_handler(lambda: 1 if time.time() - t0 > timeout else 0, 10000)
    try:
        return True, con.execute(replace_cur_year(query)).fetchall()
    except Exception:  # noqa: BLE001 - any failure means "not executable"
        return False, None
    finally:
        con.close()


def build_suite(job):
    db_id, queries, db_dir, out_dir, tse_root, max_samples, patience, seed = job
    os.chdir(tse_root)
    sys.path.insert(0, tse_root)
    from fuzz.fuzz import generate_random_db_with_queries_wrapper
    from fuzz.neighbor import generate_neighbor_queries_path
    from sql_util.eq import result_eq

    random.seed(f"{seed}-{db_id}")
    orig = os.path.abspath(f"{db_dir}/{db_id}/{db_id}.sqlite")
    dst = Path(out_dir) / db_id
    dst.mkdir(parents=True, exist_ok=True)
    shutil.copy2(orig, dst / f"{db_id}.sqlite")
    tmp = dst / "_tmp"
    tmp.mkdir(exist_ok=True)
    t0 = time.time()

    queries = sorted(set(queries))
    todo = {}  # (gold, neighbour) pairs that are still undistinguished
    for g in queries:
        ok_g, _ = exec_ok(orig, g)
        if not ok_g:
            continue
        try:
            neigh = generate_neighbor_queries_path(orig, g)
        except Exception:  # noqa: BLE001
            continue
        for u in set(neigh):
            if u.strip().lower() != g.strip().lower() and exec_ok(orig, u)[0]:
                todo[(g, u)] = "order by" in g.lower()
    n_pairs = len(todo)

    kept, since_keep, t = 0, 0, 0
    for t in range(max_samples):
        if not todo or since_keep >= patience:
            break
        cand = str(tmp / f"{db_id}v{t}.sqlite")
        try:
            generate_random_db_with_queries_wrapper((orig, cand, queries, {}))
        except Exception:  # noqa: BLE001
            since_keep += 1
            continue
        gold_res = {}
        distinguished = []
        for (g, u), order in list(todo.items()):
            if g not in gold_res:
                gold_res[g] = exec_ok(cand, g)
            gok, gr = gold_res[g]
            uok, ur = exec_ok(cand, u)
            if gok and uok and not result_eq(gr, ur, order_matters=order):
                distinguished.append((g, u))
        if distinguished:
            for k in distinguished:
                del todo[k]
            os.replace(cand, dst / f"{db_id}v{t}.sqlite")
            kept += 1
            since_keep = 0
        else:
            os.remove(cand)
            since_keep += 1
    shutil.rmtree(tmp, ignore_errors=True)
    return {"db": db_id, "queries": len(queries), "neighbour_pairs": n_pairs, "undistinguished": len(todo),
            "kept_dbs": kept, "samples_tried": t + 1, "seconds": round(time.time() - t0, 1)}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tse-root", required=True)
    ap.add_argument("--gold", required=True, help="gold .sql file, 'query<TAB>db_id' per line")
    ap.add_argument("--db-dir", required=True, help="directory with <db_id>/<db_id>.sqlite (original databases)")
    ap.add_argument("--out", required=True)
    ap.add_argument("--dbs", nargs="*", default=None)
    ap.add_argument("--workers", type=int, default=16)
    ap.add_argument("--max-samples", type=int, default=1000)
    ap.add_argument("--patience", type=int, default=200)
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args()

    by = collections.defaultdict(list)
    for line in Path(args.gold).read_text(errors="ignore").splitlines():
        if line.strip():
            q, db = line.split("\t")
            by[db].append(q)
    dbs = args.dbs or sorted(by)
    jobs = [(d, by[d], os.path.abspath(args.db_dir), os.path.abspath(args.out), os.path.abspath(args.tse_root),
             args.max_samples, args.patience, args.seed) for d in sorted(dbs, key=lambda d: -len(by[d]))]
    Path(args.out).mkdir(parents=True, exist_ok=True)
    with ProcessPoolExecutor(args.workers) as pool:
        for r in pool.map(build_suite, jobs):
            print(json.dumps(r), flush=True)
            with open(Path(args.out) / "gen_log.jsonl", "a") as f:
                f.write(json.dumps(r) + "\n")


if __name__ == "__main__":
    main()
