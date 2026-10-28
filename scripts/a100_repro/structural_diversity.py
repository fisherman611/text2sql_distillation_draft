#!/usr/bin/env python3
"""How much structural diversity do the accepted (y_ref, y_refm) pairs contain?  Model-independent.

Uses the Spider evaluator's SQL parser (process_sql.get_sql) on both queries of every pair:
  * exact_set_match(y_ref, y_refm): 1 -> the two queries are the same up to aliases / ordering / formatting
                                    0 -> genuinely different structure
  * change tags describing HOW the structure differs (join<->subquery, set operation, group/having, order/limit,
    distinct, aggregation, number of tables / nested queries / conditions)
Run from the project root (src/evaluator importable, train databases under benchmarks/spider_data/database):
  python scripts/a100_repro/structural_diversity.py --merged <final_merged.jsonl> --out out_struct
"""
import argparse
import collections
import csv
import json
import os
import sys
from difflib import SequenceMatcher
from pathlib import Path

sys.path.insert(0, str(Path.cwd() / "src" / "evaluator"))
from evaluation import (Evaluator, build_foreign_key_map_from_json, build_valid_col_units, rebuild_sql_col,  # noqa: E402
                        rebuild_sql_val)
from process_sql import Schema, get_schema, get_sql  # noqa: E402


def norm(s):
    return " ".join(s.strip().rstrip(";").split())


def sim(a, b):
    return SequenceMatcher(None, norm(a).casefold(), norm(b).casefold()).ratio()


def n_nested(sql):
    """number of nested SELECTs below this one (sub-queries in FROM / WHERE / HAVING values; set operands excluded)."""
    n = 0
    for _, val in sql["from"]["table_units"]:
        if isinstance(val, dict):
            n += 1 + n_nested(val)
    for cond in (sql["from"]["conds"], sql["where"], sql["having"]):
        for c in cond:
            if isinstance(c, tuple):
                for v in (c[3], c[4]):
                    if isinstance(v, dict):
                        n += 1 + n_nested(v)
    return n


def n_conds(cond):
    return sum(1 for c in cond if isinstance(c, tuple))


def features(sql):
    sel_aggs = sorted({a for a, _ in sql["select"][1] if a})
    return dict(
        tables=sum(1 for t, _ in sql["from"]["table_units"] if t == "table_unit"),
        nested=n_nested(sql),
        intersect=sql["intersect"] is not None, union=sql["union"] is not None, except_=sql["except"] is not None,
        group=bool(sql["groupBy"]), having=bool(sql["having"]), order=bool(sql["orderBy"]), limit=sql["limit"] is not None,
        distinct=bool(sql["select"][0]), aggs=tuple(sel_aggs), where_conds=n_conds(sql["where"]),
        select_cols=len(sql["select"][1]),
    )


def tags(a, b):
    """structural differences between feature dicts of y_ref (a) and y_refm (b)."""
    t = []
    if a["tables"] != b["tables"] or a["nested"] != b["nested"]:
        if (b["tables"] - a["tables"]) * (b["nested"] - a["nested"]) < 0:
            t.append("join<->subquery")
        elif a["nested"] != b["nested"]:
            t.append("subquery_count")
        else:
            t.append("table_count")
    if (a["intersect"], a["union"], a["except_"]) != (b["intersect"], b["union"], b["except_"]):
        t.append("set_operation")
    if a["group"] != b["group"]:
        t.append("group_by")
    if a["having"] != b["having"]:
        t.append("having")
    if a["order"] != b["order"] or a["limit"] != b["limit"]:
        t.append("order_limit")
    if a["distinct"] != b["distinct"]:
        t.append("distinct")
    if a["aggs"] != b["aggs"]:
        t.append("aggregation")
    if a["where_conds"] != b["where_conds"]:
        t.append("condition_count")
    if a["select_cols"] != b["select_cols"]:
        t.append("select_columns")
    return t


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--merged", required=True)
    ap.add_argument("--db-dir", default="benchmarks/spider_data/database")
    ap.add_argument("--tables", default="benchmarks/spider_data/tables.json")
    ap.add_argument("--out", default="out_struct")
    args = ap.parse_args()
    kmaps = build_foreign_key_map_from_json(args.tables)
    evaluator = Evaluator()
    rows = [json.loads(l) for l in open(args.merged)]
    acc = [r for r in rows if r.get("status") == "accepted"]
    out, fail = [], 0
    for r in acc:
        db = r["db_id"]
        path = f"{args.db_dir}/{db}/{db}.sqlite"
        try:
            schema = Schema(get_schema(path))
            g, p = get_sql(schema, r["gold_sql"]), get_sql(schema, r["aug_sql"])
            fg, fp = features(g), features(p)
            gv = build_valid_col_units(g["from"]["table_units"], schema); g2 = rebuild_sql_col(gv, rebuild_sql_val(g), kmaps[db])
            pv = build_valid_col_units(p["from"]["table_units"], schema); p2 = rebuild_sql_col(pv, rebuild_sql_val(p), kmaps[db])
            em = int(evaluator.eval_exact_match(p2, g2))
            hard = evaluator.eval_hardness(g)
        except Exception as exc:  # noqa: BLE001
            fail += 1
            out.append(dict(id=r["id"], db_id=db, parsed=0, sim=sim(r["gold_sql"], r["aug_sql"]), em=None, tags="", hardness="", gold=r["gold_sql"], gen=r["aug_sql"]))
            continue
        out.append(dict(id=r["id"], db_id=db, parsed=1, sim=sim(r["gold_sql"], r["aug_sql"]), em=em, tags="|".join(tags(fg, fp)), hardness=hard,
                        gold=r["gold_sql"], gen=r["aug_sql"]))
    Path(args.out).mkdir(parents=True, exist_ok=True)
    with open(Path(args.out) / "pairs_structure.csv", "w", newline="", encoding="utf-8-sig") as f:
        w = csv.DictWriter(f, fieldnames=list(out[0].keys())); w.writeheader(); w.writerows(out)

    ok = [o for o in out if o["parsed"]]
    print(f"accepted pairs {len(acc)} | parsed {len(ok)} | parse failures {fail}")
    em1 = sum(o["em"] == 1 for o in ok)
    print(f"exact set match gold vs generated: EM=1 (same structure, only alias/order/format) {em1} ({100*em1/len(ok):.1f}%) | EM=0 (different structure) {len(ok)-em1} ({100*(len(ok)-em1)/len(ok):.1f}%)")
    c = collections.Counter(t for o in ok if o["em"] == 0 for t in (o["tags"].split("|") if o["tags"] else ["(no tag: other difference)"]))
    n0 = len(ok) - em1
    print("structural tags among EM=0 pairs (a pair can carry several):")
    for t, n in c.most_common():
        print(f"   {t:28s} {n:5d}  ({100*n/n0:.1f}% of EM=0 | {100*n/len(ok):.1f}% of all)")
    core = {"join<->subquery", "subquery_count", "table_count", "set_operation", "group_by", "having", "order_limit", "distinct", "aggregation", "select_columns"}
    n_core = sum(1 for o in ok if o["em"] == 0 and set(o["tags"].split("|")) & core)
    print(f"pairs with at least one core structural tag (excluding condition_count): {n_core} ({100*n_core/len(ok):.1f}%)")
    s = sorted(o["sim"] for o in ok)
    q = lambda p: s[int(p * (len(s) - 1))]
    print("SequenceMatcher similarity: p5 %.3f p25 %.3f median %.3f p75 %.3f" % (q(.05), q(.25), q(.5), q(.75)))
    low = sorted(ok, key=lambda o: (o["sim"], o["id"]))[:100]
    print("current 100 lowest-similarity pairs: EM=1 for %d, EM=0 for %d; tags:" % (sum(o["em"] == 1 for o in low), sum(o["em"] == 0 for o in low)),
          dict(collections.Counter(t for o in low for t in o["tags"].split("|") if t)))
    # relation between surface similarity and structural change
    for lo, hi in ((0, .5), (.5, .7), (.7, .9), (.9, 1.01)):
        b = [o for o in ok if lo <= o["sim"] < hi]
        if b:
            print(f"   similarity [{lo:.1f},{min(hi, 1):.1f}): n={len(b):4d}  EM=0 (structure differs): {100*sum(o['em']==0 for o in b)/len(b):5.1f}%")


if __name__ == "__main__":
    main()
