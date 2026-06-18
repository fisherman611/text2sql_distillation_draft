import argparse
import hashlib
import json
from pathlib import Path

from tqdm.auto import tqdm

from infer import generate_response_batch, init_model


def prompt_key(system_prompt: str, user_prompt: str) -> str:
    raw = f"{system_prompt}\n{user_prompt}".encode("utf-8")
    return hashlib.sha256(raw).hexdigest()


def parse_args():
    parser = argparse.ArgumentParser(description="Generate offline DistiLLM-2 responses from formatted Spider JSONL.")
    parser.add_argument("--input-jsonl", required=True)
    parser.add_argument("--output-jsonl", required=True)
    parser.add_argument("--model", required=True)
    parser.add_argument("--ckpt-path", default=None)
    parser.add_argument("--ckpt-revision", default=None)
    parser.add_argument("--device", default=None, choices=["cpu", "cuda", "auto"])
    parser.add_argument("--batch-size", type=int, default=1)
    parser.add_argument("--max-length", type=int, default=512)
    parser.add_argument("--temperature", type=float, default=0.5)
    parser.add_argument("--top-p", type=float, default=0.95)
    parser.add_argument("--top-k", type=int, default=0)
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--flush-every", type=int, default=100)
    return parser.parse_args()


def read_jsonl(path: Path, limit=None):
    rows = []
    with path.open(encoding="utf-8") as f:
        for line in f:
            if line.strip():
                rows.append(json.loads(line))
                if limit is not None and len(rows) >= limit:
                    break
    return rows


def extract_question(item):
    if item.get("question"):
        return item["question"]
    user_prompt = item.get("user_prompt", "")
    marker = "QUESTION:\n"
    if marker not in user_prompt:
        return None
    question_part = user_prompt.split(marker, 1)[1]
    return question_part.split("\n\n", 1)[0].strip()


def main():
    args = parse_args()
    input_path = Path(args.input_jsonl)
    output_path = Path(args.output_jsonl)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    rows = read_jsonl(input_path, args.limit)
    tokenizer, model = init_model(args.model, args.ckpt_path, args.ckpt_revision, device=args.device)

    with output_path.open("w", encoding="utf-8") as out_f:
        for start in tqdm(range(0, len(rows), args.batch_size), desc="Generating DistiLLM-2 outputs"):
            batch = rows[start : start + args.batch_size]
            messages = [
                [
                    {"role": "system", "content": item["system_prompt"]},
                    {"role": "user", "content": item["user_prompt"]},
                ]
                for item in batch
            ]
            responses = generate_response_batch(
                tokenizer,
                model,
                messages,
                max_length=args.max_length,
                temperature=args.temperature,
                top_p=args.top_p,
                top_k=args.top_k,
            )
            for item, response in zip(batch, responses):
                out_f.write(
                    json.dumps(
                        {
                            "id": item.get("id") or item.get("sample_id"),
                            "prompt_key": prompt_key(item["system_prompt"], item["user_prompt"]),
                            "system_prompt": item["system_prompt"],
                            "user_prompt": item["user_prompt"],
                            "generated_response": response,
                            "db_id": item.get("db_id"),
                            "question": extract_question(item),
                        },
                        ensure_ascii=False,
                    )
                    + "\n"
                )
            if args.flush_every and (start + len(batch)) % args.flush_every == 0:
                out_f.flush()


if __name__ == "__main__":
    main()
