from __future__ import annotations

import copy
import re
import sys
import types
from pathlib import Path
from typing import Any, Dict, List, Optional, Set, Tuple


EVALUATOR_DIR = Path(__file__).resolve().parents[2] / "src" / "evaluator"
if str(EVALUATOR_DIR) not in sys.path:
    sys.path.insert(0, str(EVALUATOR_DIR))

if "nltk" not in sys.modules:
    nltk_stub = types.ModuleType("nltk")

    def _word_tokenizer(text: str) -> List[str]:
        return re.findall(
            r'__val_\d+_\d+__|[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)+|[A-Za-z_][A-Za-z0-9_]*|\d+(?:\.\d+)?|!=|>=|<=|<>|[(),;.*=<>+\-/"]',
            text,
        )

    nltk_stub.word_tokenizer = _word_tokenizer  # type: ignore[attr-defined]
    sys.modules["nltk"] = nltk_stub

import process_sql  # type: ignore
from process_sql import AGG_OPS, ORDER_OPS, Schema, TABLE_TYPE, get_sql  # type: ignore

if not hasattr(process_sql, "word_tokenize"):
    process_sql.word_tokenize = sys.modules["nltk"].word_tokenizer  # type: ignore[attr-defined]


TOKEN_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_]*|\d+(?:\.\d+)?|<=|>=|<>|!=|==|[(),.*=<>+\-/;]")
CLAUSE_PATTERNS = {
    "order_by": re.compile(r"\border\s+by\b", re.IGNORECASE),
    "group_by": re.compile(r"\bgroup\s+by\b", re.IGNORECASE),
    "having": re.compile(r"\bhaving\b", re.IGNORECASE),
    "distinct": re.compile(r"\bdistinct\b", re.IGNORECASE),
    "limit": re.compile(r"\blimit\b", re.IGNORECASE),
    "union": re.compile(r"\bunion\b", re.IGNORECASE),
    "intersect": re.compile(r"\bintersect\b", re.IGNORECASE),
    "except": re.compile(r"\bexcept\b", re.IGNORECASE),
}
NESTED_RE = re.compile(
    r"\(\s*select\b|\b(intersect|union|except)\b|\b(in|exists)\s*\(\s*select\b",
    re.IGNORECASE,
)
HARDNESS_RANK = {"easy": 0, "medium": 1, "hard": 2, "extra": 3}


def sql_tokens(sql: str) -> List[str]:
    return TOKEN_RE.findall(sql or "")


def normalize_query(sql: str) -> str:
    return " ".join(sql_tokens((sql or "").lower()))


def _is_col_unit(value: Any) -> bool:
    return isinstance(value, tuple) and len(value) == 3 and isinstance(value[0], int) and isinstance(value[1], str)


def _is_val_unit(value: Any) -> bool:
    return isinstance(value, tuple) and len(value) == 3 and isinstance(value[0], int) and (
        value[1] is None or isinstance(value[1], tuple)
    )


def fallback_sql_metrics(sql: str) -> Dict[str, Any]:
    tokens = sql_tokens(sql)
    return {
        "parse_ok": 0,
        "parse_error": "",
        "sql_token_len": len(tokens),
        "sql_char_len": len(sql),
        "hardness": "",
        "hardness_rank": -1,
        "join_count": None,
        "selected_column_count": None,
        "where_predicate_count": None,
        "aggregation_count": None,
        "has_distinct": int(bool(CLAUSE_PATTERNS["distinct"].search(sql))),
        "has_limit": int(bool(CLAUSE_PATTERNS["limit"].search(sql))),
        "has_order_by": int(bool(CLAUSE_PATTERNS["order_by"].search(sql))),
        "has_group_by": int(bool(CLAUSE_PATTERNS["group_by"].search(sql))),
        "has_having": int(bool(CLAUSE_PATTERNS["having"].search(sql))),
        "nested_subquery_count": int(bool(NESTED_RE.search(sql))),
        "has_union": int(bool(CLAUSE_PATTERNS["union"].search(sql))),
        "has_intersect": int(bool(CLAUSE_PATTERNS["intersect"].search(sql))),
        "has_except": int(bool(CLAUSE_PATTERNS["except"].search(sql))),
        "set_op_count": sum(int(bool(CLAUSE_PATTERNS[name].search(sql))) for name in ("union", "intersect", "except")),
        "referenced_table_count": None,
        "referenced_column_count": None,
        "component1_count": None,
        "component2_count": None,
        "other_complexity_count": None,
        "keyword_count": None,
        "table_refs": [],
        "column_refs": [],
    }


def _reverse_id_map(schema_obj: Schema) -> Dict[str, str]:
    return {value: key for key, value in schema_obj.idMap.items()}


def _new_stats_container() -> Dict[str, Any]:
    return {
        "agg_count": 0,
        "join_count": 0,
        "selected_column_count": 0,
        "where_predicate_count": 0,
        "table_refs": set(),
        "column_refs": set(),
        "has_distinct": 0,
        "has_limit": 0,
        "has_order_by": 0,
        "has_group_by": 0,
        "has_having": 0,
        "has_union": 0,
        "has_intersect": 0,
        "has_except": 0,
    }


def _nested_sqls(sql: Dict[str, Any]) -> List[Dict[str, Any]]:
    nested: List[Dict[str, Any]] = []
    for cond_unit in sql["from"]["conds"][::2] + sql["where"][::2] + sql["having"][::2]:
        if isinstance(cond_unit[3], dict):
            nested.append(cond_unit[3])
        if isinstance(cond_unit[4], dict):
            nested.append(cond_unit[4])
    for op_name in ("intersect", "except", "union"):
        if sql.get(op_name) is not None:
            nested.append(sql[op_name])
    return nested


def _count_component1(sql: Dict[str, Any]) -> int:
    count = 0
    if sql["where"]:
        count += 1
    if sql["groupBy"]:
        count += 1
    if sql["orderBy"]:
        count += 1
    if sql["limit"] is not None:
        count += 1
    if sql["from"]["table_units"]:
        count += len(sql["from"]["table_units"]) - 1
    ao = sql["from"]["conds"][1::2] + sql["where"][1::2] + sql["having"][1::2]
    count += len([token for token in ao if token == "or"])
    return count


def _count_aggregations(sql_stats: Dict[str, Any], sql: Dict[str, Any]) -> int:
    group_agg = sum(1 for unit in sql["groupBy"] if isinstance(unit, tuple) and unit[0] != AGG_OPS.index("none"))
    return sql_stats["agg_count"] + group_agg


def _count_other_complexity(sql_stats: Dict[str, Any], sql: Dict[str, Any]) -> int:
    count = 0
    if _count_aggregations(sql_stats, sql) > 1:
        count += 1
    if len(sql["select"][1]) > 1:
        count += 1
    if len(sql["where"]) > 1:
        count += 1
    if len(sql["groupBy"]) > 1:
        count += 1
    return count


def _eval_hardness(component1: int, component2: int, other_complexity: int) -> str:
    if component1 <= 1 and other_complexity == 0 and component2 == 0:
        return "easy"
    if (other_complexity <= 2 and component1 <= 1 and component2 == 0) or (
        component1 <= 2 and other_complexity < 2 and component2 == 0
    ):
        return "medium"
    if (
        (other_complexity > 2 and component1 <= 2 and component2 == 0)
        or (2 < component1 <= 3 and other_complexity <= 2 and component2 == 0)
        or (component1 <= 1 and other_complexity == 0 and component2 <= 1)
    ):
        return "hard"
    return "extra"


def _register_column(col_id: str, reverse_map: Dict[str, str], stats: Dict[str, Any]) -> None:
    if col_id == "__all__":
        return
    ref = reverse_map.get(col_id, "")
    if not ref:
        return
    stats["column_refs"].add(ref)
    if "." in ref:
        stats["table_refs"].add(ref.split(".", 1)[0])


def _visit_col_unit(col_unit: Any, reverse_map: Dict[str, str], stats: Dict[str, Any]) -> None:
    if not _is_col_unit(col_unit):
        return
    agg_id, col_id, is_distinct = col_unit
    if agg_id != AGG_OPS.index("none"):
        stats["agg_count"] += 1
    if is_distinct:
        stats["has_distinct"] = 1
    _register_column(col_id, reverse_map, stats)


def _visit_val_unit(val_unit: Any, reverse_map: Dict[str, str], stats: Dict[str, Any]) -> None:
    if not _is_val_unit(val_unit):
        return
    _, col_unit1, col_unit2 = val_unit
    _visit_col_unit(col_unit1, reverse_map, stats)
    _visit_col_unit(col_unit2, reverse_map, stats)


def _visit_value(value: Any, reverse_map: Dict[str, str], stats: Dict[str, Any]) -> None:
    if isinstance(value, dict):
        _visit_sql(value, reverse_map, stats, is_nested=True)
        return
    if _is_col_unit(value):
        _visit_col_unit(value, reverse_map, stats)
        return
    if _is_val_unit(value):
        _visit_val_unit(value, reverse_map, stats)


def _visit_conditions(conds: List[Any], reverse_map: Dict[str, str], stats: Dict[str, Any]) -> None:
    for cond_unit in conds[::2]:
        if not isinstance(cond_unit, tuple) or len(cond_unit) != 5:
            continue
        stats["where_predicate_count"] += 1
        _visit_val_unit(cond_unit[2], reverse_map, stats)
        _visit_value(cond_unit[3], reverse_map, stats)
        _visit_value(cond_unit[4], reverse_map, stats)


def _visit_sql(sql: Dict[str, Any], reverse_map: Dict[str, str], stats: Dict[str, Any], is_nested: bool = False) -> None:
    from_clause = sql.get("from", {})
    table_units = from_clause.get("table_units", [])
    plain_table_units = [table_id for table_type, table_id in table_units if table_type == TABLE_TYPE["table_unit"]]
    if plain_table_units:
        stats["join_count"] += max(0, len(plain_table_units) - 1)
        for table_id in plain_table_units:
            table_ref = reverse_map.get(table_id, "")
            if table_ref:
                stats["table_refs"].add(table_ref)

    for table_type, table_value in table_units:
        if table_type == TABLE_TYPE["sql"]:
            _visit_sql(table_value, reverse_map, stats, is_nested=True)

    _visit_conditions(from_clause.get("conds", []), reverse_map, stats)

    select_distinct, val_units = sql.get("select", (False, []))
    if select_distinct:
        stats["has_distinct"] = 1
    stats["selected_column_count"] += len(val_units)
    for agg_id, val_unit in val_units:
        if agg_id != AGG_OPS.index("none"):
            stats["agg_count"] += 1
        _visit_val_unit(val_unit, reverse_map, stats)

    where_conds = sql.get("where", [])
    if where_conds:
        stats["has_order_by"] = stats["has_order_by"]
    _visit_conditions(where_conds, reverse_map, stats)

    group_by = sql.get("groupBy", [])
    if group_by:
        stats["has_group_by"] = 1
    for col_unit in group_by:
        _visit_col_unit(col_unit, reverse_map, stats)

    having = sql.get("having", [])
    if having:
        stats["has_having"] = 1
    _visit_conditions(having, reverse_map, stats)

    order_by = sql.get("orderBy", ())
    if order_by:
        stats["has_order_by"] = 1
        direction, val_units = order_by
        if direction in ORDER_OPS:
            for val_unit in val_units:
                _visit_val_unit(val_unit, reverse_map, stats)

    if sql.get("limit") is not None:
        stats["has_limit"] = 1

    for op_name in ("union", "intersect", "except"):
        nested_sql = sql.get(op_name)
        if nested_sql is not None:
            stats[f"has_{op_name}"] = 1
            _visit_sql(nested_sql, reverse_map, stats, is_nested=True)


def analyze_query(
    query: str,
    schema_obj: Optional[Schema],
) -> Tuple[Dict[str, Any], Optional[str]]:
    metrics = fallback_sql_metrics(query)
    if schema_obj is None:
        metrics["parse_error"] = "Missing schema"
        return metrics, "Missing schema"

    try:
        parsed_sql = get_sql(schema_obj, query)
        reverse_map = _reverse_id_map(schema_obj)
        stats = _new_stats_container()
        _visit_sql(parsed_sql, reverse_map, stats)
        component2 = len(_nested_sqls(parsed_sql))
        component1 = _count_component1(parsed_sql)
        other_complexity = _count_other_complexity(stats, parsed_sql)
        hardness = _eval_hardness(component1, component2, other_complexity)

        metrics.update(
            {
                "parse_ok": 1,
                "parse_error": "",
                "hardness": hardness,
                "hardness_rank": HARDNESS_RANK[hardness],
                "join_count": stats["join_count"],
                "selected_column_count": stats["selected_column_count"],
                "where_predicate_count": stats["where_predicate_count"],
                "aggregation_count": stats["agg_count"],
                "has_distinct": stats["has_distinct"],
                "has_limit": stats["has_limit"],
                "has_order_by": stats["has_order_by"],
                "has_group_by": stats["has_group_by"],
                "has_having": stats["has_having"],
                "nested_subquery_count": component2,
                "has_union": stats["has_union"],
                "has_intersect": stats["has_intersect"],
                "has_except": stats["has_except"],
                "set_op_count": stats["has_union"] + stats["has_intersect"] + stats["has_except"],
                "referenced_table_count": len(stats["table_refs"]),
                "referenced_column_count": len(stats["column_refs"]),
                "component1_count": component1,
                "component2_count": component2,
                "other_complexity_count": other_complexity,
                "keyword_count": int(bool(parsed_sql["where"]))
                + int(bool(parsed_sql["groupBy"]))
                + int(bool(parsed_sql["having"]))
                + int(bool(parsed_sql["orderBy"]))
                + int(parsed_sql["limit"] is not None)
                + int(parsed_sql["intersect"] is not None)
                + int(parsed_sql["union"] is not None)
                + int(parsed_sql["except"] is not None),
                "table_refs": sorted(stats["table_refs"]),
                "column_refs": sorted(stats["column_refs"]),
            }
        )
        return metrics, None
    except Exception as exc:
        metrics["parse_error"] = str(exc)
        return metrics, str(exc)


def annotate_samples_with_sql_stats(
    sample_rows: List[Dict[str, Any]],
    schema_lookup: Dict[str, Dict[str, Any]],
) -> Tuple[List[Dict[str, Any]], List[Dict[str, Any]]]:
    annotated: List[Dict[str, Any]] = []
    parse_failures: List[Dict[str, Any]] = []

    schema_cache: Dict[Tuple[str, str], Schema] = {}
    for row in sample_rows:
        dataset = row["dataset"]
        db_id = row["db_id"]
        cache_key = (dataset, db_id)
        if cache_key not in schema_cache:
            schema_dict = schema_lookup.get(dataset, {}).get(db_id, {}).get("schema_dict")
            schema_cache[cache_key] = Schema(schema_dict) if schema_dict else None  # type: ignore[assignment]
        metrics, error = analyze_query(row["query"], schema_cache[cache_key])
        enriched = dict(row)
        enriched.update(metrics)
        annotated.append(enriched)
        if error:
            parse_failures.append(
                {
                    "dataset": row["dataset"],
                    "split": row["split"],
                    "sample_id": row["sample_id"],
                    "db_id": row["db_id"],
                    "query": row["query"],
                    "error": error,
                }
            )
    return annotated, parse_failures
