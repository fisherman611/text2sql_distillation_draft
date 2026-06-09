from __future__ import annotations

from typing import Any, Dict, List


def generate_analysis_report(
    dataset_summary: List[Dict[str, Any]],
    dialog_summary: List[Dict[str, Any]],
) -> str:
    summary_by_dataset = {row["dataset"]: row for row in dataset_summary}
    spider = summary_by_dataset["spider"]
    sparc = summary_by_dataset["sparc"]
    cosql = summary_by_dataset["cosql"]

    dialog_dataset_rows = [row for row in dialog_summary if row["dataset"] in {"sparc", "cosql"}]
    sparc_dialogs = [row for row in dialog_dataset_rows if row["dataset"] == "sparc"]
    cosql_dialogs = [row for row in dialog_dataset_rows if row["dataset"] == "cosql"]

    lines = [
        "# Analysis Report",
        "",
        "## Dataset comparison",
        "",
        f"- Spider has the highest average SQL length ({spider['sql_token_mean']}) and the highest nested SQL rate ({spider['nested_pct']}%).",
        f"- SParC has the largest total SQL turn count ({sparc['total_sql']}) and the largest dialog inventory ({sparc['train_dialogs']} train dialogs).",
        f"- CoSQL keeps similar SQL length to SParC ({cosql['sql_token_mean']}) but spans the largest schema inventory ({cosql['schema_db_count']} DBs).",
        "",
        "## Schema comparison",
        "",
        f"- Spider and SParC share the same schema DB count in the local split setup ({spider['schema_db_count']}), while CoSQL adds broader schema coverage.",
        f"- CoSQL has the highest average columns per DB ({cosql['column_per_db_mean']}) and slightly denser schemas than Spider and SParC.",
        f"- Across all three, average tables per DB stay close ({spider['table_per_db_mean']} to {cosql['table_per_db_mean']}), so schema breadth differs more in columns and relation structure than raw table count.",
        "",
        "## SQL complexity comparison",
        "",
        f"- Spider contributes the strongest single-turn compositional load: hard+extra share {spider['hard_or_extra_pct']}%, nested {spider['nested_pct']}%, average joins {spider['join_count_mean']}.",
        f"- SParC SQLs are shorter and structurally lighter than Spider, but still retain substantial `GROUP BY` use ({sparc['group_by_pct']}%).",
        f"- CoSQL is structurally between Spider and SParC, with more `ORDER BY` than SParC ({cosql['order_by_pct']}% vs {sparc['order_by_pct']}%) and higher nested usage.",
        "",
        "## Conversational comparison",
        "",
        f"- SParC is the cleaner contextual-edit benchmark: more dialogs and more turns to model sequential SQL refinement.",
        f"- CoSQL exposes more conversational noise and clarification behavior, including explicit clarification markers in utterances.",
        f"- Average dialog turn reuse is a meaningful signal in both datasets, so previous-SQL editing should be treated as a first-class training view rather than a side feature.",
        "",
        "## Training implications",
        "",
        f"- Spider contributes broad single-turn SQL composition, harder nested structures, and better clause coverage for schema-grounded generation.",
        f"- SParC contributes controlled multi-turn context dependency and clean SQL-to-SQL editing patterns.",
        f"- CoSQL contributes multi-turn robustness under more natural conversational phrasing and clarification-heavy user behavior.",
        "- Default hybrid recipe: start with Spider single-turn SFT, then add SParC and CoSQL multi-turn training, and finally oversample edit-style turns with nested or clause-changing transitions.",
    ]

    if sparc_dialogs and cosql_dialogs:
        sparc_avg_turns = round(sum(row["num_turns"] for row in sparc_dialogs) / len(sparc_dialogs), 2)
        cosql_avg_turns = round(sum(row["num_turns"] for row in cosql_dialogs) / len(cosql_dialogs), 2)
        lines.extend(
            [
                "",
                "## Dialog profile",
                "",
                f"- SParC average dev dialog length: {sparc_avg_turns} turns.",
                f"- CoSQL average dev dialog length: {cosql_avg_turns} turns.",
            ]
        )

    return "\n".join(lines) + "\n"
