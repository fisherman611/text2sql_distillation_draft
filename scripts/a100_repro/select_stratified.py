#!/usr/bin/env python3
"""Plan B: 100 accepted (y_ref, y_refm) pairs stratified by the kind of structural change. Model-independent.

Eligible: parsed pairs with Exact Set Match = 0 and at least one core structural tag (structural_diversity.py).
Each pair is assigned to ONE stratum by a fixed priority order of its tags; inside a stratum the pairs with the lowest
SequenceMatcher similarity are taken (ties: lowest id). Quotas (sum = 100):
  set_operation 25 | join<->subquery 25 | subquery_count / table_count 20 | order_limit 15 | group_by / having / distinct / aggregation 15
Output has the same columns as train_lowest100.csv (+ stratum), so it can be fed to representation_eval.py --mode train.
"""
import argparse
import collections
import csv
import json
from pathlib import Path

ap = argparse.ArgumentParser()
ap.add_argument("--structure", default="out_struct/pairs_structure.csv")
ap.add_argument("--merged", required=True)
ap.add_argument("--out", default="manual_audit/train_stratified100.csv")
args = ap.parse_args()

STRATA = [("set_operation", {"set_operation"}, 25),
          ("join<->subquery", {"join<->subquery"}, 25),
          ("subquery_or_table_count", {"subquery_count", "table_count"}, 20),
          ("order_limit", {"order_limit"}, 15),
          ("group_having_distinct_agg", {"group_by", "having", "distinct", "aggregation"}, 15)]

merged = {int(json.loads(l)["id"]): json.loads(l) for l in open(args.merged, encoding="utf-8")}
rows = [r for r in csv.DictReader(open(args.structure, encoding="utf-8-sig")) if r["parsed"] == "1" and r["em"] == "0"]
pool = collections.defaultdict(list)
for r in rows:
    tags = set(r["tags"].split("|")) if r["tags"] else set()
    for name, members, _ in STRATA:             # first matching stratum in priority order
        if tags & members:
            pool[name].append(r); break
sel = []
for name, _, quota in STRATA:
    cand = sorted(pool[name], key=lambda r: (float(r["sim"]), int(r["id"])))
    take = cand[:quota]
    print(f"{name:28s} eligible {len(cand):4d} | quota {quota:2d} | taken {len(take):2d} | similarity of taken: {float(take[0]['sim']):.3f}..{float(take[-1]['sim']):.3f}")
    sel += [(name, r) for r in take]
assert len(sel) == 100, len(sel)
Path(args.out).parent.mkdir(parents=True, exist_ok=True)
with open(args.out, "w", newline="", encoding="utf-8-sig") as f:
    w = csv.writer(f)
    w.writerow(["rank", "id", "db_id", "question", "original_sql", "generated_sql", "similarity", "token_jaccard", "loop", "schema", "stratum", "audit_label", "audit_notes"])
    for k, (name, r) in enumerate(sel, 1):
        m = merged[int(r["id"])]
        # SQL always comes from the structure table; jaccard/loop only when the merged file holds the same generated SQL
        same = " ".join((m.get("aug_sql") or "").split()) == " ".join(r["gen"].split())
        w.writerow([k, r["id"], r["db_id"], m["question"], r["gold"], r["gen"], round(float(r["sim"]), 4),
                    round(m["jaccard"], 4) if same and m.get("jaccard") is not None else "", m.get("loop", "") if same else "",
                    m["schema"].replace("\n", " | "), name, "", ""])
sims = sorted(float(r["sim"]) for _, r in sel)
print(f"selected 100 | similarity min {sims[0]:.3f} median {sims[50]:.3f} max {sims[-1]:.3f} | distinct dbs {len({r['db_id'] for _, r in sel})}")
