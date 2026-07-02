# BIRD Qwen training scripts

These scripts mirror the Qwen Spider training setup for BIRD.

Defaults:

- Data: `processed_data/benchmarks/bird/qwen`
- `max_length`: `3001`
- `max_prompt_length`: `2912`
- Student: `Qwen/Qwen3-0.6B`
- Teacher: `Qwen/Qwen3-4B-Instruct-2507`

Prepare data:

```bash
bash scripts/bird_qwen/prepare_data.sh
```

Train SFT:

```bash
bash scripts/bird_qwen/sft/sft_qwen3_0.6b.sh
bash scripts/bird_qwen/sft/sft_qwen3_4b.sh
```

Train KD:

```bash
TEACHER_PEFT_PATH=/path/to/qwen3-4b-bird-lora \
bash scripts/bird_qwen/kd/train_0.6b_4b.sh
```

Useful overrides:

```bash
RUN_GPUS=0,1 BATCH_SIZE=1 GRAD_ACC=16 KD_TYPE=srkl bash scripts/bird_qwen/kd/train_0.6b_4b.sh
```
