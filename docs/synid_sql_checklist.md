# SynID-SQL Implementation Checklist

## Scope

Implement SynID-SQL for both Spider and BIRD. The first evaluation phase trains on existing gold data, so start with the loss path and reuse the current processed datasets. Augmentation and privileged teacher prompts are later phases.

## Phase 1: Loss-Only on Existing Gold Data

- [x] Add SynID-SQL arguments in `arguments.py`.
  - [x] `--synid-alpha`, default `1.0`, semantic alignment loss weight.
  - [x] `--synid-beta`, default `1.0`, geometry-preserving loss weight.
  - [x] `--synid-pool-tau`, default `0.1`, SC pooling temperature from the proposal.
  - [x] `--synid-contrastive-tau`, default `0.1`, InfoNCE temperature, matched to the proposal temperature unless tuned later.
  - [x] `--synid-syntax-lambda`, default `2.0`, SQL/schema token upweighting from the proposal.
  - [x] `--synid-pooling`, default `sc`, choices `sc`, `mean`, for pooling ablation.
  - [x] `--synid-use-syntax-weights`, default `True`, enables SQL/schema token upweighting. Set `false` for ablation.
  - [x] `--synid-use-con1`, default `True`, enables semantic alignment loss. Set `false` for ablation.
  - [x] `--synid-use-con2`, default `True`, enables geometry-preserving loss. Set `false` for ablation.
  - [x] `--synid-kd-loss`, default `fkl`, choices `fkl`, `rkl`, `sfkl`, `srkl`, `csd`, selects response-token KD loss.
  - [x] `--synid-kd-temperature`, default `1.0`, distillation temperature for response-token FKL.
  - [x] `--synid-jaccard-gamma`, default `0.6`, later used by augmentation filtering.
  - [x] Reuse `--kd-ratio`, default `1.0` in SynID scripts, to interpolate CE and KD while keeping CE disabled by default.

- [x] Add `src/synid_sql/losses.py`.
  - [x] Implement response-token compaction from `label != -100`.
  - [x] Implement KD variants on compacted student/teacher response logits: `fkl`, `rkl`, `sfkl`, `srkl`, `csd`. `fkl` and `sfkl` use full KL values; `csd` matches the existing SS-mode surrogate implementation.
  - [x] Implement SQL keyword and schema-token weight construction.
  - [x] Implement SC pooling over hidden states.
  - [x] Implement in-batch InfoNCE.
  - [x] Implement `synid_loss(...)` returning total loss and metric parts.

- [x] Add `finetuning/synid_sql_finetune.py`.
  - [x] Start from the current `finetuning/finetune.py` training flow.
  - [x] Import SynID loss helpers.
  - [x] Capture only the final hidden state entering each LM head, avoiding the full hidden-state stack.
  - [x] Forward teacher on the same current `model_batch` for phase 1.
  - [x] Compute `(1 - kd_ratio) * L_CE + kd_ratio * (L_KD + alpha * L_con1 + beta * L_con2)`.
  - [x] Log `ce_loss`, `kd_loss`, `con1_loss`, `con2_loss` separately.
  - [x] Leave existing `finetuning/finetune.py` and FKL/RKL/SFKL/SRKL behavior unchanged.

- [x] Add one Spider train script.
  - [x] `scripts/qwen/synid/train_0.6b_4b.sh`
  - [x] Use the Spider privileged processed data path when running current SynID scripts.
  - [x] Set `--type synid`.
  - [x] Use teacher model and teacher PEFT path like existing KD scripts.

- [x] Add one BIRD train script.
  - [x] `scripts/bird_qwen/synid/train_0.6b_4b.sh`
  - [x] Reuse existing BIRD processed data path.
  - [x] Set `--type synid`.
  - [x] Use teacher model and teacher PEFT path like existing BIRD KD scripts.

- [ ] Validate phase 1.
  - [ ] Run a tiny sliced train on Spider with `--slice-data`.
  - [ ] Run a tiny sliced train on BIRD with `--slice-data`.
  - [x] Add regression tests for response alignment, SC masks/anchors, syntax weights, KD variants, and final-hidden-state capture.
  - [x] Verify no shape mismatch when pooling hidden states.
  - [x] Verify loss parts are finite.
  - [x] Verify the SynID Spider and BIRD shell scripts pass `bash -n`.
  - [ ] Verify existing KD scripts still parse and train.

## Phase 2: Privileged Teacher Prompt

- [x] Add `scripts/format_spider_synid_jsonl.py`.
  - [x] Preserve normal student `system_prompt/user_prompt` in the existing student train JSONL.
  - [x] Add `t_system_prompt/t_user_prompt` containing `Y_gold`.
  - [x] Keep `response=Y_gold` for no-augmentation privileged distillation.
  - [x] Validate student/teacher row count and response alignment.

- [x] Add `scripts/format_bird_synid_jsonl.py`.
  - [x] Preserve normal student `system_prompt/user_prompt` in the existing student train JSONL.
  - [x] Add `t_system_prompt/t_user_prompt` containing `Y_gold`.
  - [x] Keep `response=Y_gold` for no-augmentation privileged distillation.
  - [x] Validate student/teacher row count and response alignment.

- [x] Update `process_data.py`.
  - [x] Merge `teacher_train.jsonl` into train processing when present.
  - [x] Generate `teacher_train_0.bin` and `teacher_train_0.idx` from `t_system_prompt/t_user_prompt`.
  - [x] Validate teacher/student response alignment before processing.

- [x] Update `data_utils/lm_datasets.py`.
  - [x] Load `teacher_train_0` for SynID training when present.
  - [x] Return `t_model_data/t_no_model_data` from the training collate path.

- [x] Update `finetuning/synid_sql_finetune.py`.
  - [x] Require `teacher_train_0.bin/.idx` for current privileged SynID training.
  - [x] Move `t_model_data/t_no_model_data` to device.
  - [x] Use `t_model_data` for teacher forward when present.
  - [x] Align response logits between student and teacher by label mask, not absolute positions.
  - [x] Capture final hidden states and project student embeddings when hidden sizes differ.

## Phase 3: Execution-Guided Augmentation

- [x] Add Spider augmentation generation script.
  - [x] Generate teacher SQL candidates with privileged prompt.
  - [x] Parse strict JSON SQL output with fallback handling for fenced/bare SQL responses.
  - [x] Support three-loop repair over failed candidates.
  - [ ] Run full Spider augmentation generation.

- [x] Add BIRD augmentation generation script.
  - [x] Generate teacher SQL candidates with privileged prompt.
  - [x] Parse strict JSON SQL output with fallback handling for fenced/bare SQL responses.
  - [x] Support three-loop repair over failed candidates.
  - [ ] Run full BIRD augmentation generation.

- [x] Add shared SQL augmentation filter.
  - [x] Execute gold and candidate SQL against the corresponding database.
  - [x] Keep only execution-equivalent candidates.
  - [x] Apply Jaccard token threshold.
  - [x] Save rejection reasons for audit.
  - [x] Save per-loop accepted/rejected/repair queues and final summary.

- [x] Add augmented SynID JSONL builder for Spider.
  - [x] Set `response=Y_aug`.
  - [x] Keep privileged teacher prompt with `Y_gold`.
  - [x] Keep student prompt unchanged.
  - [x] Optionally copy dev/test JSONL from the existing formatted Spider data.
  - [ ] Process generated augmented JSONL into binary train data.

- [x] Add augmented SynID JSONL builder for BIRD.
  - [x] Set `response=Y_aug`.
  - [x] Keep privileged teacher prompt with `Y_gold`.
  - [x] Keep student prompt unchanged with BIRD evidence.
  - [x] Optionally copy val/test JSONL from the existing formatted BIRD data.
  - [ ] Process generated augmented JSONL into binary train data.

## Phase 4: Ablations

- [ ] SynID without augmentation.
- [ ] SynID with augmentation.
- [ ] SynID without `L_con1`.
- [ ] SynID without `L_con2`.
- [ ] Mean pooling instead of SC pooling.
- [ ] SC pooling without syntax weights.

## Phase 5: Evaluation

- [ ] Infer Spider checkpoints.
- [ ] Evaluate Spider dev/test-style variants as applicable.
- [ ] Infer BIRD checkpoints.
- [ ] Evaluate BIRD EX and optionally VES.
- [ ] Record comparable tags and checkpoint steps.
