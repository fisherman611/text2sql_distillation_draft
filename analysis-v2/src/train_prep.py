from __future__ import annotations

from collections import defaultdict
from statistics import median
from typing import Any, Dict, List, Tuple


def _base_manifest_record(row: Dict[str, Any]) -> Dict[str, Any]:
    return {
        "dataset": row["dataset"],
        "split": row["split"],
        "db_id": row["db_id"],
        "sample_id": row["sample_id"],
        "dialog_id": row["dialog_id"],
        "turn_id": row["turn_id"],
        "turn_index": row["turn_index"],
        "utterance": row["utterance"],
        "query": row["query"],
        "source_path": row["source_path"],
        "source_index": row["source_index"],
        "source_dialog_index": row["source_dialog_index"],
        "source_turn_index": row["source_turn_index"],
        "hardness": row["hardness"],
        "hardness_rank": row["hardness_rank"],
        "sql_token_len": row["sql_token_len"],
        "referenced_table_count": row["referenced_table_count"],
        "analysis_tags": row["analysis_tags"],
    }


def _build_tags(row: Dict[str, Any]) -> List[str]:
    tags: List[str] = []
    for name in ("order_by", "group_by", "having", "distinct", "limit"):
        if row.get(f"has_{name}"):
            tags.append(name)
    for name in ("union", "intersect", "except"):
        if row.get(f"has_{name}"):
            tags.append(name)
    if row.get("nested_subquery_count"):
        tags.append("nested")
    if row.get("is_dialog"):
        tags.append("dialog_turn")
    if row.get("exact_prev_sql_reuse"):
        tags.append("exact_prev_sql_reuse")
    if row.get("new_table_introduction"):
        tags.append("new_table_introduction")
    if row.get("is_clarification_like"):
        tags.append("clarification_like")
    if row.get("hardness"):
        tags.append(f"hardness:{row['hardness']}")
    return sorted(tags)


def build_train_prep_outputs(sample_rows: List[Dict[str, Any]], db_rows: List[Dict[str, Any]]) -> Dict[str, Any]:
    enriched_rows: List[Dict[str, Any]] = []
    for row in sample_rows:
        updated = dict(row)
        updated["analysis_tags"] = _build_tags(updated)
        enriched_rows.append(updated)

    single_turn_manifest = [_base_manifest_record(row) for row in enriched_rows]

    dialog_groups: Dict[Tuple[str, str, str], List[Dict[str, Any]]] = defaultdict(list)
    for row in enriched_rows:
        if row["is_dialog"]:
            dialog_groups[(row["dataset"], row["split"], row["dialog_id"])].append(row)

    multi_turn_manifest: List[Dict[str, Any]] = []
    edit_turn_manifest: List[Dict[str, Any]] = []
    for (_, _, dialog_id), rows in dialog_groups.items():
        rows.sort(key=lambda item: item["turn_index"])
        history: List[Dict[str, Any]] = []
        for row in rows:
            manifest_row = _base_manifest_record(row)
            manifest_row["history"] = list(history)
            multi_turn_manifest.append(manifest_row)
            if history:
                edit_turn_manifest.append(
                    {
                        **manifest_row,
                        "previous_utterance": history[-1]["utterance"],
                        "previous_query": history[-1]["query"],
                        "sql_token_edit_distance": row["sql_token_edit_distance"],
                    }
                )
            history.append({"turn_index": row["turn_index"], "utterance": row["utterance"], "query": row["query"]})

    hardness_buckets: Dict[str, List[str]] = defaultdict(list)
    phenomenon_tags: Dict[str, List[str]] = defaultdict(list)
    for row in enriched_rows:
        if row["hardness"]:
            hardness_buckets[row["hardness"]].append(row["sample_id"])
        for tag in row["analysis_tags"]:
            phenomenon_tags[tag].append(row["sample_id"])

    complexity_scores = sorted(
        (row["db_id"], row["table_count"] + row["foreign_key_count"]) for row in db_rows
    )
    thresholds = [0, 0]
    if complexity_scores:
        scores_only = [score for _, score in complexity_scores]
        thresholds[0] = scores_only[len(scores_only) // 3]
        thresholds[1] = scores_only[(2 * len(scores_only)) // 3]

    schema_complexity_buckets: Dict[str, Any] = {"thresholds": thresholds, "buckets": defaultdict(list)}
    for db_row in db_rows:
        score = db_row["table_count"] + db_row["foreign_key_count"]
        if score <= thresholds[0]:
            bucket = "low"
        elif score <= thresholds[1]:
            bucket = "medium"
        else:
            bucket = "high"
        schema_complexity_buckets["buckets"][bucket].append(db_row["db_id"])
    schema_complexity_buckets["buckets"] = dict(schema_complexity_buckets["buckets"])

    sampling_recommendations = [
        "# Sampling Recommendations",
        "",
        "## Single-turn baseline",
        "- Start from `single_turn_manifest` with Spider as the majority share.",
        "- Include flattened SParC and CoSQL turns for conversational residue and paraphrase diversity.",
        "",
        "## Multi-turn baseline",
        "- Use `multi_turn_manifest` from SParC and CoSQL only.",
        "- Mix SParC for cleaner contextual edits and CoSQL for clarification-heavy dialogue.",
        "",
        "## Hybrid default",
        "- Stage 1: Spider-heavy single-turn SFT.",
        "- Stage 2: joint SParC and CoSQL multi-turn continuation training.",
        "- Stage 3: oversample `edit_turn_manifest` rows tagged with `nested`, `having`, and `new_table_introduction`.",
        "",
        "## Hardness balancing",
        f"- Median DB complexity score: {median(score for _, score in complexity_scores) if complexity_scores else 0}.",
        "- Keep explicit buckets by SQL hardness and DB complexity for controlled ablations.",
    ]

    return {
        "sample_rows_with_tags": enriched_rows,
        "single_turn_manifest": single_turn_manifest,
        "multi_turn_manifest": multi_turn_manifest,
        "edit_turn_manifest": edit_turn_manifest,
        "hardness_buckets": dict(hardness_buckets),
        "schema_complexity_buckets": schema_complexity_buckets,
        "phenomenon_tags": dict(phenomenon_tags),
        "sampling_recommendations": "\n".join(sampling_recommendations) + "\n",
    }
