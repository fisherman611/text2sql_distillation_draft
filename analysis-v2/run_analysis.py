#!/usr/bin/env python
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from statistics import mean, median
from typing import Any, Dict, List


MODULE_DIR = Path(__file__).resolve().parent / "src"
if str(MODULE_DIR) not in sys.path:
    sys.path.insert(0, str(MODULE_DIR))

from dialog_stats import enrich_dialog_metrics
from insights import generate_analysis_report
from loaders import DATASETS, load_benchmark_data, read_json, validate_gold_alignment
from records import DbRecord, DialogRecord, SampleRecord
from render import (
    content_hash,
    make_grouped_bar_svg,
    make_line_chart_svg,
    make_radar_svg,
    write_csv,
    write_json,
    write_jsonl,
    write_markdown,
)
from schema_stats import load_schema_stats, summarize_db_rows
from sql_stats import Schema, analyze_query, annotate_samples_with_sql_stats
from train_prep import build_train_prep_outputs


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Run advanced SQL benchmark analysis.")
    parser.add_argument("--benchmarks-dir", type=Path, default=Path("benchmarks"))
    parser.add_argument("--out-dir", type=Path, default=Path("analysis-v2/results"))
    parser.add_argument("--include-spider-others", action="store_true")
    parser.add_argument("--skip-train-prep", action="store_true")
    parser.add_argument("--skip-figures", action="store_true")
    return parser.parse_args()


def length_stats(values: List[int]) -> Dict[str, float | int]:
    if not values:
        return {"min": 0, "max": 0, "mean": 0.0, "median": 0.0, "p90": 0.0}
    ordered = sorted(values)
    index = min(len(ordered) - 1, max(0, int(len(ordered) * 0.9) - 1))
    return {
        "min": ordered[0],
        "max": ordered[-1],
        "mean": round(mean(ordered), 2),
        "median": round(median(ordered), 2),
        "p90": ordered[index],
    }


def build_db_level_rows(db_rows: List[Dict[str, Any]], sample_rows: List[Dict[str, Any]], dialog_rows: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    sample_usage: Dict[tuple[str, str], int] = {}
    dialog_usage: Dict[tuple[str, str], int] = {}
    for row in sample_rows:
        key = (row["dataset"], row["db_id"])
        sample_usage[key] = sample_usage.get(key, 0) + 1
    for row in dialog_rows:
        key = (row["dataset"], row["db_id"])
        dialog_usage[key] = dialog_usage.get(key, 0) + 1

    output = []
    for row in db_rows:
        updated = dict(row)
        key = (row["dataset"], row["db_id"])
        updated["sample_count"] = sample_usage.get(key, 0)
        updated["dialog_count"] = dialog_usage.get(key, 0)
        output.append(updated)
    output.sort(key=lambda item: (item["dataset"], item["db_id"]))
    return output


def build_dataset_summary(
    sample_rows: List[Dict[str, Any]],
    dialog_rows: List[Dict[str, Any]],
    db_summary: Dict[str, Dict[str, Any]],
) -> List[Dict[str, Any]]:
    rows: List[Dict[str, Any]] = []
    for dataset in DATASETS:
        dataset_rows = [row for row in sample_rows if row["dataset"] == dataset]
        train_rows = [row for row in dataset_rows if row["split"] == "train"]
        dev_rows = [row for row in dataset_rows if row["split"] == "dev"]
        train_dialogs = [row for row in dialog_rows if row["dataset"] == dataset and row["split"] == "train"]
        dev_dialogs = [row for row in dialog_rows if row["dataset"] == dataset and row["split"] == "dev"]
        parse_ok_rows = [row for row in dataset_rows if row["parse_ok"] == 1]

        token_stats = length_stats([row["sql_token_len"] for row in dataset_rows])
        char_stats = length_stats([row["sql_char_len"] for row in dataset_rows])
        counts = {name: len([row for row in parse_ok_rows if row["hardness"] == name]) for name in ("easy", "medium", "hard", "extra")}
        total_sql = len(dataset_rows)
        hardness_total = max(len(parse_ok_rows), 1)
        summary = {
            "dataset": dataset,
            "train_samples": len(train_rows),
            "dev_samples": len(dev_rows),
            "train_dialogs": len(train_dialogs),
            "dev_dialogs": len(dev_dialogs),
            "total_sql": total_sql,
            "sample_db_count": len({row["db_id"] for row in dataset_rows}),
            "parse_success_rate": round((len(parse_ok_rows) / total_sql) * 100, 2) if total_sql else 0.0,
            "order_by_count": sum(row["has_order_by"] for row in dataset_rows),
            "group_by_count": sum(row["has_group_by"] for row in dataset_rows),
            "having_count": sum(row["has_having"] for row in dataset_rows),
            "nested_count": sum((row["nested_subquery_count"] or 0) > 0 for row in dataset_rows),
            "order_by_pct": round((sum(row["has_order_by"] for row in dataset_rows) / total_sql) * 100, 2) if total_sql else 0.0,
            "group_by_pct": round((sum(row["has_group_by"] for row in dataset_rows) / total_sql) * 100, 2) if total_sql else 0.0,
            "having_pct": round((sum(row["has_having"] for row in dataset_rows) / total_sql) * 100, 2) if total_sql else 0.0,
            "nested_pct": round((sum((row["nested_subquery_count"] or 0) > 0 for row in dataset_rows) / total_sql) * 100, 2) if total_sql else 0.0,
            "easy_count": counts["easy"],
            "medium_count": counts["medium"],
            "hard_count": counts["hard"],
            "extra_count": counts["extra"],
            "easy_pct": round((counts["easy"] / hardness_total) * 100, 2),
            "medium_pct": round((counts["medium"] / hardness_total) * 100, 2),
            "hard_pct": round((counts["hard"] / hardness_total) * 100, 2),
            "extra_pct": round((counts["extra"] / hardness_total) * 100, 2),
            "hard_or_extra_pct": round(((counts["hard"] + counts["extra"]) / hardness_total) * 100, 2),
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
            "join_count_mean": round(mean(row["join_count"] for row in parse_ok_rows), 2) if parse_ok_rows else 0.0,
            "aggregation_count_mean": round(mean(row["aggregation_count"] for row in parse_ok_rows), 2) if parse_ok_rows else 0.0,
            "referenced_table_count_mean": round(mean(row["referenced_table_count"] for row in parse_ok_rows), 2) if parse_ok_rows else 0.0,
            "referenced_column_count_mean": round(mean(row["referenced_column_count"] for row in parse_ok_rows), 2) if parse_ok_rows else 0.0,
            "exact_prev_sql_reuse_pct": round(
                mean(row["exact_prev_sql_reuse"] for row in dataset_rows if row["prev_sql_exists"]) * 100, 2
            )
            if any(row["prev_sql_exists"] for row in dataset_rows)
            else 0.0,
            "new_table_intro_pct": round(
                mean(row["new_table_introduction"] for row in dataset_rows if row["prev_sql_exists"]) * 100, 2
            )
            if any(row["prev_sql_exists"] for row in dataset_rows)
            else 0.0,
            "clarification_like_pct": round(
                mean(row["is_clarification_like"] for row in dataset_rows if row["is_dialog"]) * 100, 2
            )
            if any(row["is_dialog"] for row in dataset_rows)
            else 0.0,
        }
        summary.update(db_summary[dataset])
        rows.append(summary)
    return rows


def build_split_summary(sample_rows: List[Dict[str, Any]], dialog_rows: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    rows: List[Dict[str, Any]] = []
    for dataset in DATASETS:
        for split in ("train", "dev"):
            split_rows = [row for row in sample_rows if row["dataset"] == dataset and row["split"] == split]
            parse_ok_rows = [row for row in split_rows if row["parse_ok"] == 1]
            dialogs = [row for row in dialog_rows if row["dataset"] == dataset and row["split"] == split]
            token_stats = length_stats([row["sql_token_len"] for row in split_rows])
            hard_or_extra = len([row for row in parse_ok_rows if row["hardness"] in {"hard", "extra"}])
            rows.append(
                {
                    "dataset": dataset,
                    "split": split,
                    "samples": len(split_rows),
                    "dialogs": len(dialogs),
                    "db_count": len({row["db_id"] for row in split_rows}),
                    "parse_success_rate": round((len(parse_ok_rows) / len(split_rows)) * 100, 2) if split_rows else 0.0,
                    "sql_token_mean": token_stats["mean"],
                    "sql_token_median": token_stats["median"],
                    "sql_token_p90": token_stats["p90"],
                    "sql_token_max": token_stats["max"],
                    "hard_or_extra_pct": round((hard_or_extra / max(len(parse_ok_rows), 1)) * 100, 2),
                }
            )
    return rows


def build_turn_complexity_series(sample_rows: List[Dict[str, Any]]) -> Dict[str, List[Dict[str, Any]]]:
    series: Dict[str, List[Dict[str, Any]]] = {}
    for dataset in ("sparc", "cosql"):
        points = []
        dataset_rows = [row for row in sample_rows if row["dataset"] == dataset and row["is_dialog"] and row["parse_ok"] == 1]
        grouped: Dict[int, List[int]] = {}
        for row in dataset_rows:
            grouped.setdefault(row["turn_index"], []).append(row["hardness_rank"])
        for turn_index in sorted(grouped):
            points.append({"turn_index": turn_index, "avg_hardness_rank": round(mean(grouped[turn_index]), 2)})
        series[dataset] = points
    return series


def normalized_radar_rows(summary_rows: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    metric_keys = [
        "total_sql",
        "schema_db_count",
        "table_per_db_mean",
        "column_per_db_mean",
        "hard_or_extra_pct",
        "nested_pct",
        "join_count_mean",
        "aggregation_count_mean",
    ]
    maxima = {key: max(float(row[key]) for row in summary_rows) or 1.0 for key in metric_keys}
    output = []
    for row in summary_rows:
        normalized = {"dataset": row["dataset"]}
        for key in metric_keys:
            normalized[key] = round(float(row[key]) / maxima[key], 4)
        output.append(normalized)
    return output


def load_metric_spec(base_dir: Path) -> Dict[str, Any]:
    spec_path = base_dir / "metric_spec.json"
    return read_json(spec_path)


def build_validation_samples(sample_rows: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    selected = [row for row in sample_rows if row["parse_ok"] == 1][:20]
    return [
        {
            "dataset": row["dataset"],
            "sample_id": row["sample_id"],
            "db_id": row["db_id"],
            "query": row["query"],
            "hardness": row["hardness"],
            "join_count": row["join_count"],
            "aggregation_count": row["aggregation_count"],
            "referenced_table_count": row["referenced_table_count"],
            "referenced_column_count": row["referenced_column_count"],
        }
        for row in selected
    ]


def validate_counts(source_meta: Dict[str, Dict[str, Any]], sample_rows: List[Dict[str, Any]], dialog_rows: List[Dict[str, Any]]) -> Dict[str, Any]:
    validation: Dict[str, Any] = {}
    for dataset in DATASETS:
        validation[dataset] = {}
        for split in ("train", "dev"):
            expected = source_meta[dataset]["splits"][split]["count"]
            if dataset == "spider" and split == "train" and "train_others" in source_meta[dataset]["splits"]:
                expected += source_meta[dataset]["splits"]["train_others"]["count"]
            actual = len([row for row in sample_rows if row["dataset"] == dataset and row["split"] == split])
            expected_dialogs = source_meta[dataset]["splits"][split]["dialogs"]
            actual_dialogs = len([row for row in dialog_rows if row["dataset"] == dataset and row["split"] == split])
            validation[dataset][split] = {
                "sample_count_expected": expected,
                "sample_count_actual": actual,
                "sample_count_match": expected == actual,
                "dialog_count_expected": expected_dialogs,
                "dialog_count_actual": actual_dialogs,
                "dialog_count_match": expected_dialogs == actual_dialogs,
            }
    return validation


def main() -> None:
    args = parse_args()
    base_dir = Path(__file__).resolve().parent
    metric_spec = load_metric_spec(base_dir)

    samples, dialogs, source_meta = load_benchmark_data(args.benchmarks_dir, args.include_spider_others)
    sample_rows = [record.to_dict() for record in samples]
    dialog_rows = [record.to_dict() for record in dialogs]

    db_records, schema_lookup, table_entry_meta = load_schema_stats(args.benchmarks_dir)
    db_rows = [record.to_dict() for record in db_records]

    annotated_samples, parse_failures = annotate_samples_with_sql_stats(sample_rows, schema_lookup)
    enriched_samples, dialog_summary_rows = enrich_dialog_metrics(annotated_samples, dialog_rows)
    db_level_rows = build_db_level_rows(db_rows, enriched_samples, dialog_rows)
    db_summary = summarize_db_rows(db_level_rows)
    dataset_summary = build_dataset_summary(enriched_samples, dialog_rows, db_summary)
    split_summary = build_split_summary(enriched_samples, dialog_rows)

    report = generate_analysis_report(dataset_summary, dialog_summary_rows)

    out_dir = args.out_dir
    write_csv(out_dir / "dataset_summary.csv", dataset_summary)
    write_json(out_dir / "dataset_summary.json", dataset_summary)
    write_csv(out_dir / "split_summary.csv", split_summary)
    write_json(out_dir / "split_summary.json", split_summary)
    write_csv(out_dir / "sample_level.csv", enriched_samples)
    write_csv(out_dir / "dialog_level.csv", dialog_summary_rows)
    write_csv(out_dir / "db_level.csv", db_level_rows)
    write_markdown(out_dir / "analysis_report.md", report)
    write_json(out_dir / "metric_definitions.json", metric_spec)
    write_jsonl(out_dir / "parse_failures.jsonl", parse_failures)
    write_json(out_dir / "validation_samples.json", build_validation_samples(enriched_samples))

    if not args.skip_figures:
        figures_dir = out_dir / "figures"
        radar_rows = normalized_radar_rows(dataset_summary)
        make_radar_svg(
            radar_rows,
            [
                "total_sql",
                "schema_db_count",
                "table_per_db_mean",
                "column_per_db_mean",
                "hard_or_extra_pct",
                "nested_pct",
                "join_count_mean",
                "aggregation_count_mean",
            ],
            figures_dir / "radar_chart.svg",
        )
        make_grouped_bar_svg(
            dataset_summary,
            ["spider", "sparc", "cosql"],
            ["easy_pct", "medium_pct", "hard_pct", "extra_pct"],
            "Hardness Distribution (%)",
            figures_dir / "hardness_distribution.svg",
        )
        make_grouped_bar_svg(
            dataset_summary,
            ["spider", "sparc", "cosql"],
            ["table_per_db_mean", "column_per_db_mean", "foreign_key_per_db_mean"],
            "Schema Complexity Overview",
            figures_dir / "schema_complexity.svg",
        )
        make_line_chart_svg(
            build_turn_complexity_series(enriched_samples),
            "Dialog Turn Complexity",
            figures_dir / "dialog_turn_complexity.svg",
        )

    if not args.skip_train_prep:
        prep = build_train_prep_outputs(enriched_samples, db_level_rows)
        tagged_rows = prep["sample_rows_with_tags"]
        write_csv(out_dir / "sample_level.csv", tagged_rows)
        train_dir = out_dir / "train_prep"
        write_csv(train_dir / "single_turn_manifest.csv", prep["single_turn_manifest"])
        write_jsonl(train_dir / "single_turn_manifest.jsonl", prep["single_turn_manifest"])
        write_jsonl(train_dir / "multi_turn_manifest.jsonl", prep["multi_turn_manifest"])
        write_jsonl(train_dir / "edit_turn_manifest.jsonl", prep["edit_turn_manifest"])
        write_json(train_dir / "hardness_buckets.json", prep["hardness_buckets"])
        write_json(train_dir / "schema_complexity_buckets.json", prep["schema_complexity_buckets"])
        write_json(train_dir / "phenomenon_tags.json", prep["phenomenon_tags"])
        write_markdown(train_dir / "sampling_recommendations.md", prep["sampling_recommendations"])

    count_validation = validate_counts(source_meta, enriched_samples, dialog_rows)
    gold_alignment = validate_gold_alignment(args.benchmarks_dir, dialogs)
    schema_validation = {
        dataset: {
            "tables_json_db_count": table_entry_meta[dataset]["count"],
            "db_level_count": len([row for row in db_level_rows if row["dataset"] == dataset]),
            "count_match": table_entry_meta[dataset]["count"] == len([row for row in db_level_rows if row["dataset"] == dataset]),
        }
        for dataset in DATASETS
    }
    smoke_metrics, smoke_error = analyze_query(
        "SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50",
        Schema(schema_lookup["spider"]["flight_4"]["schema_dict"]),
    )
    metadata = {
        "args": {
            "benchmarks_dir": str(args.benchmarks_dir),
            "out_dir": str(args.out_dir),
            "include_spider_others": args.include_spider_others,
            "skip_train_prep": args.skip_train_prep,
            "skip_figures": args.skip_figures,
        },
        "dataset_summary_hash": content_hash(dataset_summary),
        "split_summary_hash": content_hash(split_summary),
        "validations": {
            "count_validation": count_validation,
            "gold_alignment": gold_alignment,
            "schema_validation": schema_validation,
            "parser_validation_sample_count": len(build_validation_samples(enriched_samples)),
            "fallback_smoke_test_passed": smoke_metrics["parse_ok"] == 0 and bool(smoke_error),
        },
        "parse_failure_count": len(parse_failures),
    }
    write_json(out_dir / "run_metadata.json", metadata)

    print(f"Wrote analysis-v2 outputs to {out_dir}")
    print(f"Dataset summary hash: {metadata['dataset_summary_hash']}")


if __name__ == "__main__":
    main()
