#!/usr/bin/env python3
"""Sample SQL for BIRD Mini-Dev with a Spider-trained LoRA checkpoint, several seeds.

Reuses infer.py (model loading, chat template with enable_thinking=False, sampling, JSON/SQL extraction) and the seed
setter of the multi-seed wrapper, so the generation settings match the Spider runs (T=0.5, top_p=0.95, top_k=0).
Input: bird/mini_dev_inputs.jsonl from bird_prepare.py (system/user prompt per question).
Output per seed: <out>/seed<N>/pred_raw.json (full records) and pred_official.json
  ({"0": "<sql>\\t----- bird -----\\t<db_id>", ...}) which is the format evaluation_ex.py expects.
Run from the project root:  python scripts/a100_repro/bird_infer.py --name csd --ckpt hf_baselines/qwen3/<run>/<step> --seeds 10 42 50 100 1234
"""
import argparse
import gc
import json
import os
import random
import sys
from pathlib import Path

import torch
from transformers import set_seed as transformers_set_seed

sys.path.insert(0, str(Path.cwd()))
import infer  # noqa: E402  (the repo's infer.py)


def set_all_seeds(seed):
    os.environ["PYTHONHASHSEED"] = str(seed)
    random.seed(seed)
    try:
        import numpy as np
        np.random.seed(seed)
    except Exception:  # noqa: BLE001
        pass
    torch.manual_seed(seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(seed)
    transformers_set_seed(seed)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--name", required=True)
    ap.add_argument("--ckpt", required=True)
    ap.add_argument("--inputs", default="bird/mini_dev_inputs.jsonl")
    ap.add_argument("--out", default="out_bird")
    ap.add_argument("--seeds", nargs="+", type=int, default=[10, 42, 50, 100, 1234])
    ap.add_argument("--batch-size", type=int, default=50)
    ap.add_argument("--max-new-tokens", type=int, default=768)
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args()

    rows = [json.loads(l) for l in open(args.inputs)][: args.limit]
    tokenizer, model = infer.init_model("Qwen/Qwen3-0.6B", args.ckpt, None, device="cuda")
    for seed in args.seeds:
        out = Path(args.out) / args.name / f"seed{seed}"
        if (out / "pred_official.json").exists() and not args.limit:
            print(f"[skip] {args.name} seed{seed}", flush=True)
            continue
        out.mkdir(parents=True, exist_ok=True)
        set_all_seeds(seed)
        recs, official, fails = [], {}, 0
        for s in range(0, len(rows), args.batch_size):
            batch = rows[s:s + args.batch_size]
            msgs = [[{"role": "system", "content": r["system_prompt"]}, {"role": "user", "content": r["user_prompt"]}] for r in batch]
            raws = infer.generate_response_batch(tokenizer, model, msgs, max_length=args.max_new_tokens, temperature=0.5, top_p=0.95, top_k=0)
            for r, raw in zip(batch, raws):
                try:
                    _, _, sql = infer.extract_sql_from_response(raw)
                except Exception:  # noqa: BLE001
                    sql, fails = " ", fails + 1
                sql = " ".join(sql.split())          # the official reader splits gold/pred lines on tabs/newlines
                recs.append({"question_id": r["question_id"], "db_id": r["db_id"], "pred_sql": sql, "raw": raw})
                official[str(len(official))] = f"{sql}\t----- bird -----\t{r['db_id']}"
            print(f"[{args.name} seed{seed}] {min(s + args.batch_size, len(rows))}/{len(rows)}", flush=True)
        (out / "pred_raw.json").write_text(json.dumps(recs, ensure_ascii=False))
        (out / "pred_official.json").write_text(json.dumps(official, ensure_ascii=False))
        print(f"[done] {args.name} seed{seed} parse_failures={fails}", flush=True)
        gc.collect(); torch.cuda.empty_cache()


if __name__ == "__main__":
    main()
