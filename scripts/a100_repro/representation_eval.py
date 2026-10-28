#!/usr/bin/env python3
"""Representation study: do execution-equivalent but syntactically different SQL map to nearby e^{S-R}?

For every selected Spider-test sample (select_pairs.py) and every model m (SynID-SQL / CSD / DistillLLM):
  e_ref  = e^{S-R}(gold)                 e_refm = e^{S-R}(prediction of m)       (same prompt, teacher-forced)
  cos    = CosSim(e_ref, e_refm)
  negatives = other gold queries of the same database with a DIFFERENT execution result, placed under the same prompt
              (5 lexically hardest by SequenceMatcher + up to 20 random);
  margin = cos - max_neg CosSim(e_ref, e_neg)          (also vs. mean of negatives, and vs. the 5 hard ones)
e^{S-R} is extracted exactly as in training: decoder-layer hook (layer 27 = SynID's student layer, and LM-head input -1),
response mask of src/synid_sql/losses.py, Syntax-Guided pooling (tau_p=5, mu=2) plus plain mean pooling as a control.

Run on the A100 from the project root:  python scripts/a100_repro/representation_eval.py --pairs out_repr/selected_pairs.csv
"""
import argparse
import csv
import json
import os
import random
import sys
from difflib import SequenceMatcher
from pathlib import Path

import numpy as np
import torch

PROJECT = "/mnt/hungpv/projects/nothing/text2sql_distillation_draft"   # code used to train the checkpoints
sys.path.insert(0, PROJECT)
sys.path.insert(0, str(Path.cwd() / "src" / "evaluator"))
from src.synid_sql.hidden_states import SelectedHiddenStateCapture  # noqa: E402
from src.synid_sql.losses import _pool_hidden, _response_hidden_mask, _syntax_weights  # noqa: E402
from exec_eval import eval_exec_match  # noqa: E402

W = Path.cwd()
CKPT = W / "hf_baselines/qwen3"
MODELS = {
    "SynID-SQL": ("synid", CKPT / "synid_g01_keywords_lora218/4375"),
    "CSD": ("csd", CKPT / "csd_train_0.6b_4b_kd0.6_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.6-lora-16-64-0.1/654"),
    "DistillLLM": ("distillm", CKPT / "distillm_train_0.6b_4b_spider_adaptive-srkl_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1/872"),
}
LAYERS = [27, -1]          # decoder layer 27 (SynID alignment layer) and the LM-head input
POOLS = ["sc", "mean"]     # SG pooling (tau_p=5, mu=2) and plain mean
TAU_P, MU = 5.0, 2.0


def norm(s):
    return " ".join(s.strip().rstrip(";").split())


def sim(a, b):
    return SequenceMatcher(None, norm(a).casefold(), norm(b).casefold()).ratio()


# ---------------------------------------------------------------- negatives
def build_negatives(rows, gold_pool, db_dir, n_hard=5, n_rand=20, seed=0):
    rng = random.Random(seed)
    by_db = {}
    for g, db in gold_pool:
        by_db.setdefault(db, set()).add(g)
    out = {}
    for r in rows:
        db, gold = r["db"], r["gold"]
        path = f"{db_dir}/{db}/{db}.sqlite"
        cands = []
        for c in sorted(by_db[db]):
            if norm(c).casefold() == norm(gold).casefold():
                continue
            try:
                equivalent = int(eval_exec_match(db=path, p_str=c, g_str=gold, plug_value=False, keep_distinct=False,
                                                 progress_bar_for_each_datapoint=False, timeout=60))
            except Exception:  # noqa: BLE001
                continue
            if not equivalent:                      # keep only semantically different queries
                cands.append(c)
        cands.sort(key=lambda c: (-sim(gold, c), c))
        hard = cands[:n_hard]
        rest = cands[n_hard:]
        rnd = rng.sample(rest, min(n_rand, len(rest)))
        out[r["idx"]] = {"hard": hard, "rand": rnd}
    return out


# ---------------------------------------------------------------- embeddings
class Embedder:
    def __init__(self, tokenizer, model, device):
        self.tok, self.model, self.device = tokenizer, model, device
        self.cap = SelectedHiddenStateCapture(model, LAYERS)

    def prompt_text(self, system, user):
        msgs = [{"role": "system", "content": system}, {"role": "user", "content": user}]
        try:
            return self.tok.apply_chat_template(msgs, tokenize=False, add_generation_prompt=True, enable_thinking=False)
        except TypeError:
            return self.tok.apply_chat_template(msgs, tokenize=False, add_generation_prompt=True)

    def encode(self, prompt, sql):
        response = json.dumps({"sql": sql})     # same {"sql": ...} response format as training
        p_ids = self.tok.encode(prompt, add_special_tokens=False)
        full = self.tok.encode(prompt + response, add_special_tokens=False) + [self.tok.eos_token_id]
        return full, len(p_ids)

    @torch.no_grad()
    def embed(self, items, bs=16):
        """items: list of (prompt, sql). Returns {(layer, pool): array[len(items), d]}."""
        res = {(l, p): [] for l in LAYERS for p in POOLS}
        for s in range(0, len(items), bs):
            enc = [self.encode(p, q) for p, q in items[s:s + bs]]
            L = max(len(f) for f, _ in enc) - 1
            ids = torch.full((len(enc), L), self.tok.eos_token_id, dtype=torch.long)
            lab = torch.full((len(enc), L), -100, dtype=torch.long)
            att = torch.zeros((len(enc), L), dtype=torch.long)
            for i, (f, src) in enumerate(enc):      # same construction as LMTrainDataset
                n = len(f) - 1
                ids[i, :n] = torch.tensor(f[:-1]); lab[i, :n] = torch.tensor(f[1:]); lab[i, :src - 1] = -100; att[i, :n] = 1
            ids, lab, att = ids.to(self.device), lab.to(self.device), att.to(self.device)
            self.model(input_ids=ids, attention_mask=att, use_cache=False)
            hidden = self.cap.pop_all()
            resp = _response_hidden_mask(lab, att)
            syn = _syntax_weights(ids, att.bool(), self.tok, MU, True, att.bool())
            for l, h in zip(LAYERS, hidden):
                for p in POOLS:
                    e = _pool_hidden(h, ids, resp, self.tok, p, TAU_P, MU, True, att.bool(), syn if p == "sc" else None)
                    res[(l, p)].append(e.float().cpu().numpy())
        return {k: np.concatenate(v) for k, v in res.items()}


def load_model(adapter, device):
    from peft import PeftModel
    from transformers import AutoModelForCausalLM, AutoTokenizer
    tok = AutoTokenizer.from_pretrained("Qwen/Qwen3-0.6B")
    base = AutoModelForCausalLM.from_pretrained("Qwen/Qwen3-0.6B", torch_dtype=torch.float32).to(device)
    model = PeftModel.from_pretrained(base, str(adapter)).merge_and_unload().eval()
    return tok, model


# ---------------------------------------------------------------- stats
def cosm(a, b):
    a = a / np.linalg.norm(a, axis=-1, keepdims=True).clip(1e-12)
    b = b / np.linalg.norm(b, axis=-1, keepdims=True).clip(1e-12)
    return (a * b).sum(-1)


def boot_ci(x, n=10000, seed=0):
    rng = np.random.default_rng(seed)
    idx = rng.integers(0, len(x), (n, len(x)))
    m = x[idx].mean(1)
    return float(np.percentile(m, 2.5)), float(np.percentile(m, 97.5))


def perm_p(d, n=20000, seed=0):
    """Paired sign-flip permutation test on the mean difference."""
    rng = np.random.default_rng(seed)
    signs = rng.choice([-1, 1], (n, len(d)))
    return float((np.abs((signs * d).mean(1)) >= abs(d.mean()) - 1e-12).mean())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mode", choices=["test", "train"], default="test",
                    help="test: (gold, each model's own EX=1 prediction); train: fixed (original, generated) pairs for all models")
    ap.add_argument("--pairs", default="out_repr/selected_pairs.csv")
    ap.add_argument("--format-data", default=None, help="format_data jsonl with system_prompt/user_prompt (default depends on --mode)")
    ap.add_argument("--train-merged", default="/mnt/hungpv/projects/nothing/text2sql_distillation_draft/datasets/train/spider_data/synid_aug_v2_lora/final_merged.jsonl")
    ap.add_argument("--out", default="out_repr")
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args()
    device = "cuda" if torch.cuda.is_available() else "cpu"

    pairs = list(csv.DictReader(open(args.pairs, encoding="utf-8-sig")))[: args.limit]
    rows = []
    if args.mode == "test":
        fmt = [json.loads(l) for l in open(args.format_data or "benchmarks_2/spider_data/format_data/test.jsonl")]
        for p in pairs:
            i = int(p["idx"]); f = fmt[i]
            assert p["question"].strip() in f["user_prompt"], f"prompt/question mismatch at idx {i}"
            rows.append(dict(idx=i, db=p["db_id"], gold=p["gold_sql"], system=f["system_prompt"], user=f["user_prompt"],
                             preds={"SynID-SQL": p["synid_pred"], "CSD": p["csd_pred"], "DistillLLM": p["distillm_pred"]}))
        gold_pool = [l.split("\t") for l in open("benchmarks/spider_data/test_gold.sql").read().split("\n") if l.strip()]
        db_dir = "benchmarks/spider_data/test_database"
    else:
        fmt = [json.loads(l) for l in open(args.format_data or "benchmarks_2/spider_data/format_data/train.jsonl")]
        merged = [json.loads(l) for l in open(args.train_merged)]
        for p in pairs:
            i = int(p["id"]); f = fmt[i]
            assert p["question"].strip() in f["user_prompt"], f"prompt/question mismatch at id {i}"
            rows.append(dict(idx=i, db=p["db_id"], gold=p["original_sql"], system=f["system_prompt"], user=f["user_prompt"],
                             preds={m: p["generated_sql"] for m in MODELS}))    # the same (y_ref, y_refm) pair for every model
        gold_pool = [(r["gold_sql"], r["db_id"]) for r in merged]
        db_dir = "benchmarks/spider_data/database"
    negs = build_negatives(rows, gold_pool, db_dir)
    print("negatives per sample: hard", np.mean([len(v["hard"]) for v in negs.values()]), "rand", np.mean([len(v["rand"]) for v in negs.values()]), flush=True)

    results = {}   # (model, layer, pool) -> dict of per-sample arrays
    for name, (_, adapter) in MODELS.items():
        tok, model = load_model(adapter, device)
        emb = Embedder(tok, model, device)
        items, meta = [], []
        for r in rows:
            prompt = emb.prompt_text(r["system"], r["user"])
            seq = [("gold", r["gold"]), ("pred", r["preds"][name])] + [("neg_hard", q) for q in negs[r["idx"]]["hard"]] + [("neg_rand", q) for q in negs[r["idx"]]["rand"]]
            for kind, q in seq:
                items.append((prompt, q)); meta.append((r["idx"], kind))
        E = emb.embed(items)
        for key, mat in E.items():
            mu = mat.mean(0, keepdims=True)
            for centered in (False, True):
                m = mat - mu if centered else mat
                per = {k: [] for k in ("cos", "margin_max", "margin_hard", "margin_mean", "pos_gt_all_neg")}
                for r in rows:
                    sel = [j for j, (i, _) in enumerate(meta) if i == r["idx"]]
                    kinds = [meta[j][1] for j in sel]
                    g = m[sel[kinds.index("gold")]]; pr = m[sel[kinds.index("pred")]]
                    ng = np.stack([m[j] for j, k in zip(sel, kinds) if k.startswith("neg")])
                    nh = np.stack([m[j] for j, k in zip(sel, kinds) if k == "neg_hard"]) if "neg_hard" in kinds else None
                    c = float(cosm(g, pr)); cn = cosm(g[None], ng)
                    per["cos"].append(c); per["margin_max"].append(c - float(cn.max())); per["margin_mean"].append(c - float(cn.mean()))
                    per["margin_hard"].append(c - float(cosm(g[None], nh).max()) if nh is not None else float("nan"))
                    per["pos_gt_all_neg"].append(float(c > cn.max()))
                results[(name, key[0], key[1], centered)] = {k: np.array(v) for k, v in per.items()}
        emb.cap.close(); del model; torch.cuda.empty_cache()
        print("done", name, flush=True)

    out = Path(args.out); out.mkdir(exist_ok=True, parents=True)
    # per-sample long csv
    with open(out / "per_sample.csv", "w", newline="", encoding="utf-8-sig") as f:
        w = csv.writer(f); w.writerow(["model", "layer", "pool", "centered", "idx", "cos", "margin_max", "margin_hard", "margin_mean", "pos_gt_all_neg"])
        for (mname, layer, pool, cen), per in results.items():
            for k, r in enumerate(rows):
                w.writerow([mname, layer, pool, int(cen), r["idx"]] + [round(float(per[x][k]), 5) for x in ("cos", "margin_max", "margin_hard", "margin_mean", "pos_gt_all_neg")])
    summary = {}
    for (mname, layer, pool, cen), per in results.items():
        for metric, v in per.items():
            v = v[~np.isnan(v)]
            lo, hi = boot_ci(v)
            summary.setdefault(f"layer={layer}|pool={pool}|centered={int(cen)}", {}).setdefault(metric, {})[mname] = {"mean": float(v.mean()), "ci95": [lo, hi], "n": int(len(v))}
    diffs = {}
    for (mname, layer, pool, cen), per in results.items():
        if mname != "SynID-SQL":
            continue
        for other in ("CSD", "DistillLLM"):
            for metric in per:
                d = per[metric] - results[(other, layer, pool, cen)][metric]
                d = d[~np.isnan(d)]
                lo, hi = boot_ci(d)
                diffs.setdefault(f"layer={layer}|pool={pool}|centered={int(cen)}", {}).setdefault(metric, {})[f"SynID-SQL minus {other}"] = {"mean": float(d.mean()), "ci95": [lo, hi], "perm_p": perm_p(d)}
    json.dump({"summary": summary, "paired_differences": diffs}, open(out / "summary.json", "w"), indent=1)

    lines = ["| setting | metric | SynID-SQL | CSD | DistillLLM |", "|---|---|---|---|---|"]
    for setting, mets in summary.items():
        for metric in ("cos", "margin_max", "margin_hard", "pos_gt_all_neg"):
            cells = [f"{mets[metric][m]['mean']:.4f} [{mets[metric][m]['ci95'][0]:.4f}, {mets[metric][m]['ci95'][1]:.4f}]" for m in ("SynID-SQL", "CSD", "DistillLLM")]
            lines.append(f"| {setting} | {metric} | " + " | ".join(cells) + " |")
    (out / "summary.md").write_text("\n".join(lines) + "\n")
    print("\n".join(l for l in lines if "centered=0" in l or l.startswith("|--") or l.startswith("| setting")))


if __name__ == "__main__":
    main()
