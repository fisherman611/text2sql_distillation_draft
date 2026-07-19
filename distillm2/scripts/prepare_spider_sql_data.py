#!/usr/bin/env python
import argparse
import json
import re
from pathlib import Path
from typing import Dict, Iterable, List, Optional

from datasets import Dataset, DatasetDict


CHATML_ROLE_RE = re.compile(r"<\|im_start\|>(system|user)\n(.*?)<\|im_end\|>", re.DOTALL)
LLAMA_ROLE_RE = re.compile(
    r"<\|start_header_id\|>(system|user)<\|end_header_id\|>\n\n(.*?)<\|eot_id\|>",
    re.DOTALL,
)


def read_jsonl(path: Path) -> List[Dict]:
    rows = []
    with path.open("r", encoding="utf-8") as fin:
        for line in fin:
            line = line.strip()
            if line:
                rows.append(json.loads(line))
    return rows


def read_json_or_jsonl(path: Optional[Path]) -> List[Dict]:
    if path is None:
        return []
    if not path.exists():
        print(f"Warning: prediction file not found: {path}; using empty predictions.")
        return []
    text = path.read_text(encoding="utf-8").strip()
    if not text:
        return []
    if text[0] == "[":
        return json.loads(text)
    return [json.loads(line) for line in text.splitlines() if line.strip()]


def messages_from_prompt(prompt: str) -> List[Dict[str, str]]:
    matches = CHATML_ROLE_RE.findall(prompt)
    if not matches:
        matches = LLAMA_ROLE_RE.findall(prompt)
    messages = [{"role": role, "content": content.strip()} for role, content in matches]
    if len(messages) < 2:
        raise ValueError("Could not recover system/user messages from processed Spider prompt.")
    return messages


def assistant_content(response: str, add_thinking_stub: bool) -> str:
    response = str(response).strip()
    if add_thinking_stub and "<think>" not in response:
        return f"<think>\n\n</think>\n\n{response}"
    return response


def sql_json(sql: str) -> str:
    return json.dumps({"sql": str(sql).strip()}, ensure_ascii=False)


def normalize_prediction(row: Dict) -> str:
    for key in ("pred_sql", "generated_text", "response", "raw_response"):
        value = row.get(key)
        if value:
            if key == "pred_sql":
                return sql_json(str(value))
            return str(value).strip()
    return sql_json("")


def prediction_lookup(path: Optional[Path]) -> Dict[str, str]:
    rows = read_json_or_jsonl(path)
    lookup = {}
    for row in rows:
        prompt = row.get("prompt") or row.get("format_prompt")
        if prompt:
            lookup[str(prompt)] = normalize_prediction(row)
    return lookup


def build_sft_records(rows: Iterable[Dict], add_thinking_stub: bool) -> List[Dict]:
    records = []
    for row in rows:
        messages = messages_from_prompt(row["prompt"])
        messages.append(
            {
                "role": "assistant",
                "content": assistant_content(row["response"], add_thinking_stub),
            }
        )
        records.append({"messages": messages})
    return records


def build_pair_records(
    rows: Iterable[Dict],
    chosen_lookup: Dict[str, str],
    rejected_lookup: Dict[str, str],
    add_thinking_stub: bool,
) -> List[Dict]:
    records = []
    missing_chosen = 0
    missing_rejected = 0
    for row in rows:
        prompt = row["prompt"]
        chosen = chosen_lookup.get(prompt)
        if chosen is None:
            missing_chosen += 1
            chosen = row["response"]
        rejected = rejected_lookup.get(prompt)
        if rejected is None:
            missing_rejected += 1
            rejected = sql_json("")
        records.append(
            {
                "prompt": messages_from_prompt(prompt),
                "chosen": [
                    {
                        "role": "assistant",
                        "content": assistant_content(chosen, add_thinking_stub),
                    }
                ],
                "rejected": [
                    {
                        "role": "assistant",
                        "content": assistant_content(rejected, add_thinking_stub),
                    }
                ],
                "gold": [
                    {
                        "role": "assistant",
                        "content": assistant_content(row["response"], add_thinking_stub),
                    }
                ],
            }
        )
    if missing_chosen:
        print(f"Warning: {missing_chosen} row(s) had no teacher prediction; fell back to gold response.")
    if missing_rejected:
        print(f"Warning: {missing_rejected} row(s) had no student prediction; filled empty SQL.")
    return records


def parse_args():
    parser = argparse.ArgumentParser(description="Prepare processed Spider JSONL for DistiLLM-2/Qwen3.")
    parser.add_argument("--mode", choices=["sft", "pairs"], default="sft")
    parser.add_argument(
        "--processed-root",
        type=Path,
        default=Path("../processed_data/benchmarks/spider_data/qwen"),
        help="Directory containing train.jsonl/valid.jsonl/test.jsonl.",
    )
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--train-file", default="train.jsonl")
    parser.add_argument("--valid-file", default="valid.jsonl")
    parser.add_argument("--test-file", default=None)
    parser.add_argument("--teacher-train-results", type=Path, default=None)
    parser.add_argument("--teacher-valid-results", type=Path, default=None)
    parser.add_argument("--student-train-results", type=Path, default=None)
    parser.add_argument("--student-valid-results", type=Path, default=None)
    parser.add_argument("--limit", type=int, default=None, help="Optional per-split row limit for smoke tests.")
    parser.add_argument("--no-thinking-stub", action="store_true")
    return parser.parse_args()


def main():
    args = parse_args()
    add_thinking_stub = not args.no_thinking_stub

    train_rows = read_jsonl(args.processed_root / args.train_file)
    valid_rows = read_jsonl(args.processed_root / args.valid_file)
    if args.limit is not None:
        train_rows = train_rows[: args.limit]
        valid_rows = valid_rows[: args.limit]
    split_rows = {"train": train_rows, "test": valid_rows}
    if args.test_file:
        split_rows["holdout"] = read_jsonl(args.processed_root / args.test_file)

    if args.mode == "sft":
        datasets = {
            split: Dataset.from_list(build_sft_records(rows, add_thinking_stub))
            for split, rows in split_rows.items()
        }
    else:
        teacher_train_lookup = prediction_lookup(args.teacher_train_results)
        teacher_valid_lookup = prediction_lookup(args.teacher_valid_results or args.teacher_train_results)
        student_train_lookup = prediction_lookup(args.student_train_results)
        student_valid_lookup = prediction_lookup(args.student_valid_results or args.student_train_results)
        datasets = {
            "train": Dataset.from_list(
                build_pair_records(train_rows, teacher_train_lookup, student_train_lookup, add_thinking_stub)
            ),
            "test": Dataset.from_list(
                build_pair_records(valid_rows, teacher_valid_lookup, student_valid_lookup, add_thinking_stub)
            ),
        }

    args.output_dir.parent.mkdir(parents=True, exist_ok=True)
    DatasetDict(datasets).save_to_disk(str(args.output_dir))
    print(f"Saved {args.mode} dataset to {args.output_dir}")
    for split, dataset in datasets.items():
        print(f"  {split}: {len(dataset)} rows")


if __name__ == "__main__":
    main()
