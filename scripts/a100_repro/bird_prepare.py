#!/usr/bin/env python3
"""Prepare BIRD Mini-Dev (original 500 SELECT-only questions, SQLite) for the Spider-trained students.

Source: HF birdsql/bird_mini_dev, archive/bird_mini_dev_2025-07-04 (the original 500-question set, 30/50/20 difficulty;
the current 'Mini-Dev 1024' release re-annotated the questions and no longer matches BIRD dev).

Prompt (identical for CSD / DistillLLM / SynID-SQL): the Spider student prompt the checkpoints were trained with
(system prompt unchanged, user prompt unchanged) plus one EVIDENCE block between QUESTION and SCHEMA.
Schema text is taken from the repo's BIRD serialisation (benchmarks_2/bird/format_data/dev.jsonl) so the format
(Tables:/Foreign keys:) is the one the checkpoints saw.

Writes (in --out): mini_dev_sqlite.jsonl, mini_dev_sqlite_gold.sql (official eval format), mini_dev_inputs.jsonl.
"""
import argparse
import json
import statistics as st
from pathlib import Path

ap = argparse.ArgumentParser()
ap.add_argument("--bird-dir", default="bird")
ap.add_argument("--format-bird-dev", default="benchmarks_2/bird/format_data/dev.jsonl")
ap.add_argument("--format-spider-train", default="benchmarks_2/spider_data/format_data/train.jsonl")
ap.add_argument("--tokenizer", default="Qwen/Qwen3-0.6B")
args = ap.parse_args()
B = Path(args.bird_dir)

mini = json.load(open(B / "hf/archive/bird_mini_dev_2025-07-04/data/mini_dev_sqlite-00000-of-00001.json"))
dev = json.load(open(B / "dev.json"))
fmt = [json.loads(l) for l in open(args.format_bird_dev)]
spider = json.loads(open(args.format_spider_train).readline())
SYSTEM = spider["system_prompt"]            # Spider student system prompt, unchanged
assert len(mini) == 500

USER = ("QUESTION:\n{question}\n\nEVIDENCE:\n{evidence}\n\nSCHEMA:\n{schema}\n\n"
        "Generate a valid SQLite SQL query that answers the question using only the provided schema.\n"
        "Return only the JSON object in the required format.")
# the Spider user prompt template with the EVIDENCE block inserted (checked against the Spider template below)
assert spider["user_prompt"].rstrip().endswith("Return only the JSON object in the required format.")
assert "using only the provided schema.\nReturn only" in spider["user_prompt"]

rows, mismatch = [], 0
for r in mini:
    qid = int(r["question_id"])
    d, f = dev[qid], fmt[qid]
    assert d["db_id"] == r["db_id"], f"db mismatch for question_id {qid}"
    up = f["user_prompt"]
    schema = up.split("SCHEMA:\n", 1)[1].split("\n\nGenerate a valid SQLite", 1)[0]
    if d["question"].strip() != r["question"].strip():
        mismatch += 1
    rows.append(dict(question_id=qid, db_id=r["db_id"], question=r["question"].strip(), evidence=(r.get("evidence") or "").strip(),
                     gold_sql=" ".join(r["SQL"].split()), difficulty=r["difficulty"],
                     system_prompt=SYSTEM, user_prompt=USER.format(question=r["question"].strip(), evidence=(r.get("evidence") or "").strip(), schema=schema)))
print(f"questions {len(rows)} | question text differs from dev.json for {mismatch} (schema still taken by question_id/db_id)")

with open(B / "mini_dev_sqlite.jsonl", "w") as f:
    for r in rows:
        f.write(json.dumps({k: r[k] for k in ("question_id", "db_id", "question", "evidence", "difficulty")} | {"SQL": r["gold_sql"]}) + "\n")
with open(B / "mini_dev_sqlite_gold.sql", "w") as f:
    for r in rows:
        f.write(f"{r['gold_sql']}\t{r['db_id']}\n")
with open(B / "mini_dev_inputs.jsonl", "w") as f:
    for r in rows:
        f.write(json.dumps(r) + "\n")

from transformers import AutoTokenizer
tok = AutoTokenizer.from_pretrained(args.tokenizer)
def plen(r):
    msgs = [{"role": "system", "content": r["system_prompt"]}, {"role": "user", "content": r["user_prompt"]}]
    return len(tok.encode(tok.apply_chat_template(msgs, tokenize=False, add_generation_prompt=True, enable_thinking=False), add_special_tokens=False))
P = sorted(plen(r) for r in rows)
G = sorted(len(tok.encode(json.dumps({"sql": r["gold_sql"]}), add_special_tokens=False)) for r in rows)
q = lambda a, p: a[min(len(a) - 1, int(p * len(a)))]
print("prompt tokens: min %d median %d p90 %d p99 %d max %d" % (P[0], st.median(P), q(P, .9), q(P, .99), P[-1]))
print("prompts over CSD budget 1479: %d | over SynID budget 1536: %d | over 2048: %d" % (sum(p > 1479 for p in P), sum(p > 1536 for p in P), sum(p > 2048 for p in P)))
print("gold response tokens: median %d p90 %d p99 %d max %d" % (st.median(G), q(G, .9), q(G, .99), G[-1]))
import collections
print("difficulty:", dict(collections.Counter(r["difficulty"] for r in rows)), "| dbs:", len({r["db_id"] for r in rows}))
