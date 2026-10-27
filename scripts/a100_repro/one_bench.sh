#!/usr/bin/env bash
# usage: one_bench.sh <batch_size> <bench> <key> <maxlen> <expected_rows>   (SynID g01 ckpt4375, seed 42)
set -uo pipefail
BS="$1"; bench="$2"; key="$3"; maxlen="$4"; expected="$5"
W=/mnt/hungpv/baseline_ckpt_infer; cd $W
PY=/home/hungpv/projects/nothing/text2sql_distillation_draft/.venv/bin/python
export PYTHONPATH=$W TOKENIZERS_PARALLELISM=false
RUN=synid_g01_keywords_lora218; STEP=4375
OUT=$W/out_bs/bs${BS}/$bench; mkdir -p $OUT
name=${RUN}__ckpt${STEP}__test__${bench}
INFER_SEEDS=42 $PY scripts/qwen_updated_2/synid_ce_keywords_weight_lora_218/infer_multiseed.py --benchmark $bench --split test --db full \
  --model Qwen/Qwen3-0.6B --ckpt_path $W/hf_baselines/qwen3/$RUN/$STEP --device cuda --batch-size $BS --max-length $maxlen \
  --output_path $OUT/${name}_sql_result.json --flush-every 100 > $OUT/infer.log 2>&1
$PY scripts/format_spider_infer_results.py --input-dir $OUT/seed42 --output-dir $OUT/seed42/formatted_data > /dev/null 2>&1
pred=$(ls $OUT/seed42/formatted_data/*.pred.sql | head -1)
$PY src/evaluator/run_benchmark.py --benchmark $key --gold ${pred%.pred.sql}.gold.sql --pred $pred --etype all --exec_timeout 60 > $OUT/seed42/eval.log 2>&1
touch $OUT/DONE
