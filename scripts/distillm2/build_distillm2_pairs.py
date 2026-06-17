import argparse
import hashlib
import json
from pathlib import Path


def prompt_key(system_prompt: str, user_prompt: str) -> str:
    raw = f"{system_prompt}\n{user_prompt}".encode("utf-8")
    return hashlib.sha256(raw).hexdigest()


def read_jsonl(path: Path, limit=None):
    rows = []
    with path.open(encoding="utf-8") as f:
        for line in f:
            if not line.strip():
                continue
            rows.append(json.loads(line))
            if limit is not None and len(rows) >= limit:
                break
    return rows


def load_generation_map(path: Path):
    result = {}
    for row in read_jsonl(path):
        key = row.get("prompt_key")
        if not key:
            key = prompt_key(row["system_prompt"], row["user_prompt"])
        result[key] = row.get("generated_response", "")
    return result


def write_jsonl(path: Path, rows):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        for row in rows:
            f.write(json.dumps(row, ensure_ascii=False) + "\n")


def extract_question(item):
    if item.get("question"):
        return item["question"]
    user_prompt = item.get("user_prompt", "")
    marker = "QUESTION:\n"
    if marker not in user_prompt:
        return None
    question_part = user_prompt.split(marker, 1)[1]
    return question_part.split("\n\n", 1)[0].strip()


def build_train_rows(source_rows, teacher_map, student_map):
    rows = []
    missing_teacher = 0
    missing_student = 0
    for item in source_rows:
        key = prompt_key(item["system_prompt"], item["user_prompt"])
        teacher_response = teacher_map.get(key)
        student_response = student_map.get(key)
        if not teacher_response:
            missing_teacher += 1
            continue
        if not student_response:
            missing_student += 1
            continue
        rows.append(
            {
                "system_prompt": item["system_prompt"],
                "user_prompt": item["user_prompt"],
                "teacher_response": teacher_response,
                "student_response": student_response,
                "gold_response": item.get("response", ""),
                "db_id": item.get("db_id"),
                "question": extract_question(item),
            }
        )
    return rows, missing_teacher, missing_student


def build_dev_rows(source_rows):
    rows = []
    for item in source_rows:
        gold_response = item.get("response", "")
        rows.append(
            {
                "system_prompt": item["system_prompt"],
                "user_prompt": item["user_prompt"],
                "teacher_response": gold_response,
                "student_response": "",
                "gold_response": gold_response,
                "db_id": item.get("db_id"),
                "question": extract_question(item),
            }
        )
    return rows


def parse_args():
    parser = argparse.ArgumentParser(description="Build DistiLLM-2 chosen/rejected pair JSONL files.")
    parser.add_argument("--source-train-jsonl", required=True)
    parser.add_argument("--source-dev-jsonl", default=None)
    parser.add_argument("--teacher-jsonl", required=True)
    parser.add_argument("--student-jsonl", required=True)
    parser.add_argument("--output-dir", required=True)
    parser.add_argument("--limit", type=int, default=None)
    return parser.parse_args()


def main():
    args = parse_args()
    output_dir = Path(args.output_dir)
    source_train = read_jsonl(Path(args.source_train_jsonl), args.limit)
    teacher_map = load_generation_map(Path(args.teacher_jsonl))
    student_map = load_generation_map(Path(args.student_jsonl))

    train_rows, missing_teacher, missing_student = build_train_rows(source_train, teacher_map, student_map)
    write_jsonl(output_dir / "train.jsonl", train_rows)

    if args.source_dev_jsonl:
        dev_rows = build_dev_rows(read_jsonl(Path(args.source_dev_jsonl), args.limit))
    else:
        dev_rows = build_dev_rows(source_train[: min(500, len(source_train))])
    write_jsonl(output_dir / "dev.jsonl", dev_rows)

    print(f"Wrote train rows: {len(train_rows)}")
    print(f"Wrote dev rows: {len(dev_rows)}")
    print(f"Skipped missing teacher: {missing_teacher}")
    print(f"Skipped missing student: {missing_student}")


if __name__ == "__main__":
    main()
