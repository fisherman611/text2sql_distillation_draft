import json
import math
import os
import random
import time

import deepspeed
import torch
import torch.distributed as dist
from torch.nn.parallel import DistributedDataParallel as DDP
from torch.utils.data import DataLoader, DistributedSampler, Subset
from transformers import AutoTokenizer

try:
    from ._bootstrap import configure_project_paths
except ImportError:
    from _bootstrap import configure_project_paths

configure_project_paths()

from arguments import get_args
from data_utils.distillm2_datasets import DistillM2TrainDataset
from data_utils.lm_datasets import LMTrainDataset
from distillm import distillm2_loss
from finetuning.finetune import evaluate, get_teacher_model, setup_model_and_optimizer
from utils import initialize, print_args, print_rank, save_rank
from utils import get_tokenizer

torch.set_num_threads(4)


def prepare_dataset(args, tokenizer):
    rng_sample = random.Random(args.seed)
    if not args.slice_data:
        train = DistillM2TrainDataset(args, tokenizer, args.data_dir, "train", args.train_num, args.train_ratio, rng_sample)
        dev = LMTrainDataset(args, tokenizer, args.data_dir, "valid", args.dev_num, args.dev_ratio, rng_sample)
        return {"train": train, "dev": dev}

    full_train = DistillM2TrainDataset(args, tokenizer, args.data_dir, "train", args.train_num, args.train_ratio, rng_sample)
    train = Subset(full_train, range(min(100, len(full_train))))
    train.collate = full_train.collate
    train.move_to_device = full_train.move_to_device

    full_dev = LMTrainDataset(args, tokenizer, args.data_dir, "valid", args.dev_num, args.dev_ratio, rng_sample)
    dev = Subset(full_dev, range(min(20, len(full_dev))))
    dev.collate = full_dev.collate
    dev.move_to_device = full_dev.move_to_device
    if hasattr(full_dev, "answers"):
        dev.answers = [full_dev.answers[i] for i in dev.indices]
    return {"train": train, "dev": dev}


def _move_batch_to_device(batch, device):
    for key, value in batch.items():
        if isinstance(value, torch.Tensor):
            batch[key] = value.to(device)
    return batch


def _forward_logits(model, model_batch):
    return model(**model_batch, use_cache=False).logits


def _anchor_tensor(value, device):
    if value is None:
        return None
    return torch.tensor(float(value), dtype=torch.float32, device=device)


def finetune_distillm2(
    args,
    tokenizer: AutoTokenizer,
    model: deepspeed.DeepSpeedEngine,
    optimizer,
    lr_scheduler,
    dataset,
    device,
    teacher_model,
):
    if teacher_model is None:
        raise ValueError("DistiLLM-2 training requires --teacher-model-path.")
    if args.distillm2_use_gold_sft_loss:
        raise NotImplementedError("--distillm2-use-gold-sft-loss is reserved for a separate ablation.")

    print_rank("Start DistiLLM-2 paper fine-tuning")

    if args.model_parallel:
        raise NotImplementedError
    dp_world_size = dist.get_world_size()
    dp_rank = dist.get_rank()
    dp_group = None

    sampler = DistributedSampler(
        dataset["train"],
        shuffle=True,
        drop_last=True,
        rank=dp_rank,
        num_replicas=dp_world_size,
    )
    train_dataloader = DataLoader(
        dataset["train"],
        sampler=sampler,
        batch_size=args.batch_size,
        num_workers=args.num_workers,
        collate_fn=dataset["train"].collate,
    )

    step, global_step = 1, 1
    total_loss = 0.0
    total_skl_loss = 0.0
    total_srkl_loss = 0.0
    total_alpha_t = 0.0
    total_alpha_s = 0.0
    total_time = 0.0
    chosen_gap_anchor = _anchor_tensor(args.distillm2_chosen_gap_anchor, device)
    rejected_gap_anchor = _anchor_tensor(args.distillm2_rejected_gap_anchor, device)
    distillm2_total_epochs = args.distillm2_total_epochs or args.epochs

    evaluate(args, tokenizer, model, dataset["dev"], "dev", 0, device)

    for epoch in range(args.epochs):
        paper_epoch = args.distillm2_current_epoch + epoch
        use_adaptive_alpha = (
            args.distillm2_adaptive_alpha
            and paper_epoch > 1
            and chosen_gap_anchor is not None
            and rejected_gap_anchor is not None
        )
        epoch_chosen_gap_sum = 0.0
        epoch_rejected_gap_sum = 0.0
        epoch_gap_count = 0

        sampler.set_epoch(epoch)
        model.train()

        for micro_step_idx, (chosen_model_batch, chosen_no_model_batch, rejected_model_batch, rejected_no_model_batch, _) in enumerate(train_dataloader):
            _move_batch_to_device(chosen_model_batch, device)
            _move_batch_to_device(chosen_no_model_batch, device)
            _move_batch_to_device(rejected_model_batch, device)
            _move_batch_to_device(rejected_no_model_batch, device)

            torch.cuda.synchronize()
            st_time = time.time()

            chosen_student_logits = _forward_logits(model, chosen_model_batch)
            rejected_student_logits = _forward_logits(model, rejected_model_batch)

            with torch.no_grad():
                teacher_model.eval()
                chosen_teacher_logits = _forward_logits(teacher_model, chosen_model_batch)
                rejected_teacher_logits = _forward_logits(teacher_model, rejected_model_batch)

            epoch_global_step = micro_step_idx // args.gradient_accumulation_steps + 1
            loss_output = distillm2_loss(
                chosen_student_logits=chosen_student_logits,
                chosen_teacher_logits=chosen_teacher_logits,
                chosen_labels=chosen_no_model_batch["label"],
                rejected_student_logits=rejected_student_logits,
                rejected_teacher_logits=rejected_teacher_logits,
                rejected_labels=rejected_no_model_batch["label"],
                global_step=epoch_global_step,
                total_steps=max(1, args.train_iters_per_epoch),
                alpha_t_base=args.distillm2_alpha_t_base,
                alpha_s_base=args.distillm2_alpha_s_base,
                alpha_min=args.distillm2_alpha_min,
                beta_start=args.distillm2_beta_start,
                adaptive_alpha=use_adaptive_alpha,
                gradual_beta=args.distillm2_gradual_beta,
                current_epoch=paper_epoch,
                total_epochs=distillm2_total_epochs,
                chosen_gap_anchor=chosen_gap_anchor,
                rejected_gap_anchor=rejected_gap_anchor,
            )

            model.backward(loss_output.loss)
            model.step()

            log_tensors = {
                "loss": loss_output.loss.detach(),
                "skl": loss_output.skl_loss.detach(),
                "srkl": loss_output.srkl_loss.detach(),
                "alpha_t": loss_output.alpha_t_mean.detach(),
                "alpha_s": loss_output.alpha_s_mean.detach(),
                "chosen_gap": loss_output.chosen_gap_mean.detach(),
                "rejected_gap": loss_output.rejected_gap_mean.detach(),
            }
            for value in log_tensors.values():
                dist.all_reduce(value, dist.ReduceOp.SUM, group=dp_group)

            global_loss = log_tensors["loss"].item() / dp_world_size
            global_skl = log_tensors["skl"].item() / dp_world_size
            global_srkl = log_tensors["srkl"].item() / dp_world_size
            global_alpha_t = log_tensors["alpha_t"].item() / dp_world_size
            global_alpha_s = log_tensors["alpha_s"].item() / dp_world_size
            global_chosen_gap = log_tensors["chosen_gap"].item() / dp_world_size
            global_rejected_gap = log_tensors["rejected_gap"].item() / dp_world_size
            epoch_chosen_gap_sum += max(global_chosen_gap, 1e-5)
            epoch_rejected_gap_sum += max(global_rejected_gap, 1e-5)
            epoch_gap_count += 1

            torch.cuda.synchronize()
            elapsed_time = time.time() - st_time
            total_loss += global_loss
            total_skl_loss += global_skl
            total_srkl_loss += global_srkl
            total_alpha_t += global_alpha_t
            total_alpha_s += global_alpha_s
            total_time += elapsed_time

            def format_log(loss, skl, srkl, alpha_t, alpha_s, log_time):
                return (
                    "train | epoch {:3d} | Iter: {:6d}/{:6d} | global iter: {:6d}/{:6d} | "
                    "loss: {:.4f} | skl_loss: {:.4f} | srkl_loss: {:.4f} | "
                    "alpha_t_mean: {:.4f} | alpha_s_mean: {:.4f} | distillm2_beta: {:.4f} | "
                    "lr: {:.4e} | scale: {:10.4f} | micro time: {:.3f} | step time: {:.3f}"
                ).format(
                    paper_epoch,
                    step,
                    args.total_iters * args.gradient_accumulation_steps,
                    global_step,
                    args.total_iters,
                    loss,
                    skl,
                    srkl,
                    alpha_t,
                    alpha_s,
                    loss_output.beta,
                    lr_scheduler.get_last_lr()[0],
                    optimizer.cur_scale if hasattr(optimizer, "cur_scale") else 0,
                    elapsed_time,
                    log_time,
                )

            if args.mid_log_num > 0:
                mid_log_step = max(1, args.gradient_accumulation_steps // args.mid_log_num)
                if step % mid_log_step == 0:
                    print_rank(format_log(global_loss, global_skl, global_srkl, global_alpha_t, global_alpha_s, 0))

            if global_step % args.log_interval == 0 and step % args.gradient_accumulation_steps == 0:
                denom = args.log_interval * args.gradient_accumulation_steps
                log_str = format_log(
                    total_loss / denom,
                    total_skl_loss / denom,
                    total_srkl_loss / denom,
                    total_alpha_t / denom,
                    total_alpha_s / denom,
                    total_time / args.log_interval,
                )
                print_rank("*" * 100)
                print_rank(log_str)
                print_rank(args.save)
                print_rank("*" * 100)
                save_rank(log_str, os.path.join(args.save, "log.txt"))
                total_loss = total_skl_loss = total_srkl_loss = 0.0
                total_alpha_t = total_alpha_s = total_time = 0.0

            if args.save and args.save_interval and global_step % args.save_interval == 0 and step % args.gradient_accumulation_steps == 0:
                save_dir_path = os.path.join(args.save, str(global_step))
                if dist.get_rank() == 0:
                    os.makedirs(save_dir_path, exist_ok=True)
                    print_rank(f"Model save to {save_dir_path}")
                    tokenizer.save_pretrained(save_dir_path)
                    model.module.save_pretrained(save_dir_path, safe_serialization=False)
                dist.barrier()

            if args.eval_interval and global_step % args.eval_interval == 0 and step % args.gradient_accumulation_steps == 0:
                evaluate(args, tokenizer, model, dataset["dev"], "dev", epoch, device)
                model.train()

            step += 1
            if step % args.gradient_accumulation_steps == 0:
                global_step += 1
            if global_step > args.total_iters:
                break

        if epoch_gap_count > 0:
            chosen_gap_anchor = torch.tensor(epoch_chosen_gap_sum / epoch_gap_count, dtype=torch.float32, device=device)
            rejected_gap_anchor = torch.tensor(epoch_rejected_gap_sum / epoch_gap_count, dtype=torch.float32, device=device)

    if args.save and dist.get_rank() == 0 and chosen_gap_anchor is not None and rejected_gap_anchor is not None:
        anchor_path = os.path.join(args.save, "distillm2_anchors.json")
        with open(anchor_path, "w", encoding="utf-8") as f:
            json.dump(
                {
                    "chosen_gap_anchor": float(chosen_gap_anchor.detach().cpu().item()),
                    "rejected_gap_anchor": float(rejected_gap_anchor.detach().cpu().item()),
                },
                f,
                indent=2,
            )
        print_rank(f"DistiLLM-2 anchors saved to {anchor_path}")

    return model


def main():
    torch.backends.cudnn.enabled = False
    args = get_args()
    initialize(args)

    if dist.get_rank() == 0:
        print_args(args)
        with open(os.path.join(args.save, "args.json"), "w", encoding="utf-8") as f:
            json.dump(vars(args), f)

    device = torch.cuda.current_device()
    cur_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    save_rank("\n\n" + "=" * 30 + f" DISTILLM2 EXP at {cur_time} " + "=" * 30, os.path.join(args.save, "log.txt"))

    with open(args.deepspeed_config, encoding="utf-8") as f:
        ds_config = json.load(f)

    ds_config["gradient_accumulation_steps"] = args.gradient_accumulation_steps
    ds_config["train_micro_batch_size_per_gpu"] = args.batch_size
    ds_config["gradient_clipping"] = args.clip_grad
    ds_config["steps_per_print"] = 10000000

    args.fp32 = not ds_config["fp16"]["enabled"]
    args.bf16 = "bf16" in ds_config and ds_config["bf16"]["enabled"]
    args.deepspeed_config = None

    tokenizer = get_tokenizer(args)
    dataset = prepare_dataset(args, tokenizer)

    dp_world_size = dist.get_world_size()
    args.train_iters_per_epoch = int(
        len(dataset["train"]) / (args.batch_size * dp_world_size * args.gradient_accumulation_steps)
    )
    print_rank("Train iters per epoch", args.train_iters_per_epoch)
    if args.total_iters is None:
        args.total_iters = args.train_iters_per_epoch * args.epochs
    if args.epochs is None:
        args.epochs = math.ceil(args.total_iters / args.train_iters_per_epoch)
    print_rank("total_iters", args.total_iters)

    if args.save_interval == -1:
        args.save_interval = args.train_iters_per_epoch
    if args.eval_interval == -1:
        args.eval_interval = args.train_iters_per_epoch

    model, optimizer, lr_scheduler = setup_model_and_optimizer(args, ds_config, device, set_optim=args.do_train)
    if args.teacher_model_type is None:
        args.teacher_model_type = args.model_type
    teacher_model = get_teacher_model(args, device) if args.teacher_model_path is not None else None

    if args.do_train:
        finetune_distillm2(args, tokenizer, model, optimizer, lr_scheduler, dataset, device, teacher_model)


if __name__ == "__main__":
    main()
