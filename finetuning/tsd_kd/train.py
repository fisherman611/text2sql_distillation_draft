import argparse
import os
import sys
from pathlib import Path
from typing import Any

import torch
from datasets import Dataset, DatasetDict, load_dataset
from huggingface_hub import login
from peft import PeftModel
from transformers import AutoModelForCausalLM, AutoTokenizer
from trl import GKDConfig

try:
    from finetuning._bootstrap import configure_project_paths
except ModuleNotFoundError:
    sys.path.append(str(Path(__file__).resolve().parents[2]))
    from finetuning._bootstrap import configure_project_paths

configure_project_paths()

from utils import resolve_hf_path  # noqa: E402

try:
    from .DistillTrainer import DistillTrainer
except ImportError:
    from DistillTrainer import DistillTrainer


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Train TSD-KD with TRL/Accelerate.")

    parser.add_argument("--student-model-path", required=True)
    parser.add_argument("--teacher-model-path", required=True)
    parser.add_argument("--teacher-peft-path", required=True)
    parser.add_argument("--model-family", choices=["auto", "qwen", "llama"], default="auto")
    parser.add_argument("--output-dir", required=True)

    parser.add_argument("--dataset-name", default=None)
    parser.add_argument("--dataset-config", default=None)
    parser.add_argument("--dataset-split", default="train")
    parser.add_argument("--train-file", default=None)
    parser.add_argument("--eval-file", default=None)
    parser.add_argument("--test-size", type=float, default=0.01)
    parser.add_argument("--max-samples", type=int, default=None)

    parser.add_argument("--beta", type=float, default=0.9)
    parser.add_argument("--lambda", dest="lmbda", type=float, default=1.0)
    parser.add_argument("--threshold", type=float, default=0.1)
    parser.add_argument("--indirect-kd-alpha", type=float, default=0.1)
    parser.add_argument("--temperature", type=float, default=1.0)

    parser.add_argument("--max-length", type=int, default=1612)
    parser.add_argument("--max-prompt-length", type=int, default=1479)
    parser.add_argument("--max-new-tokens", type=int, default=133)
    parser.add_argument("--num-train-epochs", type=float, default=5)
    parser.add_argument("--per-device-train-batch-size", type=int, default=2)
    parser.add_argument("--per-device-eval-batch-size", type=int, default=2)
    parser.add_argument("--gradient-accumulation-steps", type=int, default=8)
    parser.add_argument("--learning-rate", type=float, default=1e-4)
    parser.add_argument("--warmup-ratio", type=float, default=0.1)
    parser.add_argument("--weight-decay", type=float, default=1e-2)
    parser.add_argument("--logging-steps", type=int, default=10)
    parser.add_argument("--save-total-limit", type=int, default=3)
    parser.add_argument("--seed", type=int, default=42)

    parser.add_argument("--gradient-checkpointing", action="store_true")
    parser.add_argument("--bf16", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--fp16", action="store_true")
    parser.add_argument("--torch-dtype", default="bfloat16", choices=["auto", "float32", "float16", "bfloat16"])
    parser.add_argument("--attn-implementation", default="sdpa")
    parser.add_argument("--trust-remote-code", action="store_true", default=True)
    parser.add_argument("--report-to", default="none")
    parser.add_argument("--run-name", default=None)

    return parser.parse_args()


def maybe_login_to_hf() -> None:
    token = os.getenv("HF_READ_TOKEN") or os.getenv("HF_TOKEN")
    if token:
        login(token=token, add_to_git_credential=False)


def infer_model_family(args: argparse.Namespace) -> str:
    if args.model_family != "auto":
        return args.model_family
    model_text = f"{args.student_model_path} {args.teacher_model_path}".lower()
    if "qwen" in model_text:
        return "qwen"
    if "llama" in model_text:
        return "llama"
    return "auto"


def get_torch_dtype(name: str):
    if name == "auto":
        return "auto"
    return {
        "float32": torch.float32,
        "float16": torch.float16,
        "bfloat16": torch.bfloat16,
    }[name]


def configure_tokenizer(tokenizer, model_family: str):
    tokenizer.padding_side = "left"
    if model_family == "qwen":
        im_end_id = tokenizer.convert_tokens_to_ids("<|im_end|>")
        if isinstance(im_end_id, int) and im_end_id >= 0:
            tokenizer.eos_token = "<|im_end|>"
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token
    tokenizer.pad_token_id = tokenizer.eos_token_id
    return tokenizer


def configure_generation_config(model, tokenizer):
    eos_token_id = model.generation_config.eos_token_id
    if eos_token_id is None:
        eos_ids = []
    elif isinstance(eos_token_id, list):
        eos_ids = eos_token_id
    else:
        eos_ids = [eos_token_id]

    if tokenizer.eos_token_id is not None and tokenizer.eos_token_id not in eos_ids:
        eos_ids.append(tokenizer.eos_token_id)

    if len(eos_ids) == 1:
        model.generation_config.eos_token_id = eos_ids[0]
    elif eos_ids:
        model.generation_config.eos_token_id = eos_ids
    model.generation_config.pad_token_id = tokenizer.pad_token_id
    return model


def apply_chat_template(tokenizer, messages: list[dict[str, str]], *, add_generation_prompt: bool, model_family: str) -> str:
    kwargs = {
        "tokenize": False,
        "add_generation_prompt": add_generation_prompt,
    }
    if model_family == "qwen":
        kwargs["enable_thinking"] = False
    try:
        return tokenizer.apply_chat_template(messages, **kwargs)
    except TypeError:
        kwargs.pop("enable_thinking", None)
        return tokenizer.apply_chat_template(messages, **kwargs)


def first_text(value: Any) -> str:
    if isinstance(value, list):
        return "" if not value else str(value[0])
    if value is None:
        return ""
    return str(value)


def encode_example(example: dict[str, Any], tokenizer, model_family: str, max_prompt_length: int, max_length: int):
    eos_text = tokenizer.eos_token or ""

    if "messages" in example and example["messages"]:
        messages = example["messages"]
        prompt_messages = messages[:-1]
        response_text = first_text(messages[-1].get("content", ""))
        prompt_text = apply_chat_template(
            tokenizer,
            prompt_messages,
            add_generation_prompt=True,
            model_family=model_family,
        )
        full_text = apply_chat_template(
            tokenizer,
            messages,
            add_generation_prompt=False,
            model_family=model_family,
        )
        prompt_ids = tokenizer(prompt_text, add_special_tokens=False)["input_ids"]
        full_ids = tokenizer(full_text, add_special_tokens=False)["input_ids"]
        if full_ids[: len(prompt_ids)] == prompt_ids:
            response_ids = full_ids[len(prompt_ids) :]
        else:
            response_ids = tokenizer(response_text + eos_text, add_special_tokens=False)["input_ids"]
    elif "system_prompt" in example and "user_prompt" in example:
        response_text = first_text(example.get("response", ""))
        messages = [
            {"role": "system", "content": first_text(example["system_prompt"])},
            {"role": "user", "content": first_text(example["user_prompt"])},
            {"role": "assistant", "content": response_text},
        ]
        return encode_example(
            {"messages": messages},
            tokenizer,
            model_family,
            max_prompt_length,
            max_length,
        )
    elif "instruction" in example:
        response_text = first_text(example.get("response", ""))
        messages = [
            {"role": "user", "content": first_text(example["instruction"])},
            {"role": "assistant", "content": response_text},
        ]
        return encode_example(
            {"messages": messages},
            tokenizer,
            model_family,
            max_prompt_length,
            max_length,
        )
    elif "prompt" in example:
        prompt_text = first_text(example["prompt"])
        response_text = first_text(example.get("response", example.get("completion", "")))
        prompt_ids = tokenizer(prompt_text, add_special_tokens=False)["input_ids"]
        response_ids = tokenizer(response_text + eos_text, add_special_tokens=False)["input_ids"]
    else:
        raise ValueError(
            "Unsupported dataset schema. Expected messages, instruction/response, "
            "system_prompt/user_prompt/response, or prompt/response."
        )

    prompt_budget = min(max_prompt_length, max_length - 1)
    if len(prompt_ids) > prompt_budget:
        prompt_ids = prompt_ids[:prompt_budget]
        prompt_text = tokenizer.decode(prompt_ids, skip_special_tokens=False)

    input_ids = (prompt_ids + response_ids)[:max_length]
    attention_mask = [1] * len(input_ids)
    return {
        "prompt": prompt_text,
        "input_ids": input_ids,
        "attention_mask": attention_mask,
    }


def load_train_eval_dataset(args: argparse.Namespace) -> tuple[Dataset, Dataset]:
    if args.dataset_name:
        loaded = load_dataset(args.dataset_name, args.dataset_config, split=args.dataset_split)
        split = loaded.train_test_split(test_size=args.test_size, seed=args.seed)
        train_dataset = split["train"]
        eval_dataset = split["test"]
    else:
        if args.train_file is None:
            raise ValueError("Provide either --dataset-name or --train-file.")
        data_files = {"train": args.train_file}
        if args.eval_file:
            data_files["validation"] = args.eval_file
        loaded = load_dataset("json", data_files=data_files)
        if isinstance(loaded, DatasetDict) and "validation" in loaded:
            train_dataset = loaded["train"]
            eval_dataset = loaded["validation"]
        else:
            split = loaded["train"].train_test_split(test_size=args.test_size, seed=args.seed)
            train_dataset = split["train"]
            eval_dataset = split["test"]

    if args.max_samples is not None:
        train_dataset = train_dataset.select(range(min(args.max_samples, len(train_dataset))))
        eval_dataset = eval_dataset.select(range(min(max(1, args.max_samples // 10), len(eval_dataset))))

    return train_dataset, eval_dataset


def prepare_dataset(dataset: Dataset, tokenizer, model_family: str, args: argparse.Namespace) -> Dataset:
    remove_columns = dataset.column_names

    def _encode(example):
        return encode_example(
            example,
            tokenizer,
            model_family,
            args.max_prompt_length,
            args.max_length,
        )

    return dataset.map(_encode, remove_columns=remove_columns)


def load_model(model_path: str, args: argparse.Namespace, tokenizer):
    dtype = get_torch_dtype(args.torch_dtype)
    kwargs = {
        "torch_dtype": dtype,
        "pad_token_id": tokenizer.pad_token_id,
        "trust_remote_code": args.trust_remote_code,
    }
    if args.attn_implementation != "auto":
        kwargs["attn_implementation"] = args.attn_implementation
    return AutoModelForCausalLM.from_pretrained(model_path, **kwargs)


def load_teacher_model(args: argparse.Namespace, tokenizer):
    teacher_model = load_model(args.teacher_model_path, args, tokenizer)
    teacher_peft_path = resolve_hf_path(args.teacher_peft_path)
    print(f"Loading teacher PEFT checkpoint from {teacher_peft_path}")
    teacher_model = PeftModel.from_pretrained(teacher_model, teacher_peft_path)
    teacher_model = teacher_model.merge_and_unload()
    teacher_model.eval()
    print("Teacher PEFT checkpoint merged.")
    return teacher_model


def validate_vocab(student_model, teacher_model):
    student_vocab = student_model.get_input_embeddings().weight.shape[0]
    teacher_vocab = teacher_model.get_input_embeddings().weight.shape[0]
    print(f"Student vocab size: {student_vocab}")
    print(f"Teacher vocab size: {teacher_vocab}")
    if student_vocab != teacher_vocab:
        raise ValueError(
            "Student and teacher vocab sizes differ. TSD-KD direct logit distillation "
            "requires matching token ids and vocab size."
        )


def main():
    args = parse_args()
    maybe_login_to_hf()
    model_family = infer_model_family(args)

    tokenizer = AutoTokenizer.from_pretrained(
        args.student_model_path,
        trust_remote_code=args.trust_remote_code,
    )
    tokenizer = configure_tokenizer(tokenizer, model_family)

    print(f"Model family: {model_family}")
    print(f"Tokenizer eos_token_id: {tokenizer.eos_token_id}")
    print(f"Tokenizer pad_token_id: {tokenizer.pad_token_id}")
    print(f"max_length={args.max_length}, max_prompt_length={args.max_prompt_length}")

    train_dataset_raw, eval_dataset_raw = load_train_eval_dataset(args)
    train_dataset = prepare_dataset(train_dataset_raw, tokenizer, model_family, args)
    eval_dataset = prepare_dataset(eval_dataset_raw, tokenizer, model_family, args)

    student_model = load_model(args.student_model_path, args, tokenizer)
    teacher_model = load_teacher_model(args, tokenizer)
    validate_vocab(student_model, teacher_model)

    student_model.config.pad_token_id = tokenizer.pad_token_id
    teacher_model.config.pad_token_id = tokenizer.pad_token_id
    student_model = configure_generation_config(student_model, tokenizer)
    teacher_model = configure_generation_config(teacher_model, tokenizer)
    print(f"Student generation eos_token_id: {student_model.generation_config.eos_token_id}")
    print(f"Teacher generation eos_token_id: {teacher_model.generation_config.eos_token_id}")

    training_args = GKDConfig(
        output_dir=args.output_dir,
        logging_steps=args.logging_steps,
        num_train_epochs=args.num_train_epochs,
        warmup_ratio=args.warmup_ratio,
        per_device_eval_batch_size=args.per_device_eval_batch_size,
        per_device_train_batch_size=args.per_device_train_batch_size,
        gradient_accumulation_steps=args.gradient_accumulation_steps,
        gradient_checkpointing=args.gradient_checkpointing,
        learning_rate=args.learning_rate,
        weight_decay=args.weight_decay,
        eval_strategy="epoch",
        save_strategy="epoch",
        metric_for_best_model="eval_loss",
        load_best_model_at_end=True,
        lr_scheduler_type="cosine",
        bf16=args.bf16 and not args.fp16,
        fp16=args.fp16,
        max_length=args.max_length,
        max_new_tokens=args.max_new_tokens,
        save_total_limit=args.save_total_limit,
        report_to=args.report_to,
        run_name=args.run_name,
        lmbda=args.lmbda,
        beta=args.beta,
        temperature=args.temperature,
        seed=args.seed,
    )

    trainer = DistillTrainer(
        model=student_model,
        teacher_model=teacher_model,
        args=training_args,
        processing_class=tokenizer,
        train_dataset=train_dataset,
        eval_dataset=eval_dataset,
        token_entropy_percentile_threshold=args.threshold,
        indirect_kd_alpha=args.indirect_kd_alpha,
    )
    trainer.train()


if __name__ == "__main__":
    main()
