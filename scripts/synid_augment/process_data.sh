for SPLIT in train valid test; do
  python process_data.py \
    --model-path meta-llama/Llama-3.1-8B-Instruct \
    --model-type llama \
    --split "$SPLIT" \
    --data-dir benchmarks_2/spider_data/format_data/llama_synid_aug_v2_lora \
    --processed-data-dir processed_data/spider_data/synid_privileged_lora \
    --data-process-workers 8 \
    --max-length 2048 \
    --max-prompt-length 1536 \
    --t-max-length 2048 \
    --t-max-prompt-length 1800
done


for SPLIT in train valid test; do
  python process_data.py \
    --model-path meta-llama/Llama-3.1-8B-Instruct \
    --model-type llama \
    --split "$SPLIT" \
    --data-dir benchmarks_2/spider_data/format_data/llama_synid_aug_v2_lora_218 \
    --processed-data-dir processed_data/spider_data/synid_privileged_lora_218 \
    --data-process-workers 8 \
    --max-length 2048 \
    --max-prompt-length 1536 \
    --t-max-length 2048 \
    --t-max-prompt-length 1800
done

for SPLIT in train valid test; do
  python process_data.py \
    --model-path meta-llama/Llama-3.1-8B-Instruct \
    --model-type llama \
    --split "$SPLIT" \
    --data-dir benchmarks_2/spider_data/format_data/llama_synid_aug_v2_lora_436 \
    --processed-data-dir processed_data/spider_data/synid_privileged_lora_436 \
    --data-process-workers 8 \
    --max-length 2048 \
    --max-prompt-length 1536 \
    --t-max-length 2048 \
    --t-max-prompt-length 1800
done