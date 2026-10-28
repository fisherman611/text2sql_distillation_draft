#!/usr/bin/env python3
"""Select the Spider-test samples for the representation study.

Each model contributes (gold, its own prediction) from its best Spider-test seed. A sample is eligible when all
three predictions are execution-correct on the original DB (EX=1) AND differ from the gold after normalisation
(otherwise the pair is identical and its cosine trivially 1). The 100 eligible samples with the lowest SynID-SQL
SequenceMatcher similarity (gold vs. SynID-SQL prediction) are kept.

Run from the project root (needs src/evaluator): python scripts/a100_repro/select_pairs.py --pred-root final_predictions
"""
import argparse
import csv
import json
import os
import sys
from concurrent.futures import ProcessPoolExecutor
from difflib import SequenceMatcher
from pathlib import Path

sys.path.insert(0, str(Path.cwd() / "src" / "evaluator"))
from exec_eval import eval_exec_match  # noqa: E402

# method -> (directory in final_predictions, best Spider-test seed in the multi-seed sheet)
MODELS = {"synid": ("synid_sql_row3", 100), "csd": ("csd_kd0.6_ckpt654", 1234), "distillm": ("distillm_ckpt872", 10)}
DB_DIR = "benchmarks/spider_data/test_database"


def norm(s):
    return " ".join(s.strip().rstrip(";").split())


def sim(a, b):
    a, b = norm(a).casefold(), norm(b).casefold()
    if not a and not b:
        return 1.0
    if not a or not b:
        return 0.0
    return SequenceMatcher(None, a, b).ratio()


def ex(t):
    db, g, p = t
    try:
        return int(eval_exec_match(db=f"{DB_DIR}/{db}/{db}.sqlite", p_str=p.replace("value", "1"), g_str=g, plug_value=False,
                                   keep_distinct=False, progress_bar_for_each_datapoint=False, timeout=60))
    except Exception:  # noqa: BLE001
        return 0


def load(root, method, seed):
    d = Path(root) / method / "spider_data" / f"seed{seed}"
    fd = d / "formatted_data" if (d / "formatted_data").exists() else d  # synid_sql_row3 is flat
    pred = next(fd.glob("*.pred.sql")).read_text(errors="ignore").split("\n")
    pred = pred[:-1] if pred[-1] == "" else pred
    gold = [l.split("\t") for l in next(fd.glob("*.gold.sql")).read_text(errors="ignore").split("\n") if l.strip()]
    full = json.loads(next(d.glob("*sql_result.json")).read_text())
    assert len(pred) == len(gold) == len(full) == 2147
    return pred, gold, full


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--pred-root", required=True)
    ap.add_argument("--out", default="out_repr/selected_pairs.csv")
    ap.add_argument("--n", type=int, default=100)
    ap.add_argument("--workers", type=int, default=32)
    args = ap.parse_args()

    data, flags = {}, {}
    with ProcessPoolExecutor(args.workers) as pool:
        for key, (method, seed) in MODELS.items():
            pred, gold, full = load(args.pred_root, method, seed)
            data[key] = (pred, gold, full)
            flags[key] = list(pool.map(ex, [(db, g, p) for (g, db), p in zip(gold, pred)], chunksize=8))
            print(f"{key:9s} seed {seed:4d}: EX = {100 * sum(flags[key]) / 2147:.2f}%", flush=True)

    gold = data["synid"][1]
    for key in MODELS:  # all models must be aligned to the same test sample
        assert [g for g, _ in data[key][1]] == [g for g, _ in gold]
    rows = []
    for i in range(2147):
        if not all(flags[k][i] for k in MODELS):
            continue
        g, db = gold[i]
        preds = {k: data[k][0][i] for k in MODELS}
        sims = {k: sim(g, preds[k]) for k in MODELS}
        if any(norm(preds[k]).casefold() == norm(g).casefold() for k in MODELS):
            continue
        rows.append(dict(idx=i, db=db, gold=g, q=data["synid"][2][i]["question"], sid=data["synid"][2][i].get("sample_id"), preds=preds, sims=sims))
    n_all_ex1 = sum(1 for i in range(2147) if all(flags[k][i] for k in MODELS))
    print(f"all three EX=1: {n_all_ex1} | and all predictions differ from gold: {len(rows)}")
    rows.sort(key=lambda r: (r["sims"]["synid"], r["idx"]))
    sel = rows[: args.n]
    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    with open(args.out, "w", newline="", encoding="utf-8-sig") as f:
        w = csv.writer(f)
        w.writerow(["rank", "idx", "sample_id", "db_id", "question", "gold_sql", "synid_pred", "csd_pred", "distillm_pred", "sim_synid", "sim_csd", "sim_distillm"])
        for k, r in enumerate(sel, 1):
            w.writerow([k, r["idx"], r["sid"], r["db"], r["q"], r["gold"], r["preds"]["synid"], r["preds"]["csd"], r["preds"]["distillm"],
                        round(r["sims"]["synid"], 4), round(r["sims"]["csd"], 4), round(r["sims"]["distillm"], 4)])
    m = lambda k: sum(r["sims"][k] for r in sel) / len(sel)
    print(f"selected {len(sel)} | mean sim gold-vs-pred: synid {m('synid'):.3f} csd {m('csd'):.3f} distillm {m('distillm'):.3f} | synid max {sel[-1]['sims']['synid']:.3f}")


if __name__ == "__main__":
    main()
