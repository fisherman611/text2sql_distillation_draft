from __future__ import annotations

from collections import defaultdict
from pathlib import Path
from statistics import mean, median
from typing import Any, Dict, List, Tuple

from loaders import DATASETS, read_json
from records import DbRecord


def _build_schema_dict(entry: Dict[str, Any]) -> Dict[str, List[str]]:
    schema: Dict[str, List[str]] = defaultdict(list)
    table_names = entry.get("table_names_original") or entry.get("table_names") or []
    column_names = entry.get("column_names_original") or entry.get("column_names") or []
    for table_idx, column_name in column_names:
        if table_idx < 0:
            continue
        table_name = str(table_names[table_idx]).lower()
        schema[table_name].append(str(column_name).lower())
    return dict(schema)


def _connected_components(table_count: int, edges: List[Tuple[int, int]]) -> int:
    if table_count == 0:
        return 0
    adjacency: Dict[int, set[int]] = {index: set() for index in range(table_count)}
    for left, right in edges:
        adjacency[left].add(right)
        adjacency[right].add(left)
    visited = set()
    count = 0
    for node in range(table_count):
        if node in visited:
            continue
        count += 1
        stack = [node]
        visited.add(node)
        while stack:
            current = stack.pop()
            for neighbor in adjacency[current]:
                if neighbor not in visited:
                    visited.add(neighbor)
                    stack.append(neighbor)
    return count


def load_schema_stats(
    benchmarks_dir: Path,
) -> Tuple[List[DbRecord], Dict[str, Dict[str, Any]], Dict[str, Dict[str, Any]]]:
    db_rows: List[DbRecord] = []
    schema_lookup: Dict[str, Dict[str, Any]] = {}
    dataset_table_entries: Dict[str, Dict[str, Any]] = {}

    for dataset, config in DATASETS.items():
        tables_path = benchmarks_dir / config["tables"]
        entries = read_json(tables_path)
        schema_lookup[dataset] = {}
        dataset_table_entries[dataset] = {"path": str(tables_path), "count": len(entries)}
        for entry in entries:
            db_id = entry["db_id"]
            table_names = entry.get("table_names_original") or entry.get("table_names") or []
            column_names = entry.get("column_names_original") or entry.get("column_names") or []
            foreign_keys = entry.get("foreign_keys") or []
            table_count = len(table_names)
            column_count = len([column for column in column_names if column[0] >= 0])
            avg_columns = round(column_count / table_count, 2) if table_count else 0.0
            fk_edges = sorted({tuple(sorted((column_names[left][0], column_names[right][0]))) for left, right in foreign_keys})
            fk_edges = [edge for edge in fk_edges if edge[0] >= 0 and edge[1] >= 0]
            possible_edges = table_count * (table_count - 1) / 2 if table_count > 1 else 1
            density = round(len(fk_edges) / possible_edges, 4) if possible_edges else 0.0
            record = DbRecord(
                dataset=dataset,
                db_id=db_id,
                table_count=table_count,
                column_count=column_count,
                foreign_key_count=len(foreign_keys),
                avg_columns_per_table=avg_columns,
                schema_edge_count=len(fk_edges),
                schema_connected_components=_connected_components(table_count, fk_edges),
                schema_graph_density=density,
                source_path=str(tables_path),
            )
            db_rows.append(record)
            schema_lookup[dataset][db_id] = {
                "entry": entry,
                "schema_dict": _build_schema_dict(entry),
            }

    return db_rows, schema_lookup, dataset_table_entries


def summarize_db_rows(db_rows: List[Dict[str, Any]]) -> Dict[str, Dict[str, Any]]:
    summary: Dict[str, Dict[str, Any]] = {}
    for dataset in DATASETS:
        dataset_rows = [row for row in db_rows if row["dataset"] == dataset]
        table_counts = [row["table_count"] for row in dataset_rows]
        column_counts = [row["column_count"] for row in dataset_rows]
        fk_counts = [row["foreign_key_count"] for row in dataset_rows]
        summary[dataset] = {
            "schema_db_count": len(dataset_rows),
            "table_per_db_mean": round(mean(table_counts), 2) if table_counts else 0.0,
            "table_per_db_median": round(median(table_counts), 2) if table_counts else 0.0,
            "table_per_db_min": min(table_counts) if table_counts else 0,
            "table_per_db_max": max(table_counts) if table_counts else 0,
            "column_per_db_mean": round(mean(column_counts), 2) if column_counts else 0.0,
            "column_per_db_median": round(median(column_counts), 2) if column_counts else 0.0,
            "foreign_key_per_db_mean": round(mean(fk_counts), 2) if fk_counts else 0.0,
            "foreign_key_per_db_median": round(median(fk_counts), 2) if fk_counts else 0.0,
            "schema_density_mean": round(mean(row["schema_graph_density"] for row in dataset_rows), 4)
            if dataset_rows
            else 0.0,
            "schema_components_mean": round(mean(row["schema_connected_components"] for row in dataset_rows), 2)
            if dataset_rows
            else 0.0,
        }
    return summary
