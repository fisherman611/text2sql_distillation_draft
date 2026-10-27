#!/usr/bin/env bash
# usage: sweep_bs.sh <gpu> <bs> [bs ...]   seed42 spider_dk, SynID keywords_lora218 g01 ckpt4375; compares pred_sql to the HF original
set -uo pipefail
GPU="$1"; shift
W=/mnt/hungpv/baseline_ckpt_infer; cd $W
PY=/home/hungpv/projects/nothing/text2sql_distillation_draft/.venv/bin/python
export PYTHONPATH=$W TOKENIZERS_PARALLELISM=false CUDA_VISIBLE_DEVICES=$GPU
RUN=synid_g01_keywords_lora218; STEP=4375; bench=spider_dk
ORIG=$(ls $W/hf_synid_eval/results/infer/synid_ce_keywords_weight_lora_218/qwen_updated_2/$bench/seed42/*g01__ckpt4375*_sql_result.json)
for BS in "$@"; do
  OUT=$W/out_sweep/bs${BS}/$bench; mkdir -p $OUT
  name=${RUN}__ckpt${STEP}__test__${bench}
  t0=$(date +%s)
  INFER_SEEDS=42 $PY scripts/qwen_updated_2/synid_ce_keywords_weight_lora_218/infer_multiseed.py --benchmark $bench --split test --db full \
    --model Qwen/Qwen3-0.6B --ckpt_path $W/hf_baselines/qwen3/$RUN/$STEP --device cuda --batch-size $BS --max-length 663 \
    --output_path $OUT/${name}_sql_result.json --flush-every 100 > $OUT/infer.log 2>&1
  $PY - "$ORIG" "$OUT/seed42/${name}_sql_result.json" "$BS" "$(( $(date +%s)-t0 ))" <<'PYEOF' | tee -a $W/out_sweep/results.txt
import json, sys
o = json.load(open(sys.argv[1])); n = json.load(open(sys.argv[2]))
same = sum(a["pred_sql"] == b["pred_sql"] for a, b in zip(o, n))
print(f"bs={sys.argv[3]:>4s} rows={len(n)} identical_pred_sql={same}/{len(o)} time={sys.argv[4]}s")
PYEOF
done
