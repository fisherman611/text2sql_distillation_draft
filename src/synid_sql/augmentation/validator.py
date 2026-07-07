from __future__ import annotations

import hashlib
from pathlib import Path
from typing import Any

from .execution import SqlExecutionError, bird_exec_match, execute_sql, resolve_sqlite_path, spider_exec_match
from .jaccard import sql_token_jaccard
from .sql_normalize import normalize_sql


def _result_hash(rows: list[tuple[Any, ...]]) -> str:
    return hashlib.sha256(repr(rows).encode("utf-8")).hexdigest()


def validate_candidate(
    candidate: dict[str, Any],
    *,
    benchmark: str = "spider",
    db_root: Path,
    gamma: float,
    timeout_s: float,
) -> tuple[bool, dict[str, Any]]:
    candidate_sql = normalize_sql(str(candidate.get("candidate_sql") or ""))
    if not candidate_sql:
        return False, {**candidate, "reason": "empty_sql"}

    db_id = str(candidate["db_id"])
    gold_sql = normalize_sql(str(candidate["gold_sql"]))
    try:
        db_path = resolve_sqlite_path(db_root, db_id)
    except Exception as exc:
        return False, {**candidate, "candidate_sql": candidate_sql, "reason": "db_not_found", "error": str(exc)}

    try:
        gold_rows = execute_sql(db_path, gold_sql, timeout_s=timeout_s)
    except (SqlExecutionError, TimeoutError) as exc:
        return False, {**candidate, "candidate_sql": candidate_sql, "reason": "gold_execution_error", "error": str(exc)}

    try:
        candidate_rows = execute_sql(db_path, candidate_sql, timeout_s=timeout_s)
    except (SqlExecutionError, TimeoutError) as exc:
        return False, {**candidate, "candidate_sql": candidate_sql, "reason": "candidate_execution_error", "error": str(exc)}

    try:
        if benchmark == "spider":
            execution_matches = spider_exec_match(
                db_path=db_path,
                gold_sql=gold_sql,
                candidate_sql=candidate_sql,
                timeout_s=timeout_s,
            )
        elif benchmark == "bird":
            execution_matches = bird_exec_match(
                db_path=db_path,
                gold_sql=gold_sql,
                candidate_sql=candidate_sql,
                timeout_s=timeout_s,
            )
        else:
            raise ValueError(f"Unsupported benchmark: {benchmark}")
    except Exception as exc:
        return False, {**candidate, "candidate_sql": candidate_sql, "reason": f"{benchmark}_eval_error", "error": str(exc)}

    if not execution_matches:
        return (
            False,
            {
                **candidate,
                "candidate_sql": candidate_sql,
                "reason": "execution_mismatch",
                "gold_result_hash": _result_hash(gold_rows),
                "candidate_result_hash": _result_hash(candidate_rows),
                "gold_row_count": len(gold_rows),
                "candidate_row_count": len(candidate_rows),
            },
        )

    jaccard = sql_token_jaccard(gold_sql, candidate_sql)
    if jaccard >= gamma:
        return (
            False,
            {
                **candidate,
                "candidate_sql": candidate_sql,
                "reason": "jaccard_too_high",
                "jaccard": jaccard,
                "gold_result_hash": _result_hash(gold_rows),
                "candidate_result_hash": _result_hash(candidate_rows),
            },
        )

    return (
        True,
        {
            **candidate,
            "aug_sql": candidate_sql,
            "candidate_sql": candidate_sql,
            "status": "accepted",
            "jaccard": jaccard,
            "gold_result_hash": _result_hash(gold_rows),
            "candidate_result_hash": _result_hash(candidate_rows),
        },
    )
