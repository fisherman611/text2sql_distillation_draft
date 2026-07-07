import json
from pathlib import Path
from typing import Dict, List, Tuple


ROOT = Path(__file__).resolve().parents[1]
OUT_DIR = Path(__file__).resolve().parent

SYSTEM_PROMPT = (
    "You are a SQL Query Generator for Spider-style text-to-SQL tasks.\n\n"
    "Your task is to generate a valid SQLite SQL query that answers the user's "
    "natural language question using only the provided database schema.\n\n"
    "Rules:\n"
    "- Use only tables, columns, and relationships that exist in the provided schema.\n"
    "- Do not invent schema elements.\n"
    "- Generate a single executable SQL query.\n"
    "- Return only the columns needed to answer the question.\n"
    "- Use DISTINCT when duplicates are possible and the question implies unique results.\n"
    "- If the question requires aggregation, sorting, grouping, filtering, or limiting, use the correct SQL clauses.\n"
    "- Use JOINs only when needed, and use schema-consistent join keys.\n"
    "- Qualify column names when they may be ambiguous.\n"
    "- Prefer concise, conventional SQLite SQL.\n"
    "- Ensure the query is syntactically valid.\n\n"
    "Output format:\n"
    "{\n"
    '  "sql": "The complete SQL query"\n'
    "}\n\n"
    "Return only the JSON object and nothing else."
)

USER_PROMPT_TEMPLATE = (
    "QUESTION:\n"
    "{question}\n\n"
    "SCHEMA:\n"
    "{schema}\n\n"
    "Generate a valid SQLite SQL query that answers the question using only the provided schema.\n"
    "Return only the JSON object in the required format."
)


def read_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def build_schema_lookup() -> Dict[str, str]:
    lookup: Dict[str, str] = {}
    for schema_file in ("tables.json", "test_tables.json"):
        tables = read_json(ROOT / schema_file)
        for entry in tables:
            table_names = entry.get("table_names_original") or entry.get("table_names") or []
            column_names = entry.get("column_names_original") or entry.get("column_names") or []
            foreign_keys = entry.get("foreign_keys") or []

            table_to_columns: Dict[int, List[str]] = {idx: [] for idx in range(len(table_names))}
            for table_idx, col_name in column_names:
                if table_idx == -1:
                    continue
                table_to_columns.setdefault(table_idx, []).append(str(col_name))

            table_lines = []
            for idx, table_name in enumerate(table_names):
                cols = ", ".join(table_to_columns.get(idx, []))
                table_lines.append(f"- {table_name}({cols})")

            fk_lines = []
            for src_idx, dst_idx in foreign_keys:
                src_table_idx, src_col = column_names[src_idx]
                dst_table_idx, dst_col = column_names[dst_idx]
                src_table = table_names[src_table_idx]
                dst_table = table_names[dst_table_idx]
                fk_lines.append(f"- {src_table}.{src_col} -> {dst_table}.{dst_col}")

            schema_parts = ["Tables:"] + table_lines
            if fk_lines:
                schema_parts.extend(["", "Foreign keys:"] + fk_lines)

            lookup[entry["db_id"]] = "\n".join(schema_parts)

    return lookup


def make_record(sample: Dict[str, str], schema_lookup: Dict[str, str]) -> Dict[str, str]:
    question = sample["question"].strip()
    db_id = sample["db_id"]
    schema = schema_lookup[db_id]
    user_prompt = USER_PROMPT_TEMPLATE.format(question=question, schema=schema)
    response = json.dumps({"sql": sample["query"].strip()}, ensure_ascii=False)

    return {
        "system_prompt": SYSTEM_PROMPT,
        "user_prompt": user_prompt,
        "response": response,
    }


def write_jsonl(path: Path, rows: List[Dict[str, str]]) -> None:
    with path.open("w", encoding="utf-8") as f:
        for row in rows:
            f.write(json.dumps(row, ensure_ascii=False) + "\n")


def main() -> None:
    schema_lookup = build_schema_lookup()
    split_files: List[Tuple[str, str]] = [
        ("train", "train_spider.json"),
        ("dev", "dev.json"),
        ("test", "test.json"),
    ]

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    for split, filename in split_files:
        samples = read_json(ROOT / filename)
        rows = [make_record(sample, schema_lookup) for sample in samples]
        write_jsonl(OUT_DIR / f"{split}.jsonl", rows)
        print(f"Wrote {len(rows)} rows to {OUT_DIR / f'{split}.jsonl'}")


if __name__ == "__main__":
    main()
