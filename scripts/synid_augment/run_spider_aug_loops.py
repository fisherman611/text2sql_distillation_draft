#!/usr/bin/env python3
"""Generate and validate SynID-SQL augmentation candidates in repair loops."""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path
from typing import Any

import torch
from tqdm.auto import tqdm

ROOT = Path(__file__).resolve().parents[2]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from infer import init_model
from src.synid_sql.augmentation.bird_records import (
    build_bird_teacher_user_prompt,
    load_bird_teacher_templates,
    load_bird_train_records,
)
from src.synid_sql.augmentation.io import read_jsonl, write_json, write_jsonl
from src.synid_sql.augmentation.spider_records import (
    build_teacher_user_prompt,
    load_spider_train_records,
    load_synid_teacher_templates,
)
from src.synid_sql.augmentation.sql_extract import extract_sql
from src.synid_sql.augmentation.validator import validate_candidate


REPAIR_INSTRUCTION = """Previous attempt:
{previous_candidate_sql}

Validation result:
- reason: {failure_reason}
- detail: {failure_detail}

Please generate a corrected SQL query. It must be execution-equivalent to the reference solution, but should use a different syntactic form when possible.
Return only the requested JSON object."""


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--benchmark", choices=["spider", "bird"], default="spider")
    parser.add_argument("--root", type=Path, default=None)
    parser.add_argument("--output-root", type=Path, default=None)
    parser.add_argument("--db-root", type=Path, default=None)
    parser.add_argument("--teacher-prompt-dir", type=Path, default=Path("prompts/single_turn/synid_teacher"))
    parser.add_argument("--model", default="Qwen/Qwen3-4B-Instruct-2507")
    parser.add_argument("--teacher-peft-path", default=None)
    parser.add_argument("--device", default="cuda", choices=["cpu", "cuda", "auto"])
    parser.add_argument("--num-loops", type=int, default=3)
    parser.add_argument("--gamma", type=float, default=0.6)
    parser.add_argument("--timeout", type=float, default=30.0)
    parser.add_argument("--max-new-tokens", type=int, default=512)
    parser.add_argument("--temperature", type=float, default=0.7)
    parser.add_argument("--top-p", type=float, default=0.95)
    parser.add_argument("--top-k", type=int, default=0)
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--resume", action="store_true")
    args = parser.parse_args()
    if args.root is None:
        args.root = Path("benchmarks_2/bird") if args.benchmark == "bird" else Path("benchmarks_2/spider_data")
    if args.output_root is None:
        args.output_root = args.root / "synid_aug"
    if args.db_root is None:
        args.db_root = (
            Path("benchmarks/bird/train/train_databases")
            if args.benchmark == "bird"
            else Path("benchmarks/spider_data/database")
        )
    return args


def _failure_detail(row: dict[str, Any]) -> str:
    fields = []
    for key in ("error", "gold_row_count", "candidate_row_count", "jaccard"):
        if key in row:
            fields.append(f"{key}={row[key]}")
    return "; ".join(fields) if fields else "No additional detail."


def _build_messages(
    tokenizer,
    system_prompt: str,
    user_prompt: str,
    failed_row: dict[str, Any] | None,
) -> str:
    if failed_row is not None:
        user_prompt = (
            user_prompt
            + "\n\n"
            + REPAIR_INSTRUCTION.format(
                previous_candidate_sql=failed_row.get("candidate_sql") or failed_row.get("previous_candidate_sql") or "",
                failure_reason=failed_row.get("reason") or failed_row.get("failure_reason") or "unknown",
                failure_detail=_failure_detail(failed_row),
            )
        )
    return tokenizer.apply_chat_template(
        [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ],
        add_generation_prompt=True,
        tokenize=False,
        enable_thinking=False,
    )


def generate_one(
    *,
    tokenizer,
    model,
    system_prompt: str,
    user_prompt: str,
    failed_row: dict[str, Any] | None,
    args: argparse.Namespace,
) -> tuple[str, str]:
    prompt = _build_messages(tokenizer, system_prompt, user_prompt, failed_row)
    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)
    do_sample = args.temperature > 0
    with torch.inference_mode():
        output_ids = model.generate(
            **inputs,
            max_new_tokens=args.max_new_tokens,
            do_sample=do_sample,
            temperature=args.temperature if do_sample else None,
            top_p=args.top_p if do_sample else None,
            top_k=args.top_k if do_sample else None,
            pad_token_id=tokenizer.eos_token_id,
        )
    generated_ids = output_ids[0, inputs["input_ids"].shape[1]:]
    raw_response = tokenizer.decode(generated_ids, skip_special_tokens=True)
    return raw_response, extract_sql(raw_response)


def _load_existing_loop(loop_dir: Path) -> tuple[list[dict[str, Any]], list[dict[str, Any]], list[dict[str, Any]]] | None:
    accepted_path = loop_dir / "accepted.jsonl"
    rejected_path = loop_dir / "rejected.jsonl"
    repair_path = loop_dir / "repair_queue.jsonl"
    if not accepted_path.exists() or not rejected_path.exists() or not repair_path.exists():
        return None
    return read_jsonl(accepted_path), read_jsonl(rejected_path), read_jsonl(repair_path)


def _summarize(loop_index: int, candidates: list[dict[str, Any]], accepted: list[dict[str, Any]], rejected: list[dict[str, Any]]) -> dict[str, Any]:
    return {
        "loop": loop_index,
        "candidates": len(candidates),
        "accepted": len(accepted),
        "rejected": len(rejected),
        "rejection_reasons": dict(Counter(row.get("reason", "unknown") for row in rejected)),
    }


def main() -> None:
    args = parse_args()
    if args.num_loops <= 0:
        raise ValueError("--num-loops must be positive")

    if args.benchmark == "bird":
        records = load_bird_train_records(args.root)
        system_prompt, user_template = load_bird_teacher_templates()
        user_prompt_builder = build_bird_teacher_user_prompt
    else:
        records = load_spider_train_records(args.root)
        system_prompt, user_template = load_synid_teacher_templates(args.teacher_prompt_dir)
        user_prompt_builder = build_teacher_user_prompt

    if args.limit is not None:
        records = records[: args.limit]
    records_by_id = {int(row["id"]): row for row in records}

    tokenizer, model = init_model(args.model, args.teacher_peft_path, device=args.device)
    model.eval()

    accepted_by_id: dict[int, dict[str, Any]] = {}
    remaining: list[dict[str, Any]] = records
    loop_summaries = []

    for loop_index in range(1, args.num_loops + 1):
        loop_dir = args.output_root / "loops" / f"loop_{loop_index}"
        loop_dir.mkdir(parents=True, exist_ok=True)

        existing = _load_existing_loop(loop_dir) if args.resume else None
        if existing is not None:
            accepted, rejected, repair_queue = existing
            candidates = read_jsonl(loop_dir / "candidates.jsonl")
        else:
            candidates = []
            accepted = []
            rejected = []
            for item in tqdm(remaining, desc=f"loop {loop_index} generate"):
                base_record = records_by_id[int(item["id"])]
                user_prompt = user_prompt_builder(user_template, base_record)
                failed_row = item if "reason" in item else None
                raw_response, candidate_sql = generate_one(
                    tokenizer=tokenizer,
                    model=model,
                    system_prompt=system_prompt,
                    user_prompt=user_prompt,
                    failed_row=failed_row,
                    args=args,
                )
                candidate = {
                    **base_record,
                    "loop": loop_index,
                    "raw_response": raw_response,
                    "candidate_sql": candidate_sql,
                }
                ok, validation_row = validate_candidate(
                    candidate,
                    benchmark=args.benchmark,
                    db_root=args.db_root,
                    gamma=args.gamma,
                    timeout_s=args.timeout,
                )
                candidates.append(candidate)
                if ok:
                    accepted.append(validation_row)
                else:
                    rejected.append(validation_row)

            accepted_ids = {int(row["id"]) for row in accepted}
            repair_queue = [
                {
                    **row,
                    "previous_candidate_sql": row.get("candidate_sql", ""),
                    "failure_reason": row.get("reason", "unknown"),
                    "failure_detail": _failure_detail(row),
                }
                for row in rejected
                if int(row["id"]) not in accepted_ids
            ]

            write_jsonl(loop_dir / "candidates.jsonl", candidates)
            write_jsonl(loop_dir / "accepted.jsonl", accepted)
            write_jsonl(loop_dir / "rejected.jsonl", rejected)
            write_jsonl(loop_dir / ("final_rejected.jsonl" if loop_index == args.num_loops else "repair_queue.jsonl"), repair_queue)
            if loop_index == args.num_loops:
                write_jsonl(loop_dir / "repair_queue.jsonl", [])

        for row in accepted:
            accepted_by_id.setdefault(int(row["id"]), row)

        remaining = [row for row in repair_queue if int(row["id"]) not in accepted_by_id]
        summary = _summarize(loop_index, candidates, accepted, rejected)
        summary["remaining_after_loop"] = len(remaining)
        loop_summaries.append(summary)
        write_json(loop_dir / "summary.json", summary)

        if not remaining:
            break

    accepted_all = [accepted_by_id[row_id] for row_id in sorted(accepted_by_id)]
    rejected_final = remaining
    write_jsonl(args.output_root / "accepted_all.jsonl", accepted_all)
    write_jsonl(args.output_root / "rejected_final.jsonl", rejected_final)
    write_json(
        args.output_root / "summary.json",
        {
            "total_records": len(records),
            "accepted": len(accepted_all),
            "rejected_final": len(rejected_final),
            "loops": loop_summaries,
        },
    )
    print(json.dumps({"accepted": len(accepted_all), "rejected_final": len(rejected_final)}, indent=2))


if __name__ == "__main__":
    main()
