#!/usr/bin/env python3
"""Per-seed A100 vs Google-sheet (Multi-seeds run, Qwen3-0.6B block), EX/EM %, finished (.complete) benchmarks only."""
import json, sys, statistics as st
from pathlib import Path
sys.path.insert(0, "/mnt/hungpv/baseline_ckpt_infer")
from compare_to_sheet import parse_eval, BENCHES

OUT = Path("/mnt/hungpv/baseline_ckpt_infer/out")
SEEDS = [42, 10, 1234, 50, 100]          # sheet column order
RUNS = {
 "CSD": ("csd_train_0.6b_4b_kd0.6_spider_e5-bs2-lr0.0001-G8-N2-NN1-kd0.6-lora-16-64-0.1", 654),
 "DistillLLM": ("distillm_train_0.6b_4b_spider_adaptive-srkl_e5-bs2-lr0.0001-G8-N2-NN1-kd0.7-lora-16-64-0.1", 872)}
# sheet[row][bench][metric] = values in SEEDS order (42,10,1234,50,100)
S = {
 "CSD": {
  "spider_data":      {"EX": [67.2,66.8,67.5,67.2,67.3], "EM": [60.0,59.9,61.1,60.4,60.2]},
  "spider_syn":       {"EX": [53.5,54.1,52.9,53.3,53.4], "EM": [46.9,46.9,46.2,45.9,46.8]},
  "spider_realistic": {"EX": [54.7,54.7,54.9,54.7,54.5], "EM": [51.8,50.8,50.8,52.6,51.2]},
  "spider_dk":        {"EX": [55.5,56.3,54.6,55.3,54.8], "EM": [46.7,45.8,45.2,45.8,46.2]}},
 "DistillLLM": {
  "spider_data":      {"EX": [66.2,66.7,66.0,66.0,66.3], "EM": [58.8,58.8,58.9,58.5,59.1]},
  "spider_syn":       {"EX": [50.6,50.1,51.2,50.2,49.9], "EM": [43.5,43.3,43.7,43.6,43.4]},
  "spider_realistic": {"EX": [51.2,52.0,51.2,51.6,51.4], "EM": [48.0,49.8,48.6,50.0,48.4]},
  "spider_dk":        {"EX": [51.8,52.9,53.1,52.5,52.9], "EM": [44.7,45.6,46.2,45.0,45.4]}}}
allres = {}
for row,(run,step) in RUNS.items():
    print(f"== {row} ckpt{step}: ours / sheet (diff)   '-' = not finished")
    print(f"{'':20s}" + "".join(f"{'s'+str(s):>20s}" for s in SEEDS))
    diffs=[]; exact=0; n=0
    for b in BENCHES:
        for m in ("EX","EM"):
            cells=[]
            for i,s in enumerate(SEEDS):
                d = OUT/run/f"ckpt{step}"/b/f"seed{s}"
                r = parse_eval(d/"eval.log") if (d/".complete").exists() else None
                sv = S[row][b][m][i]
                if r is None: cells.append(f"{'- / '+format(sv,'.1f'):>20s}"); continue
                v = round(r[m],1); df = v-sv; diffs.append(abs(df)); n+=1; exact += abs(df)<0.05
                allres.setdefault(row,{}).setdefault(b,{}).setdefault(m,{})[s]=v
                cells.append(f"{format(v,'.1f')+' / '+format(sv,'.1f')+' ('+format(df,'+.1f')+')':>20s}")
            print(f"{b[7:] or 'spider':9s}{m:11s}" + "".join(cells))
    if n: print(f"  -> {n} cells done, exact match {exact}/{n}, mean|diff|={sum(diffs)/n:.2f}, max|diff|={max(diffs):.1f}\n")
    else: print("  -> nothing finished\n")
(OUT/"seed_vs_sheet.json").write_text(json.dumps(allres,indent=1)+"\n")
