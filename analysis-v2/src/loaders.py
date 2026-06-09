from __future__ import annotations

import json
from pathlib import Path
from typing import Any, Dict, List, Tuple

from records import DialogRecord, SampleRecord


DATASETS: Dict[str, Dict[str, Any]] = {
    "spider": {
        "tables": Path("spider_data/tables.json"),
        "gold_dev": Path("spider_data/dev_gold.sql"),
        "splits": {
            "train": Path("spider_data/train_spider.json"),
            "dev": Path("spider_data/dev.json"),
        },
    },
    "sparc": {
        "tables": Path("sparc/tables.json"),
        "gold_dev": Path("sparc/dev_gold.txt"),
        "splits": {
            "train": Path("sparc/train.json"),
            "dev": Path("sparc/dev.json"),
        },
    },
    "cosql": {
        "tables": Path("cosql_dataset/tables.json"),
        "gold_dev": Path("cosql_dataset/sql_state_tracking/dev_gold.txt"),
        "splits": {
            "train": Path("cosql_dataset/sql_state_tracking/cosql_train.json"),
            "dev": Path("cosql_dataset/sql_state_tracking/cosql_dev.json"),
        },
    },
}


def read_json(path: Path) -> Any:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def read_sessions(path: Path) -> List[List[str]]:
    sessions: List[List[str]] = []
    current: List[str] = []
    with path.open("r", encoding="utf-8") as handle:
        for line in handle:
            if line.strip():
                current.append(line.rstrip("\n"))
            else:
                sessions.append(current)
                current = []
    if current:
        sessions.append(current)
    return sessions


def flatten_spider(
    raw_rows: List[Dict[str, Any]],
    dataset: str,
    split: str,
    source_path: Path,
) -> Tuple[List[SampleRecord], List[DialogRecord]]:
    samples: List[SampleRecord] = []
    for index, item in enumerate(raw_rows):
        samples.append(
            SampleRecord(
                dataset=dataset,
                split=split,
                sample_id=f"{dataset}:{split}:{index}",
                db_id=item.get("db_id", ""),
                query=item.get("query", ""),
                utterance=item.get("question", ""),
                source_path=str(source_path),
                source_index=index,
            )
        )
    return samples, []


def flatten_dialog_dataset(
    raw_dialogs: List[Dict[str, Any]],
    dataset: str,
    split: str,
    source_path: Path,
) -> Tuple[List[SampleRecord], List[DialogRecord]]:
    samples: List[SampleRecord] = []
    dialogs: List[DialogRecord] = []
    for dialog_index, dialog in enumerate(raw_dialogs):
        dialog_id = f"{dataset}:{split}:{dialog_index}"
        db_id = dialog.get("database_id") or dialog.get("db_id") or ""
        turns = dialog.get("interaction", [])
        dialogs.append(
            DialogRecord(
                dataset=dataset,
                split=split,
                dialog_id=dialog_id,
                db_id=db_id,
                num_turns=len(turns),
                source_path=str(source_path),
                source_index=dialog_index,
            )
        )
        for turn_index, turn in enumerate(turns):
            samples.append(
                SampleRecord(
                    dataset=dataset,
                    split=split,
                    sample_id=f"{dataset}:{split}:{dialog_index}:{turn_index}",
                    db_id=db_id,
                    query=turn.get("query", ""),
                    utterance=turn.get("utterance", ""),
                    dialog_id=dialog_id,
                    turn_id=turn_index,
                    turn_index=turn_index,
                    is_dialog=True,
                    source_path=str(source_path),
                    source_index=len(samples),
                    source_dialog_index=dialog_index,
                    source_turn_index=turn_index,
                )
            )
    return samples, dialogs


def load_benchmark_data(
    benchmarks_dir: Path,
    include_spider_others: bool = False,
) -> Tuple[List[SampleRecord], List[DialogRecord], Dict[str, Dict[str, Any]]]:
    samples: List[SampleRecord] = []
    dialogs: List[DialogRecord] = []
    source_meta: Dict[str, Dict[str, Any]] = {}

    for dataset, config in DATASETS.items():
        source_meta[dataset] = {
            "tables": str(benchmarks_dir / config["tables"]),
            "gold_dev": str(benchmarks_dir / config["gold_dev"]),
            "splits": {},
        }
        for split, relative_path in config["splits"].items():
            abs_path = benchmarks_dir / relative_path
            raw = read_json(abs_path)
            if dataset == "spider":
                split_samples, split_dialogs = flatten_spider(raw, dataset, split, relative_path)
            else:
                split_samples, split_dialogs = flatten_dialog_dataset(raw, dataset, split, relative_path)
            samples.extend(split_samples)
            dialogs.extend(split_dialogs)
            source_meta[dataset]["splits"][split] = {
                "path": str(abs_path),
                "count": len(split_samples),
                "dialogs": len(split_dialogs),
            }

    if include_spider_others:
        others_path = benchmarks_dir / "spider_data/train_others.json"
        raw = read_json(others_path)
        other_samples, _ = flatten_spider(raw, "spider", "train", Path("spider_data/train_others.json"))
        for index, sample in enumerate(other_samples):
            sample.sample_id = f"spider:train_others:{index}"
            sample.source_path = "spider_data/train_others.json"
        samples.extend(other_samples)
        source_meta["spider"]["splits"]["train_others"] = {
            "path": str(others_path),
            "count": len(other_samples),
            "dialogs": 0,
        }

    return samples, dialogs, source_meta


def validate_gold_alignment(
    benchmarks_dir: Path,
    dialogs: List[DialogRecord],
) -> Dict[str, Dict[str, Any]]:
    results: Dict[str, Dict[str, Any]] = {}
    for dataset in ("sparc", "cosql"):
        gold_path = benchmarks_dir / DATASETS[dataset]["gold_dev"]
        gold_sessions = read_sessions(gold_path)
        dev_dialogs = [dialog for dialog in dialogs if dialog.dataset == dataset and dialog.split == "dev"]
        same_session_count = len(gold_sessions) == len(dev_dialogs)
        same_turn_counts = same_session_count and all(
            len(session) == dialog.num_turns for session, dialog in zip(gold_sessions, dev_dialogs)
        )
        results[dataset] = {
            "gold_session_count": len(gold_sessions),
            "dialog_count": len(dev_dialogs),
            "session_count_match": same_session_count,
            "turn_count_match": same_turn_counts,
        }
    return results
