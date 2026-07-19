"""Run benchmark evaluation with a safer DISTINCT-stripping fallback.

This entrypoint keeps the same CLI as run_benchmark.py. It only changes the
Spider execution path where exec_eval.remove_distinct normally depends on
sqlparse and can abort evaluation on deeply nested malformed predictions.
"""

from __future__ import annotations

import re
import sys

import sqlparse
from sqlparse.exceptions import SQLParseError

import run_benchmark


def safe_remove_distinct(sql: str) -> str:
    try:
        parsed = sqlparse.parse(sql)
        if not parsed:
            return sql
        toks = [token.value for token in parsed[0].flatten()]
        return "".join(token for token in toks if token.lower() != "distinct")
    except (SQLParseError, RecursionError):
        return re.sub(r"\bdistinct\b\s*", "", sql, flags=re.IGNORECASE)


def install_safe_distinct_patch() -> None:
    import parse as evaluator_parse
    import exec_eval

    evaluator_parse.remove_distinct = safe_remove_distinct
    exec_eval.remove_distinct = safe_remove_distinct


def main() -> int:
    install_safe_distinct_patch()
    return run_benchmark.main() or 0


if __name__ == "__main__":
    sys.exit(main())
