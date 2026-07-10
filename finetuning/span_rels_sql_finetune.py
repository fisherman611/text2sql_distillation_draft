import json
import math
import os
import random
import time

import deepspeed
import numpy as np
import torch
import torch.distributed as dist
import torch.nn as nn
import torch.nn.functional as F
from peft import PeftModel
from torch.nn.parallel import DistributedDataParallel as DDP
from torch.optim import AdamW
from torch.optim.lr_scheduler import CosineAnnealingLR
from torch.utils.data import DataLoader, DistributedSampler, Subset
from tqdm import tqdm
from transformers import (
    AutoConfig,
    AutoModelForCausalLM,
    AutoTokenizer,
    GenerationConfig,
    get_constant_schedule_with_warmup,
    get_cosine_schedule_with_warmup,
    get_polynomial_decay_schedule_with_warmup,
)

try:
    from ._bootstrap import configure_project_paths
except ImportError:
    from _bootstrap import configure_project_paths

configure_project_paths()

from data_utils.span_rels_sql_lm_datasets import SpanRelsSQLTrainDataset
from distillm import skewed_reverse_kl
from rouge_metric import compute_metrics
from src.span_rels_sql.span_rels_sql_args import get_span_rels_sql_args
from src.span_rels_sql.span_rels_sql_relation_loss import MAX_GROUNDING_LOSS, compute_span_rels_sql_loss
from src.span_rels_sql.span_rels_sql_spans import SQL_SPAN_TYPES, extract_span_rels_sql_records
from utils import (
    all_gather,
    get_model,
    get_optimizer_params,
    get_optimizer_params_peft,
    get_rank,
    get_tokenizer,
    initialize,
    print_args,
    print_rank,
    resolve_hf_path,
    save_rank,
)


torch.set_num_threads(4)


def get_teacher_model(args, device):
    teacher_model_path = resolve_hf_path(args.teacher_model_path)
    config = AutoConfig.from_pretrained(teacher_model_path)
    if args.model_parallel:
        raise NotImplementedError
    config.is_model_parallel = False
    try:
        model = AutoModelForCausalLM.from_pretrained(
            teacher_model_path,
            config=config,
            device_map={"": device},
            torch_dtype=torch.bfloat16,
        )
    except Exception:
        model = AutoModelForCausalLM.from_pretrained(
            teacher_model_path,
            config=config,
            device_map={"": device},
            torch_dtype=torch.float32,
        )
        model = model.half()

    if args.teacher_peft_path is not None:
        teacher_peft_path = resolve_hf_path(args.teacher_peft_path)
        model = PeftModel.from_pretrained(model, teacher_peft_path)
        model = model.merge_and_unload()
        print_rank("Merged teacher PEFT adapter.")

    if dist.get_rank() == 0:
        print(" > number of teacher parameters: {}".format(sum(p.nelement() for p in model.parameters())), flush=True)
    model.eval()
    return model


def get_optimizer(args, model):
    while isinstance(model, DDP):
        model = model.module
    if args.peft is not None:
        param_groups = get_optimizer_params_peft(args, model)
    else:
        param_groups = get_optimizer_params(args, model)
    optimizer = AdamW(param_groups, lr=args.lr, weight_decay=args.weight_decay)
    print_rank(f"Optimizer = {optimizer.__class__.__name__}")
    return optimizer


def _hidden_size(model):
    config = getattr(model, "config", None)
    if config is not None and hasattr(config, "hidden_size"):
        return config.hidden_size
    base_model = getattr(model, "base_model", None)
    config = getattr(base_model, "config", None)
    if config is not None and hasattr(config, "hidden_size"):
        return config.hidden_size
    raise ValueError("Cannot infer hidden_size for SpanRels-SQL projector.")


def attach_span_rels_sql_projector(model, teacher_model, device):
    if teacher_model is None:
        return model
    student_hidden_size = _hidden_size(model)
    teacher_hidden_size = _hidden_size(teacher_model)
    if student_hidden_size == teacher_hidden_size:
        model.span_rels_sql_projector = nn.Identity()
        print_rank(f"SpanRels-SQL projector: identity ({student_hidden_size})")
        return model
    dtype = next(model.parameters()).dtype
    model.span_rels_sql_projector = nn.Linear(student_hidden_size, teacher_hidden_size, bias=False).to(device=device, dtype=dtype)
    with torch.no_grad():
        model.span_rels_sql_projector.weight.normal_(mean=0.0, std=1e-3)
    print_rank(f"SpanRels-SQL projector: {student_hidden_size} -> {teacher_hidden_size}")
    return model


def get_learning_rate_scheduler(args, optimizer):
    if args.total_iters is None:
        args.total_iters = args.train_iters_per_epoch * args.epochs
    if args.lr_decay_style == "constant":
        return get_constant_schedule_with_warmup(optimizer, num_warmup_steps=args.warmup_iters)
    if args.lr_decay_style == "cosine":
        return CosineAnnealingLR(optimizer, T_max=args.total_iters, eta_min=args.lr_min)
    if args.lr_decay_style == "noam":
        return get_polynomial_decay_schedule_with_warmup(
            optimizer,
            num_warmup_steps=args.warmup_iters,
            num_training_steps=args.total_iters,
            power=0.5,
        )
    if args.lr_decay_style == "wrmup_cosine":
        return get_cosine_schedule_with_warmup(
            optimizer,
            num_warmup_steps=args.warmup_ratio * args.total_iters,
            num_training_steps=args.total_iters,
        )
    raise ValueError(f"lr_scheduler of type {args.lr_decay_style} is not supported yet.")


def setup_model_and_optimizer(args, ds_config, device, set_optim=True, teacher_model=None):
    model = get_model(args, device)
    model = attach_span_rels_sql_projector(model, teacher_model, device)
    if set_optim:
        optimizer = get_optimizer(args, model)
        lr_scheduler = get_learning_rate_scheduler(args, optimizer)
    else:
        optimizer, lr_scheduler = None, None
    model, optimizer, _, lr_scheduler = deepspeed.initialize(
        model=model,
        optimizer=optimizer,
        args=args,
        lr_scheduler=lr_scheduler,
        mpu=None,
        config_params=ds_config,
    )
    if torch.cuda.is_available():
        print_rank("Model mem\n", torch.cuda.memory_summary())
    return model, optimizer, lr_scheduler


def prepare_dataset(args, tokenizer):
    data = {}
    rng_sample = random.Random(args.seed)
    if args.do_train:
        train = SpanRelsSQLTrainDataset(args, tokenizer, args.data_dir, "train", args.train_num, args.train_ratio, rng_sample)
        dev = SpanRelsSQLTrainDataset(args, tokenizer, args.data_dir, "valid", args.dev_num, args.dev_ratio, rng_sample)
        if args.slice_data:
            train = Subset(train, range(min(100, len(train))))
            train.collate = train.dataset.collate
            train.move_to_device = train.dataset.move_to_device
            dev = Subset(dev, range(min(20, len(dev))))
            dev.collate = dev.dataset.collate
            dev.move_to_device = dev.dataset.move_to_device
            if hasattr(dev.dataset, "answers"):
                dev.answers = [dev.dataset.answers[i] for i in dev.indices]
        data["train"] = train
        data["dev"] = dev
    if args.do_train and args.lm_data_dir is not None:
        data["pt_train"] = SpanRelsSQLTrainDataset(args, tokenizer, args.lm_data_dir, "train", args.train_num, args.train_ratio, rng_sample)
    return data


def pt_loss(_args, model, model_batch, no_model_batch):
    outputs = model(**model_batch, return_dict=True, use_cache=False)
    logits = outputs.logits
    loss_fn = nn.CrossEntropyLoss(ignore_index=-100)
    return loss_fn(logits.reshape(-1, logits.size(-1)), no_model_batch["label"].view(-1))


def get_distil_loss(args, teacher_logits, no_model_batch, logits):
    if args.model_parallel:
        raise NotImplementedError
    if "srkl" in args.type:
        return skewed_reverse_kl(logits, teacher_logits, no_model_batch, lam=args.skew_alpha)
    raise NotImplementedError("span_rels_sql_finetune.py supports SRKL only.")


def _sync_cuda():
    if torch.cuda.is_available():
        torch.cuda.synchronize()


def _reduce_metric(value, world_size):
    reduced = value.detach().clone()
    dist.all_reduce(reduced, dist.ReduceOp.SUM)
    return reduced.item() / world_size


def _should_run_interval(global_step, step, interval, grad_accum_steps):
    if not interval:
        return False
    return global_step % interval == 0 and step % grad_accum_steps == 0


def build_generated_no_model_batch(tokenizer, args, model_batch, labels):
    loss_mask = (labels != -100).float()
    device = labels.device
    input_ids = model_batch["input_ids"].detach().cpu()
    attention_mask = model_batch["attention_mask"].detach().cpu().bool()
    labels_cpu = labels.detach().cpu()
    offset_mappings = []
    span_offsets = []
    for idx in range(input_ids.size(0)):
        valid_mask = attention_mask[idx]
        response_mask = labels_cpu[idx] != -100
        prompt_mask = valid_mask & ~response_mask
        prompt_ids = input_ids[idx][prompt_mask].tolist()
        response_ids = labels_cpu[idx][response_mask].tolist()
        prompt_text = tokenizer.decode(prompt_ids, skip_special_tokens=False, clean_up_tokenization_spaces=False)
        response_text = tokenizer.decode(response_ids, skip_special_tokens=True, clean_up_tokenization_spaces=False)
        full_text = prompt_text + response_text
        encoded = tokenizer(
            full_text,
            return_offsets_mapping=True,
            truncation=True,
            max_length=args.max_length,
            padding="max_length",
            add_special_tokens=False,
            return_tensors="pt",
        )
        offset_mappings.append(encoded["offset_mapping"])
        records = extract_span_rels_sql_records(
            full_text,
            response_text,
            include_types=getattr(args, "sql_span_types", None) or SQL_SPAN_TYPES,
            exclude_types=getattr(args, "exclude_sql_span_types", None),
        )
        span_offsets.append(sorted({(item["start"], item["end"]) for item in records}, key=lambda item: (item[0], item[1])))
    return {
        "label": labels,
        "loss_mask": loss_mask,
        "offset_mapping": torch.cat(offset_mappings, dim=0).to(device),
        "span_offsets": span_offsets,
    }


def _format_train_log(
    epoch,
    step,
    global_step,
    args,
    loss,
    ce_loss,
    srkl_loss,
    rel_loss,
    weighted_rel_loss,
    lr_scheduler,
    optimizer,
    elapsed_time,
    step_time,
):
    return (
        "train | epoch {:3d} | Iter: {:6d}/{:6d} | global iter: {:6d}/{:6d} | "
        "loss: {:.4f} | ce_loss: {:.4f} | srkl_loss: {:.4f} | rel_loss: {:.4f} | "
        "weighted_rel: {:.4f} | lr: {:.4e} | scale: {:10.4f} | micro time: {:.3f} | step time: {:.3f}"
    ).format(
        epoch,
        step,
        args.total_iters * args.gradient_accumulation_steps,
        global_step,
        args.total_iters,
        loss,
        ce_loss,
        srkl_loss,
        rel_loss,
        weighted_rel_loss,
        lr_scheduler.get_last_lr()[0],
        optimizer.cur_scale if hasattr(optimizer, "cur_scale") else 0,
        elapsed_time,
        step_time,
    )


def evaluate(args, tokenizer, model, dataset, split, epoch, device):
    dp_world_size = dist.get_world_size()
    dp_rank = dist.get_rank()
    loss_func = nn.CrossEntropyLoss()
    eos_token_id = [tokenizer.eos_token_id, 151643] if args.model_type == "qwen" else tokenizer.eos_token_id
    generation_config = GenerationConfig(
        do_sample=args.do_sample,
        top_p=args.top_p,
        top_k=args.top_k,
        temperature=args.temperature,
        repetition_penalty=args.repetition_penalty,
        max_length=args.max_length,
        eos_token_id=eos_token_id,
        pad_token_id=tokenizer.eos_token_id,
        return_dict_in_generate=True,
        output_scores=False,
    )
    sampler = DistributedSampler(dataset, shuffle=False, drop_last=False, rank=dp_rank, num_replicas=dp_world_size)
    dataloader = DataLoader(dataset, sampler=sampler, batch_size=args.eval_batch_size, num_workers=args.num_workers, collate_fn=dataset.collate)
    model.eval()
    all_loss = 0.0
    step = 0
    all_response_ids = []
    with torch.no_grad():
        for it, (model_batch, no_model_batch, gen_data, _, _) in enumerate(tqdm(dataloader, desc="Evaluating", disable=(dist.get_rank() != 0))):
            print_rank(f"{it}/{len(dataloader)}")
            dataset.move_to_device(model_batch, no_model_batch, gen_data, device)
            logits = model(**model_batch).logits
            loss = loss_func(logits.reshape(-1, logits.shape[-1]), no_model_batch["label"].view(-1))
            max_new_tokens = args.max_length - gen_data["input_ids"].size(1)
            if args.eval_gen:
                gen_out = model.generate(**gen_data, generation_config=generation_config, max_new_tokens=max_new_tokens)
                full_ids = F.pad(gen_out.sequences, (0, args.max_length - gen_out.sequences.shape[1]), value=tokenizer.pad_token_id)
                all_response_ids.append(full_ids[:, gen_data["input_ids"].size(1) :])
            dist.all_reduce(loss, dist.ReduceOp.SUM)
            all_loss += (loss / dp_world_size).item()
            step += 1
    if args.eval_gen and all_response_ids:
        all_response_ids = torch.cat(all_response_ids, dim=0)
        all_response_ids = all_gather(all_response_ids, dim=1, world_size=dp_world_size, group=None, op="stack")
        all_response_ids = all_response_ids.view(-1, all_response_ids.size(-1))
        responses = tokenizer.batch_decode(all_response_ids, skip_special_tokens=True)
    if get_rank() == 0:
        if args.eval_gen and all_response_ids is not None:
            references = dataset.answers
            res = compute_metrics(responses[: len(references)], references)
            eval_dir = os.path.join(args.save, "eval", str(epoch))
            os.makedirs(eval_dir, exist_ok=True)
            with open(os.path.join(eval_dir, "answers.jsonl"), "w", encoding="utf-8") as f:
                for resp in responses[: len(references)]:
                    f.write(json.dumps({"text": resp}, ensure_ascii=False) + "\n")
        else:
            res = {}
        avg_loss = all_loss / max(step, 1)
        log_str = f"{split} | avg_loss: {avg_loss} | {res}"
        print_rank(log_str)
        save_rank(log_str, os.path.join(args.save, "log.txt"))
    return all_loss / max(step, 1)


def finetune(args, tokenizer: AutoTokenizer, model, optimizer, lr_scheduler, dataset, device, teacher_model=None):
    print_rank("Start SpanRels-SQL SRKL fine-tuning")
    if args.model_parallel:
        raise NotImplementedError
    if not 0.0 <= args.kd_ratio <= 1.0:
        raise ValueError(f"KD ratio must be in [0, 1], got {args.kd_ratio}.")
    if args.span_rels_sql_weight < 0:
        raise ValueError("span_rels_sql_weight must be non-negative.")
    if args.student_gen:
        raise ValueError("SpanRels-SQL uses offline SRKL only; do not pass --student-gen or replay flags.")

    dp_world_size = dist.get_world_size()
    dp_rank = dist.get_rank()
    loss_func = nn.CrossEntropyLoss()
    sampler = DistributedSampler(dataset["train"], shuffle=True, drop_last=True, rank=dp_rank, num_replicas=dp_world_size)
    train_dataloader = DataLoader(
        dataset["train"],
        sampler=sampler,
        batch_size=args.batch_size,
        num_workers=args.num_workers,
        collate_fn=dataset["train"].collate,
    )
    if "pt_train" in dataset:
        pt_sampler = DistributedSampler(dataset["pt_train"], shuffle=True, drop_last=True, rank=dp_rank, num_replicas=dp_world_size)
        pt_train_dataloader = DataLoader(
            dataset["pt_train"],
            sampler=pt_sampler,
            batch_size=args.batch_size,
            num_workers=args.num_workers,
            collate_fn=dataset["pt_train"].collate,
        )
        pt_train_iter = iter(pt_train_dataloader)

    evaluate(args, tokenizer, model, dataset["dev"], "dev", 0, device)
    step, global_step = 1, 1
    total_loss = total_ce_loss = total_srkl_loss = total_rel_loss = total_weighted_rel_loss = total_time = 0.0

    for epoch in range(args.epochs):
        sampler.set_epoch(epoch)
        model.train()
        for _, (model_batch, no_model_batch, gen_data, _t_model_data, _t_no_model_data) in enumerate(train_dataloader):
            dataset["train"].move_to_device(model_batch, no_model_batch, gen_data, device)
            if args.lm_data_dir is not None:
                try:
                    pt_model_batch, pt_no_model_batch, pt_gen_data, _, _ = next(pt_train_iter)
                except Exception:
                    pt_train_iter = iter(pt_train_dataloader)
                    pt_model_batch, pt_no_model_batch, pt_gen_data, _, _ = next(pt_train_iter)
                dataset["pt_train"].move_to_device(pt_model_batch, pt_no_model_batch, pt_gen_data, device)

            _sync_cuda()
            st_time = time.time()

            outputs = model(**model_batch, use_cache=False, output_hidden_states=True)
            logits = outputs.logits
            lm_loss = loss_func(logits.float().reshape(-1, logits.shape[-1]), no_model_batch["label"].view(-1))
            srkl_loss = logits.new_tensor(0.0)
            rel_loss = logits.new_tensor(0.0)
            weighted_rel_loss = logits.new_tensor(0.0)
            if teacher_model is not None:
                with torch.no_grad():
                    teacher_model.eval()
                    teacher_outputs = teacher_model(**model_batch, output_hidden_states=True, use_cache=False)
                    teacher_logits = teacher_outputs.logits
                srkl_loss = get_distil_loss(args, teacher_logits, no_model_batch, logits)
                srkl_loss = torch.nan_to_num(srkl_loss, nan=0.0, posinf=100.0, neginf=0.0)
                rel_loss = compute_span_rels_sql_loss(
                    tokenizer,
                    model_batch["input_ids"],
                    model_batch["attention_mask"],
                    no_model_batch["label"],
                    outputs.hidden_states,
                    teacher_outputs.hidden_states,
                    no_model_batch.get("offset_mapping"),
                    no_model_batch.get("span_offsets"),
                    args,
                    student_projector=getattr(model.module, "span_rels_sql_projector", None),
                )
                weighted_rel_loss = (args.span_rels_sql_weight * rel_loss).clamp(min=0.0, max=MAX_GROUNDING_LOSS)
                distil_loss = srkl_loss + weighted_rel_loss
                loss = (1 - args.kd_ratio) * lm_loss + args.kd_ratio * distil_loss
            else:
                loss = lm_loss
            if args.lm_data_dir is not None:
                loss = loss + args.lm_coef * pt_loss(args, model, pt_model_batch, pt_no_model_batch)
            loss = torch.nan_to_num(loss, nan=0.0, posinf=100.0, neginf=0.0)

            model.backward(loss)
            model.step()

            global_loss = _reduce_metric(loss, dp_world_size)
            global_ce_loss = _reduce_metric(lm_loss, dp_world_size)
            global_srkl_loss = _reduce_metric(srkl_loss, dp_world_size) if teacher_model is not None else 0.0
            global_rel_loss = _reduce_metric(rel_loss, dp_world_size) if teacher_model is not None else 0.0
            global_weighted_rel_loss = _reduce_metric(weighted_rel_loss, dp_world_size) if teacher_model is not None else 0.0

            _sync_cuda()
            elapsed_time = time.time() - st_time
            total_loss += global_loss
            total_ce_loss += global_ce_loss
            total_srkl_loss += global_srkl_loss
            total_rel_loss += global_rel_loss
            total_weighted_rel_loss += global_weighted_rel_loss
            total_time += elapsed_time

            if _should_run_interval(global_step, step, args.log_interval, args.gradient_accumulation_steps):
                denom = args.log_interval * args.gradient_accumulation_steps
                log_str = _format_train_log(
                    epoch,
                    step,
                    global_step,
                    args,
                    total_loss / denom,
                    total_ce_loss / denom,
                    total_srkl_loss / denom,
                    total_rel_loss / denom,
                    total_weighted_rel_loss / denom,
                    lr_scheduler,
                    optimizer,
                    elapsed_time,
                    total_time / args.log_interval,
                )
                print_rank(log_str)
                save_rank(log_str, os.path.join(args.save, "log.txt"))
                total_loss = total_ce_loss = total_srkl_loss = total_rel_loss = total_weighted_rel_loss = total_time = 0.0

            if args.save and _should_run_interval(global_step, step, args.save_interval, args.gradient_accumulation_steps):
                save_dir_path = os.path.join(args.save, str(global_step))
                if dist.get_rank() == 0:
                    os.makedirs(save_dir_path, exist_ok=True)
                    print_rank(f"Model save to {save_dir_path}")
                    tokenizer.save_pretrained(save_dir_path)
                    model.module.save_pretrained(save_dir_path, safe_serialization=False)
                dist.barrier()

            if _should_run_interval(global_step, step, args.eval_interval, args.gradient_accumulation_steps):
                evaluate(args, tokenizer, model, dataset["dev"], "dev", epoch, device)
                model.train()

            step += 1
            if step % args.gradient_accumulation_steps == 0:
                global_step += 1
            if global_step > args.total_iters:
                break
    return model


def main():
    torch.backends.cudnn.enabled = False
    args = get_span_rels_sql_args()
    initialize(args)
    if dist.get_rank() == 0:
        print_args(args)
        os.makedirs(args.save, exist_ok=True)
        with open(os.path.join(args.save, "args.json"), "w", encoding="utf-8") as f:
            json.dump(vars(args), f, ensure_ascii=False, indent=2)

    device = torch.cuda.current_device()
    cur_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    save_rank("\n\n" + "=" * 30 + f" EXP at {cur_time} " + "=" * 30, os.path.join(args.save, "log.txt"))
    with open(args.deepspeed_config, encoding="utf-8") as f:
        ds_config = json.load(f)
    ds_config["gradient_accumulation_steps"] = args.gradient_accumulation_steps
    ds_config["train_micro_batch_size_per_gpu"] = args.batch_size
    ds_config["gradient_clipping"] = args.clip_grad
    ds_config["steps_per_print"] = 10000000
    if not args.do_train:
        ds_config["zero_optimization"]["stage"] = 0
    args.fp32 = not ds_config["fp16"]["enabled"]
    args.bf16 = "bf16" in ds_config and ds_config["bf16"]["enabled"]
    args.deepspeed_config = None

    tokenizer = get_tokenizer(args)
    dataset = prepare_dataset(args, tokenizer)
    dp_world_size = dist.get_world_size()
    if args.do_train:
        args.train_iters_per_epoch = int(len(dataset["train"]) / (args.batch_size * dp_world_size * args.gradient_accumulation_steps))
        print_rank("Train iters per epoch", args.train_iters_per_epoch)
        if args.total_iters is None:
            args.total_iters = args.train_iters_per_epoch * args.epochs
        if args.epochs is None:
            args.epochs = math.ceil(args.total_iters / args.train_iters_per_epoch)
        if args.save_interval == -1:
            args.save_interval = args.train_iters_per_epoch
        if args.eval_interval == -1:
            args.eval_interval = args.train_iters_per_epoch

    if args.teacher_model_type is None:
        args.teacher_model_type = args.model_type
    teacher_model = get_teacher_model(args, device) if args.teacher_model_path is not None else None
    model, optimizer, lr_scheduler = setup_model_and_optimizer(args, ds_config, device, set_optim=args.do_train, teacher_model=teacher_model)
    if args.do_train:
        finetune(args, tokenizer, model, optimizer, lr_scheduler, dataset, device, teacher_model=teacher_model)


if __name__ == "__main__":
    main()
