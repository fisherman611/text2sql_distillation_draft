from __future__ import annotations

import json
import re
from typing import Iterable


SQL_SPAN_TYPES = ("clause", "expression", "join_unit", "source_unit")
SQL_SPAN_TYPE_ALIASES = {
    "clause": "clause",
    "clauses": "clause",
    "expression": "expression",
    "expressions": "expression",
    "expr": "expression",
    "join": "join_unit",
    "joins": "join_unit",
    "join_unit": "join_unit",
    "join_units": "join_unit",
    "source": "source_unit",
    "sources": "source_unit",
    "source_unit": "source_unit",
    "source_units": "source_unit",
}

CLAUSE_KEYWORDS = (
    "WITH",
    "SELECT",
    "FROM",
    "WHERE",
    "GROUP BY",
    "HAVING",
    "ORDER BY",
    "LIMIT",
    "UNION ALL",
    "UNION",
    "INTERSECT",
    "EXCEPT",
)
JOIN_KEYWORDS = ("LEFT OUTER JOIN", "RIGHT OUTER JOIN", "FULL OUTER JOIN", "INNER JOIN", "LEFT JOIN", "RIGHT JOIN", "FULL JOIN", "CROSS JOIN", "JOIN")


def normalize_span_rels_sql_types(span_types: Iterable[str] | None, default=None) -> tuple[str, ...] | None:
    if span_types is None:
        return default

    normalized = []
    for span_type in span_types:
        key = str(span_type).strip().lower().replace("-", "_")
        if not key:
            continue
        canonical = SQL_SPAN_TYPE_ALIASES.get(key)
        if canonical is None:
            valid = ", ".join(SQL_SPAN_TYPES)
            aliases = ", ".join(sorted(SQL_SPAN_TYPE_ALIASES))
            raise ValueError(
                f"Unknown SQL span type '{span_type}'. "
                f"Valid canonical types: {valid}. Accepted aliases: {aliases}."
            )
        if canonical not in normalized:
            normalized.append(canonical)
    return tuple(normalized)


def filter_span_rels_sql_items(span_items, include_types=None, exclude_types=None):
    include = set(normalize_span_rels_sql_types(include_types, default=SQL_SPAN_TYPES))
    exclude = set(normalize_span_rels_sql_types(exclude_types, default=()))
    return [item for item in span_items if item["type"] in include and item["type"] not in exclude]


def _find_response_start(full_text: str, response: str) -> int:
    idx = full_text.find(response)
    if idx != -1:
        return idx
    return max(0, len(full_text) - len(response))


def _is_word_boundary(text: str, pos: int) -> bool:
    if pos < 0 or pos >= len(text):
        return True
    return not (text[pos].isalnum() or text[pos] == "_")


def _scan_state(text: str):
    depth = 0
    in_single = False
    in_double = False
    i = 0
    while i < len(text):
        ch = text[i]
        prev = text[i - 1] if i else ""
        if ch == "'" and not in_double and prev != "\\":
            in_single = not in_single
        elif ch == '"' and not in_single and prev != "\\":
            in_double = not in_double
        elif not in_single and not in_double:
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth = max(0, depth - 1)
        yield i, ch, depth, in_single or in_double
        i += 1


def _match_keyword_at(text: str, pos: int, keyword: str) -> int:
    pattern = r"\s+".join(re.escape(part) for part in keyword.split())
    match = re.match(pattern, text[pos:], flags=re.IGNORECASE)
    if not match:
        return 0
    end = pos + match.end()
    if not _is_word_boundary(text, pos - 1) or not _is_word_boundary(text, end):
        return 0
    return match.end()


def _find_top_level_keywords(text: str, keywords: Iterable[str]):
    ordered = sorted(keywords, key=len, reverse=True)
    matches = []
    for i, _, depth, in_quote in _scan_state(text):
        if depth != 0 or in_quote:
            continue
        for keyword in ordered:
            match_len = _match_keyword_at(text, i, keyword)
            if match_len:
                matches.append({"keyword": keyword.upper(), "start": i, "end": i + match_len})
                break
    matches.sort(key=lambda item: item["start"])
    deduped = []
    occupied_until = -1
    for item in matches:
        if item["start"] < occupied_until:
            continue
        deduped.append(item)
        occupied_until = item["end"]
    return deduped


def _trim_span(text: str, start: int, end: int) -> tuple[int, int]:
    while start < end and text[start].isspace():
        start += 1
    while end > start and text[end - 1].isspace():
        end -= 1
    while end > start and text[end - 1] == ";":
        end -= 1
    while end > start and text[end - 1].isspace():
        end -= 1
    return start, end


def _split_top_level_commas(text: str, start: int, end: int):
    chunks = []
    chunk_start = start
    for i, ch, depth, in_quote in _scan_state(text[start:end]):
        abs_i = start + i
        if ch == "," and depth == 0 and not in_quote:
            chunks.append(_trim_span(text, chunk_start, abs_i))
            chunk_start = abs_i + 1
    chunks.append(_trim_span(text, chunk_start, end))
    return [span for span in chunks if span[0] < span[1]]


def _find_top_level_boolean_splits(text: str, start: int, end: int):
    matches = _find_top_level_keywords(text[start:end], ("AND", "OR"))
    if not matches:
        return [_trim_span(text, start, end)] if _trim_span(text, start, end)[0] < _trim_span(text, start, end)[1] else []
    chunks = []
    chunk_start = start
    for match in matches:
        abs_start = start + match["start"]
        abs_end = start + match["end"]
        chunks.append(_trim_span(text, chunk_start, abs_start))
        chunk_start = abs_end
    chunks.append(_trim_span(text, chunk_start, end))
    return [span for span in chunks if span[0] < span[1]]


def _add_span(spans: list[dict], span_type: str, sql: str, start: int, end: int):
    start, end = _trim_span(sql, start, end)
    if start >= end:
        return
    spans.append({"type": span_type, "start": start, "end": end, "text": sql[start:end]})


def _extract_clause_spans(sql: str):
    clause_matches = _find_top_level_keywords(sql, CLAUSE_KEYWORDS)
    clauses = []
    for idx, match in enumerate(clause_matches):
        end = clause_matches[idx + 1]["start"] if idx + 1 < len(clause_matches) else len(sql)
        start, clean_end = _trim_span(sql, match["start"], end)
        if start < clean_end:
            clauses.append({"keyword": match["keyword"], "start": start, "keyword_end": match["end"], "end": clean_end})
    return clauses


def _extract_source_and_join_spans(sql: str, from_clause: dict, spans: list[dict]):
    body_start = from_clause["keyword_end"]
    body_end = from_clause["end"]
    join_matches = _find_top_level_keywords(sql[body_start:body_end], JOIN_KEYWORDS)
    join_matches = [
        {"keyword": item["keyword"], "start": body_start + item["start"], "end": body_start + item["end"]}
        for item in join_matches
    ]
    if not join_matches:
        for start, end in _split_top_level_commas(sql, body_start, body_end):
            _add_span(spans, "source_unit", sql, start, end)
        return

    base_start, base_end = _trim_span(sql, body_start, join_matches[0]["start"])
    if base_start < base_end:
        _add_span(spans, "source_unit", sql, base_start, base_end)
    previous_source = (base_start, base_end)

    for idx, join_match in enumerate(join_matches):
        next_join_start = join_matches[idx + 1]["start"] if idx + 1 < len(join_matches) else body_end
        join_body_start = join_match["end"]
        on_matches = _find_top_level_keywords(sql[join_body_start:next_join_start], ("ON", "USING"))
        if on_matches:
            joined_source_end = join_body_start + on_matches[0]["start"]
        else:
            joined_source_end = next_join_start

        source_start, source_end = _trim_span(sql, join_body_start, joined_source_end)
        if source_start < source_end:
            _add_span(spans, "source_unit", sql, source_start, source_end)

        join_start = previous_source[0] if idx == 0 and previous_source[0] < previous_source[1] else join_match["start"]
        join_end = next_join_start
        _add_span(spans, "join_unit", sql, join_start, join_end)
        previous_source = (source_start, source_end)


def _extract_expression_spans(sql: str, clause: dict, spans: list[dict]):
    keyword = clause["keyword"]
    body_start = clause["keyword_end"]
    body_end = clause["end"]
    if keyword in {"SELECT", "ORDER BY", "GROUP BY"}:
        for start, end in _split_top_level_commas(sql, body_start, body_end):
            _add_span(spans, "expression", sql, start, end)
    elif keyword in {"WHERE", "HAVING"}:
        for start, end in _find_top_level_boolean_splits(sql, body_start, body_end):
            _add_span(spans, "expression", sql, start, end)


def extract_span_rels_sql_items(sql: str) -> list[dict]:
    if not isinstance(sql, str) or not sql.strip():
        return []

    spans = []
    clauses = _extract_clause_spans(sql)
    for clause in clauses:
        _add_span(spans, "clause", sql, clause["start"], clause["end"])
        _extract_expression_spans(sql, clause, spans)
        if clause["keyword"] == "FROM":
            _extract_source_and_join_spans(sql, clause, spans)

    unique = {}
    for item in spans:
        unique[(item["type"], item["start"], item["end"])] = item
    result = list(unique.values())
    result.sort(key=lambda item: (item["start"], item["end"], item["type"]))
    return result


_FENCED_BLOCK_RE = re.compile(r"```(?:json|sql)?\s*(.*?)```", re.IGNORECASE | re.DOTALL)


def _extract_sql_from_response(response: str) -> tuple[str, int] | tuple[str, None]:
    if not isinstance(response, str) or not response.strip():
        return "", None

    candidates = [response.strip()]
    candidates.extend(match.group(1).strip() for match in _FENCED_BLOCK_RE.finditer(response))
    json_match = re.search(r"\{.*\}", response, flags=re.DOTALL)
    if json_match:
        candidates.append(json_match.group(0))

    for candidate in candidates:
        try:
            parsed = json.loads(candidate)
        except Exception:
            parsed = None
        if isinstance(parsed, dict) and isinstance(parsed.get("sql"), str) and parsed["sql"].strip():
            sql = parsed["sql"].strip()
            pos = response.find(sql)
            return sql, pos if pos >= 0 else None

    raw = response.strip()
    if re.match(r"(?is)^(with|select)\b", raw):
        pos = response.find(raw)
        return raw, pos if pos >= 0 else 0
    return "", None


def extract_span_rels_sql_items_from_response(response: str) -> list[dict]:
    sql, sql_start = _extract_sql_from_response(response)
    if not sql:
        return []
    if sql_start is None:
        sql_start = response.find(sql)
    if sql_start < 0:
        sql_start = 0
    items = extract_span_rels_sql_items(sql)
    for item in items:
        item["start"] += sql_start
        item["end"] += sql_start
    return items


def extract_span_rels_sql_records(full_text: str, response: str, include_types=None, exclude_types=None) -> list[dict]:
    response_start = _find_response_start(full_text, response)
    items = extract_span_rels_sql_items_from_response(response)
    items = filter_span_rels_sql_items(items, include_types=include_types, exclude_types=exclude_types)
    records = [
        {
            "type": item["type"],
            "start": response_start + item["start"],
            "end": response_start + item["end"],
            "text": item["text"],
        }
        for item in items
    ]
    records.sort(key=lambda item: (item["start"], item["end"], item["type"]))
    return records


def extract_span_rels_sql_offsets(full_text: str, response: str, include_types=None, exclude_types=None) -> list[tuple[int, int]]:
    records = extract_span_rels_sql_records(
        full_text,
        response,
        include_types=include_types,
        exclude_types=exclude_types,
    )
    return sorted({(item["start"], item["end"]) for item in records}, key=lambda item: (item[0], item[1]))
