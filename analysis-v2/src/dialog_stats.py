from __future__ import annotations

from collections import defaultdict
from statistics import mean
from typing import Any, Dict, List, Tuple

from sql_stats import normalize_query, sql_tokens


def _levenshtein(seq1: List[str], seq2: List[str]) -> int:
    if not seq1:
        return len(seq2)
    if not seq2:
        return len(seq1)
    previous = list(range(len(seq2) + 1))
    for i, token1 in enumerate(seq1, start=1):
        current = [i]
        for j, token2 in enumerate(seq2, start=1):
            insertion = current[j - 1] + 1
            deletion = previous[j] + 1
            substitution = previous[j - 1] + (0 if token1 == token2 else 1)
            current.append(min(insertion, deletion, substitution))
        previous = current
    return previous[-1]


def enrich_dialog_metrics(
    sample_rows: List[Dict[str, Any]],
    dialog_rows: List[Dict[str, Any]],
) -> Tuple[List[Dict[str, Any]], List[Dict[str, Any]]]:
    dialog_lookup = {row["dialog_id"]: dict(row) for row in dialog_rows}
    grouped_rows: Dict[str, List[Dict[str, Any]]] = defaultdict(list)
    non_dialog_rows: List[Dict[str, Any]] = []

    for row in sample_rows:
        if row["is_dialog"]:
            grouped_rows[row["dialog_id"]].append(dict(row))
        else:
            enriched = dict(row)
            enriched.update(
                {
                    "dialog_num_turns": 0,
                    "prev_sql_exists": 0,
                    "exact_prev_sql_reuse": 0,
                    "sql_token_edit_distance": None,
                    "delta_order_by": 0,
                    "delta_group_by": 0,
                    "delta_having": 0,
                    "delta_limit": 0,
                    "delta_nested": 0,
                    "delta_distinct": 0,
                    "new_table_introduction": 0,
                    "new_tables_added_count": 0,
                    "hardness_delta": None,
                    "is_clarification_like": 0,
                }
            )
            non_dialog_rows.append(enriched)

    enriched_dialog_rows: List[Dict[str, Any]] = []
    dialog_summary_rows: List[Dict[str, Any]] = []

    for dialog_id, rows in grouped_rows.items():
        rows.sort(key=lambda item: item["turn_index"])
        num_turns = len(rows)
        previous_row: Dict[str, Any] | None = None
        clause_changes = 0
        exact_reuse = 0
        new_table_turns = 0
        edit_distances: List[int] = []
        hardness_ranks: List[int] = []
        clarification_turns = 0

        for row in rows:
            enriched = dict(row)
            enriched["dialog_num_turns"] = num_turns
            enriched["is_clarification_like"] = int("|" in (row["utterance"] or ""))
            if enriched["is_clarification_like"]:
                clarification_turns += 1
            if row["parse_ok"] == 1:
                hardness_ranks.append(row["hardness_rank"])

            if previous_row is None:
                enriched.update(
                    {
                        "prev_sql_exists": 0,
                        "exact_prev_sql_reuse": 0,
                        "sql_token_edit_distance": None,
                        "delta_order_by": 0,
                        "delta_group_by": 0,
                        "delta_having": 0,
                        "delta_limit": 0,
                        "delta_nested": 0,
                        "delta_distinct": 0,
                        "new_table_introduction": 0,
                        "new_tables_added_count": 0,
                        "hardness_delta": None,
                    }
                )
            else:
                prev_norm = normalize_query(previous_row["query"])
                curr_norm = normalize_query(row["query"])
                edit_distance = _levenshtein(sql_tokens(previous_row["query"]), sql_tokens(row["query"]))
                exact_prev = int(prev_norm == curr_norm)
                delta_order = int(previous_row["has_order_by"] != row["has_order_by"])
                delta_group = int(previous_row["has_group_by"] != row["has_group_by"])
                delta_having = int(previous_row["has_having"] != row["has_having"])
                delta_limit = int(previous_row["has_limit"] != row["has_limit"])
                delta_nested = int(previous_row["nested_subquery_count"] != row["nested_subquery_count"])
                delta_distinct = int(previous_row["has_distinct"] != row["has_distinct"])
                current_tables = set(row.get("table_refs") or [])
                previous_tables = set(previous_row.get("table_refs") or [])
                new_tables = sorted(current_tables - previous_tables)
                new_table_intro = int(bool(new_tables))
                clause_changes += int(
                    bool(delta_order or delta_group or delta_having or delta_limit or delta_nested or delta_distinct)
                )
                exact_reuse += exact_prev
                new_table_turns += new_table_intro
                edit_distances.append(edit_distance)
                enriched.update(
                    {
                        "prev_sql_exists": 1,
                        "exact_prev_sql_reuse": exact_prev,
                        "sql_token_edit_distance": edit_distance,
                        "delta_order_by": delta_order,
                        "delta_group_by": delta_group,
                        "delta_having": delta_having,
                        "delta_limit": delta_limit,
                        "delta_nested": delta_nested,
                        "delta_distinct": delta_distinct,
                        "new_table_introduction": new_table_intro,
                        "new_tables_added_count": len(new_tables),
                        "hardness_delta": (
                            row["hardness_rank"] - previous_row["hardness_rank"]
                            if row["parse_ok"] == 1 and previous_row["parse_ok"] == 1
                            else None
                        ),
                    }
                )
            previous_row = enriched
            enriched_dialog_rows.append(enriched)

        dialog_info = dialog_lookup[dialog_id]
        turns_with_prev = max(0, num_turns - 1)
        dialog_summary_rows.append(
            {
                "dataset": dialog_info["dataset"],
                "split": dialog_info["split"],
                "dialog_id": dialog_id,
                "db_id": dialog_info["db_id"],
                "num_turns": num_turns,
                "avg_sql_token_len": round(mean(row["sql_token_len"] for row in rows), 2),
                "max_sql_token_len": max(row["sql_token_len"] for row in rows),
                "avg_hardness_rank": round(mean(hardness_ranks), 2) if hardness_ranks else None,
                "max_hardness_rank": max(hardness_ranks) if hardness_ranks else None,
                "pct_exact_prev_sql_reuse": round((exact_reuse / turns_with_prev) * 100, 2) if turns_with_prev else 0.0,
                "pct_new_table_turns": round((new_table_turns / turns_with_prev) * 100, 2) if turns_with_prev else 0.0,
                "pct_clause_change_turns": round((clause_changes / turns_with_prev) * 100, 2) if turns_with_prev else 0.0,
                "avg_sql_token_edit_distance": round(mean(edit_distances), 2) if edit_distances else 0.0,
                "clarification_turn_count": clarification_turns,
            }
        )

    all_rows = non_dialog_rows + enriched_dialog_rows
    all_rows.sort(key=lambda item: (item["dataset"], item["split"], item["sample_id"]))
    dialog_summary_rows.sort(key=lambda item: (item["dataset"], item["split"], item["dialog_id"]))
    return all_rows, dialog_summary_rows
