import json

from src.span_rels_sql.span_rels_sql_spans import (
    extract_span_rels_sql_items,
    extract_span_rels_sql_items_from_response,
    extract_span_rels_sql_records,
)


SQL = (
    "SELECT s.name, COUNT(c.concert_id) AS num_concerts "
    "FROM singer AS s "
    "JOIN concert AS c ON s.singer_id = c.singer_id "
    "WHERE c.year = 2014 "
    "GROUP BY s.name "
    "HAVING COUNT(c.concert_id) > 1 "
    "ORDER BY num_concerts DESC "
    "LIMIT 5"
)


def _texts(items, span_type):
    return [item["text"] for item in items if item["type"] == span_type]


def test_extract_four_sql_span_types():
    items = extract_span_rels_sql_items(SQL)
    assert {"clause", "expression", "join_unit", "source_unit"} <= {item["type"] for item in items}
    assert "s.name" in _texts(items, "expression")
    assert "COUNT(c.concert_id) AS num_concerts" in _texts(items, "expression")
    assert "c.year = 2014" in _texts(items, "expression")
    assert "singer AS s" in _texts(items, "source_unit")
    assert "concert AS c" in _texts(items, "source_unit")
    assert "singer AS s JOIN concert AS c ON s.singer_id = c.singer_id" in _texts(items, "join_unit")


def test_extract_multi_join_units_overlap_by_source():
    sql = (
        "SELECT s.name FROM singer AS s "
        "JOIN concert AS c ON s.singer_id = c.singer_id "
        "JOIN stadium AS st ON c.stadium_id = st.stadium_id"
    )
    joins = _texts(extract_span_rels_sql_items(sql), "join_unit")
    assert "singer AS s JOIN concert AS c ON s.singer_id = c.singer_id" in joins
    assert "JOIN stadium AS st ON c.stadium_id = st.stadium_id" in joins


def test_extract_from_json_response_and_full_text_offsets():
    response = json.dumps({"sql": SQL})
    prompt = "QUESTION:\nList singers.\n\nSCHEMA:\n..."
    full_text = prompt + response
    records = extract_span_rels_sql_records(full_text, response)
    assert records
    assert all(record["start"] >= len(prompt) for record in records)
    assert any(record["type"] == "join_unit" for record in records)


def test_extract_from_json_response_with_escaped_sql_offsets():
    sql = 'SELECT "name" FROM singer WHERE "age" > 30'
    response = json.dumps({"sql": sql})
    prompt = "QUESTION:\nList singers.\n\nSCHEMA:\n..."
    full_text = prompt + response

    records = extract_span_rels_sql_records(full_text, response)
    expression = next(record for record in records if record["text"] == '"age" > 30')

    assert records
    assert full_text[expression["start"] : expression["end"]] == '\\"age\\" > 30'


def test_extract_bare_sql_response():
    items = extract_span_rels_sql_items_from_response("SELECT name FROM singer WHERE age > 30")
    assert any(item["type"] == "clause" for item in items)
    assert any(item["type"] == "expression" and item["text"] == "age > 30" for item in items)
