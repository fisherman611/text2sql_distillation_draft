#!/usr/bin/env python
"""Analyze Spider, SParC, and CoSQL benchmark statistics.

The script intentionally avoids project-specific training code so it can be run
as a lightweight dataset audit from a fresh checkout.
"""

from __future__ import annotations

import argparse
import csv
import json
import math
import re
from collections import Counter
from pathlib import Path
from statistics import mean, median
from typing import Any, Dict, Iterable, List


DATASETS = {
    "spider": {
        "root": Path("spider_data"),
        "tables": Path("spider_data/tables.json"),
        "splits": {
            "train": Path("spider_data/train_spider.json"),
            "dev": Path("spider_data/dev.json"),
        },
    },
    "sparc": {
        "root": Path("sparc"),
        "tables": Path("sparc/tables.json"),
        "splits": {
            "train": Path("sparc/train.json"),
            "dev": Path("sparc/dev.json"),
        },
    },
    "cosql": {
        "root": Path("cosql_dataset"),
        "tables": Path("cosql_dataset/tables.json"),
        "splits": {
            "train": Path("cosql_dataset/sql_state_tracking/cosql_train.json"),
            "dev": Path("cosql_dataset/sql_state_tracking/cosql_dev.json"),
        },
    },
}


TOKEN_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_]*|\d+(?:\.\d+)?|<=|>=|<>|!=|==|[(),.*=<>+\-/;]")
CLAUSE_PATTERNS = {
    "order_by": re.compile(r"\border\s+by\b", re.IGNORECASE),
    "group_by": re.compile(r"\bgroup\s+by\b", re.IGNORECASE),
    "having": re.compile(r"\bhaving\b", re.IGNORECASE),
}
NESTED_RE = re.compile(
    r"\(\s*select\b|\b(intersect|union|except)\b|\b(in|exists)\s*\(\s*select\b",
    re.IGNORECASE,
)


def read_json(path: Path) -> Any:
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def write_json(path: Path, payload: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2, ensure_ascii=False)
        f.write("\n")


def write_csv(path: Path, rows: List[Dict[str, Any]], fieldnames: List[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def sql_tokens(sql: str) -> List[str]:
    return TOKEN_RE.findall(sql or "")


def length_stats(values: List[int]) -> Dict[str, float | int]:
    if not values:
        return {
            "min": 0,
            "max": 0,
            "mean": 0.0,
            "median": 0.0,
            "p90": 0.0,
        }
    sorted_values = sorted(values)
    p90_idx = min(len(sorted_values) - 1, math.ceil(len(sorted_values) * 0.9) - 1)
    return {
        "min": sorted_values[0],
        "max": sorted_values[-1],
        "mean": round(mean(sorted_values), 2),
        "median": round(median(sorted_values), 2),
        "p90": sorted_values[p90_idx],
    }


def flatten_spider(raw: List[Dict[str, Any]], dataset: str, split: str) -> List[Dict[str, Any]]:
    rows = []
    for index, item in enumerate(raw):
        rows.append(
            {
                "dataset": dataset,
                "split": split,
                "sample_id": f"{dataset}:{split}:{index}",
                "dialog_id": "",
                "turn_id": "",
                "db_id": item.get("db_id", ""),
                "query": item.get("query", ""),
            }
        )
    return rows


def flatten_dialog_dataset(raw: List[Dict[str, Any]], dataset: str, split: str) -> List[Dict[str, Any]]:
    rows = []
    for dialog_index, dialog in enumerate(raw):
        db_id = dialog.get("database_id") or dialog.get("db_id") or ""
        for turn_index, turn in enumerate(dialog.get("interaction", [])):
            rows.append(
                {
                    "dataset": dataset,
                    "split": split,
                    "sample_id": f"{dataset}:{split}:{dialog_index}:{turn_index}",
                    "dialog_id": f"{dataset}:{split}:{dialog_index}",
                    "turn_id": turn_index,
                    "db_id": db_id,
                    "query": turn.get("query", ""),
                }
            )
    return rows


def load_dataset_samples(benchmarks_dir: Path, include_spider_others: bool) -> List[Dict[str, Any]]:
    samples: List[Dict[str, Any]] = []
    for dataset, config in DATASETS.items():
        for split, rel_path in config["splits"].items():
            path = benchmarks_dir / rel_path
            raw = read_json(path)
            if dataset == "spider":
                samples.extend(flatten_spider(raw, dataset, split))
            else:
                samples.extend(flatten_dialog_dataset(raw, dataset, split))

    if include_spider_others:
        path = benchmarks_dir / "spider_data/train_others.json"
        if path.exists():
            raw = read_json(path)
            rows = flatten_spider(raw, "spider", "train_others")
            for row in rows:
                row["split"] = "train"
                row["sample_id"] = row["sample_id"].replace("train_others", "train:others")
            samples.extend(rows)
    return samples


def load_schema_stats(benchmarks_dir: Path) -> Dict[str, Dict[str, Any]]:
    stats = {}
    for dataset, config in DATASETS.items():
        tables_path = benchmarks_dir / config["tables"]
        tables = read_json(tables_path)
        table_counts = [len(entry.get("table_names_original") or entry.get("table_names") or []) for entry in tables]
        stats[dataset] = {
            "schema_db_count": len(tables),
            "table_per_db_min": min(table_counts) if table_counts else 0,
            "table_per_db_max": max(table_counts) if table_counts else 0,
            "table_per_db_mean": round(mean(table_counts), 2) if table_counts else 0.0,
            "table_per_db_median": round(median(table_counts), 2) if table_counts else 0.0,
        }
    return stats


def annotate_samples(samples: Iterable[Dict[str, Any]]) -> List[Dict[str, Any]]:
    annotated = []
    for row in samples:
        sql = row["query"] or ""
        tokens = sql_tokens(sql)
        enriched = dict(row)
        enriched.update(
            {
                "sql_token_len": len(tokens),
                "sql_char_len": len(sql),
                "has_order_by": int(bool(CLAUSE_PATTERNS["order_by"].search(sql))),
                "has_group_by": int(bool(CLAUSE_PATTERNS["group_by"].search(sql))),
                "has_having": int(bool(CLAUSE_PATTERNS["having"].search(sql))),
                "has_nested": int(bool(NESTED_RE.search(sql))),
            }
        )
        annotated.append(enriched)
    return annotated


def summarize(samples: List[Dict[str, Any]], schema_stats: Dict[str, Dict[str, Any]]) -> List[Dict[str, Any]]:
    rows = []
    for dataset in DATASETS:
        dataset_rows = [row for row in samples if row["dataset"] == dataset]
        train_rows = [row for row in dataset_rows if row["split"] == "train"]
        dev_rows = [row for row in dataset_rows if row["split"] == "dev"]
        train_dialogs = {row["dialog_id"] for row in train_rows if row["dialog_id"]}
        dev_dialogs = {row["dialog_id"] for row in dev_rows if row["dialog_id"]}

        token_lengths = [row["sql_token_len"] for row in dataset_rows]
        char_lengths = [row["sql_char_len"] for row in dataset_rows]
        token_stats = length_stats(token_lengths)
        char_stats = length_stats(char_lengths)
        db_ids = {row["db_id"] for row in dataset_rows if row["db_id"]}

        total_sql = len(dataset_rows)
        summary = {
            "dataset": dataset,
            "train_samples": len(train_rows),
            "dev_samples": len(dev_rows),
            "train_dialogs": len(train_dialogs) if train_dialogs else "",
            "dev_dialogs": len(dev_dialogs) if dev_dialogs else "",
            "total_sql": total_sql,
            "sample_db_count": len(db_ids),
            "schema_db_count": schema_stats[dataset]["schema_db_count"],
            "table_per_db_mean": schema_stats[dataset]["table_per_db_mean"],
            "table_per_db_median": schema_stats[dataset]["table_per_db_median"],
            "table_per_db_min": schema_stats[dataset]["table_per_db_min"],
            "table_per_db_max": schema_stats[dataset]["table_per_db_max"],
            "order_by_count": sum(row["has_order_by"] for row in dataset_rows),
            "group_by_count": sum(row["has_group_by"] for row in dataset_rows),
            "having_count": sum(row["has_having"] for row in dataset_rows),
            "nested_count": sum(row["has_nested"] for row in dataset_rows),
            "sql_token_min": token_stats["min"],
            "sql_token_mean": token_stats["mean"],
            "sql_token_median": token_stats["median"],
            "sql_token_p90": token_stats["p90"],
            "sql_token_max": token_stats["max"],
            "sql_char_min": char_stats["min"],
            "sql_char_mean": char_stats["mean"],
            "sql_char_median": char_stats["median"],
            "sql_char_p90": char_stats["p90"],
            "sql_char_max": char_stats["max"],
        }
        for key in ["order_by", "group_by", "having", "nested"]:
            count = summary[f"{key}_count"]
            summary[f"{key}_pct"] = round((count / total_sql) * 100, 2) if total_sql else 0.0
        rows.append(summary)
    return rows


def summarize_splits(samples: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    rows = []
    for dataset in DATASETS:
        for split in ["train", "dev"]:
            split_rows = [row for row in samples if row["dataset"] == dataset and row["split"] == split]
            dialogs = {row["dialog_id"] for row in split_rows if row["dialog_id"]}
            token_stats = length_stats([row["sql_token_len"] for row in split_rows])
            rows.append(
                {
                    "dataset": dataset,
                    "split": split,
                    "samples": len(split_rows),
                    "dialogs": len(dialogs) if dialogs else "",
                    "db_count": len({row["db_id"] for row in split_rows if row["db_id"]}),
                    "order_by_count": sum(row["has_order_by"] for row in split_rows),
                    "group_by_count": sum(row["has_group_by"] for row in split_rows),
                    "having_count": sum(row["has_having"] for row in split_rows),
                    "nested_count": sum(row["has_nested"] for row in split_rows),
                    "sql_token_mean": token_stats["mean"],
                    "sql_token_median": token_stats["median"],
                    "sql_token_p90": token_stats["p90"],
                    "sql_token_max": token_stats["max"],
                }
            )
    return rows


def normalize_for_radar(summary_rows: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    metric_map = {
        "sql": "total_sql",
        "db": "schema_db_count",
        "table_per_db": "table_per_db_mean",
        "order_by": "order_by_count",
        "group_by": "group_by_count",
        "having": "having_count",
        "nested": "nested_count",
        "sql_length": "sql_token_mean",
    }
    max_values = {
        label: max(float(row[source]) for row in summary_rows) or 1.0
        for label, source in metric_map.items()
    }
    rows = []
    for row in summary_rows:
        normalized = {"dataset": row["dataset"]}
        for label, source in metric_map.items():
            normalized[label] = round(float(row[source]) / max_values[label], 4)
        rows.append(normalized)
    return rows


def make_optional_radar_chart(normalized_rows: List[Dict[str, Any]], out_path: Path) -> str:
    try:
        import matplotlib.pyplot as plt  # type: ignore
    except Exception as exc:  # pragma: no cover - optional dependency
        return f"Skipped radar chart: matplotlib is not available ({exc})."

    labels = [key for key in normalized_rows[0].keys() if key != "dataset"]
    angles = [n / float(len(labels)) * 2 * math.pi for n in range(len(labels))]
    angles += angles[:1]

    fig = plt.figure(figsize=(8, 8))
    ax = plt.subplot(111, polar=True)
    ax.set_theta_offset(math.pi / 2)
    ax.set_theta_direction(-1)
    ax.set_xticks(angles[:-1])
    ax.set_xticklabels(labels)
    ax.set_ylim(0, 1)

    for row in normalized_rows:
        values = [float(row[label]) for label in labels]
        values += values[:1]
        ax.plot(angles, values, linewidth=2, label=row["dataset"])
        ax.fill(angles, values, alpha=0.08)

    ax.legend(loc="lower left", bbox_to_anchor=(-0.1, -0.1))
    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.tight_layout()
    fig.savefig(out_path, dpi=200)
    plt.close(fig)
    return f"Wrote radar chart: {out_path}"


def make_radar_svg(normalized_rows: List[Dict[str, Any]], out_path: Path) -> str:
    labels = [key for key in normalized_rows[0].keys() if key != "dataset"]
    width = 820
    height = 760
    cx = width / 2
    cy = 350
    radius = 250
    colors = {
        "spider": "#d62728",
        "sparc": "#1f77b4",
        "cosql": "#2ca02c",
    }

    def point(angle: float, value: float) -> tuple[float, float]:
        adjusted = angle - math.pi / 2
        return cx + math.cos(adjusted) * radius * value, cy + math.sin(adjusted) * radius * value

    angles = [2 * math.pi * i / len(labels) for i in range(len(labels))]
    parts = [
        '<svg xmlns="http://www.w3.org/2000/svg" width="820" height="760" viewBox="0 0 820 760">',
        '<rect width="820" height="760" fill="white"/>',
        '<text x="410" y="36" text-anchor="middle" font-family="Arial" font-size="24" font-weight="700">Benchmark Radar Analysis</text>',
    ]

    for level in [0.2, 0.4, 0.6, 0.8, 1.0]:
        ring = " ".join(f"{point(angle, level)[0]:.1f},{point(angle, level)[1]:.1f}" for angle in angles)
        parts.append(f'<polygon points="{ring}" fill="none" stroke="#d0d0d0" stroke-width="1"/>')
        parts.append(
            f'<text x="{cx + 6:.1f}" y="{cy - radius * level + 4:.1f}" font-family="Arial" font-size="12" fill="#777">{level:.1f}</text>'
        )

    for angle, label in zip(angles, labels):
        x, y = point(angle, 1.0)
        parts.append(f'<line x1="{cx:.1f}" y1="{cy:.1f}" x2="{x:.1f}" y2="{y:.1f}" stroke="#d0d0d0" stroke-width="1"/>')
        lx, ly = point(angle, 1.15)
        anchor = "middle"
        if lx < cx - 40:
            anchor = "end"
        elif lx > cx + 40:
            anchor = "start"
        parts.append(
            f'<text x="{lx:.1f}" y="{ly:.1f}" text-anchor="{anchor}" dominant-baseline="middle" '
            f'font-family="Arial" font-size="14" fill="#222">{label}</text>'
        )

    legend_y = 650
    for idx, row in enumerate(normalized_rows):
        dataset = row["dataset"]
        color = colors.get(dataset, "#555555")
        points = " ".join(f"{point(angle, float(row[label]))[0]:.1f},{point(angle, float(row[label]))[1]:.1f}" for angle, label in zip(angles, labels))
        parts.append(f'<polygon points="{points}" fill="{color}" fill-opacity="0.08" stroke="{color}" stroke-width="2.5"/>')
        parts.append(f'<line x1="{260 + idx * 120}" y1="{legend_y}" x2="{292 + idx * 120}" y2="{legend_y}" stroke="{color}" stroke-width="3"/>')
        parts.append(
            f'<text x="{300 + idx * 120}" y="{legend_y + 4}" font-family="Arial" font-size="15" fill="#222">{dataset}</text>'
        )

    parts.append("</svg>")
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(parts), encoding="utf-8")
    return f"Wrote radar SVG: {out_path}"


def write_markdown_report(
    out_path: Path,
    summary_rows: List[Dict[str, Any]],
    split_rows: List[Dict[str, Any]],
    chart_status: str,
) -> None:
    lines = [
        "# Benchmark Analysis",
        "",
        "## Dataset Summary",
        "",
        "| Dataset | Train samples | Dev samples | Train dialogs | Total SQL | Schema DB | Table/DB mean | SQL token mean | ORDER % | GROUP % | HAVING % | NESTED % |",
        "|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for row in summary_rows:
        lines.append(
            "| {dataset} | {train_samples} | {dev_samples} | {train_dialogs} | {total_sql} | "
            "{schema_db_count} | {table_per_db_mean} | {sql_token_mean} | {order_by_pct} | "
            "{group_by_pct} | {having_pct} | {nested_pct} |".format(**row)
        )

    lines.extend(
        [
            "",
            "## Split Summary",
            "",
            "| Dataset | Split | Samples | Dialogs | DB | SQL token mean | SQL token p90 | SQL token max |",
            "|---|---|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for row in split_rows:
        lines.append(
            "| {dataset} | {split} | {samples} | {dialogs} | {db_count} | "
            "{sql_token_mean} | {sql_token_p90} | {sql_token_max} |".format(**row)
        )

    lines.extend(["", "## Chart", "", chart_status, ""])
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Analyze benchmark dataset statistics.")
    parser.add_argument("--benchmarks-dir", type=Path, default=Path("benchmarks"))
    parser.add_argument("--out-dir", type=Path, default=Path("analysis/results"))
    parser.add_argument(
        "--include-spider-others",
        action="store_true",
        help="Also include spider_data/train_others.json in Spider train counts.",
    )
    args = parser.parse_args()

    samples = load_dataset_samples(args.benchmarks_dir, args.include_spider_others)
    annotated_samples = annotate_samples(samples)
    schema_stats = load_schema_stats(args.benchmarks_dir)
    summary_rows = summarize(annotated_samples, schema_stats)
    split_rows = summarize_splits(annotated_samples)
    normalized_rows = normalize_for_radar(summary_rows)

    out_dir = args.out_dir
    write_csv(
        out_dir / "summary.csv",
        summary_rows,
        list(summary_rows[0].keys()),
    )
    write_csv(
        out_dir / "split_summary.csv",
        split_rows,
        list(split_rows[0].keys()),
    )
    write_csv(
        out_dir / "normalized_radar.csv",
        normalized_rows,
        list(normalized_rows[0].keys()),
    )
    write_csv(
        out_dir / "samples.csv",
        annotated_samples,
        list(annotated_samples[0].keys()),
    )
    write_json(out_dir / "summary.json", summary_rows)
    write_json(out_dir / "split_summary.json", split_rows)
    write_json(out_dir / "normalized_radar.json", normalized_rows)

    svg_status = make_radar_svg(normalized_rows, out_dir / "radar_chart.svg")
    png_status = make_optional_radar_chart(normalized_rows, out_dir / "radar_chart.png")
    chart_status = f"{svg_status}\n\n{png_status}"
    write_markdown_report(out_dir / "report.md", summary_rows, split_rows, chart_status)

    print(f"Wrote analysis outputs to {out_dir}")
    print(svg_status)
    print(png_status)
    for row in summary_rows:
        print(
            f"{row['dataset']}: train={row['train_samples']}, dev={row['dev_samples']}, "
            f"total_sql={row['total_sql']}, sql_token_mean={row['sql_token_mean']}"
        )


if __name__ == "__main__":
    main()
