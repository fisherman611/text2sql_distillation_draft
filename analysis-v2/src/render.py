from __future__ import annotations

import csv
import json
import math
from hashlib import sha256
from pathlib import Path
from typing import Any, Dict, Iterable, List, Sequence


def write_json(path: Path, payload: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as handle:
        json.dump(payload, handle, indent=2, ensure_ascii=False)
        handle.write("\n")


def write_jsonl(path: Path, rows: Iterable[Dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as handle:
        for row in rows:
            handle.write(json.dumps(row, ensure_ascii=False) + "\n")


def write_csv(path: Path, rows: List[Dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    if not rows:
        path.write_text("", encoding="utf-8")
        return
    fieldnames = list(rows[0].keys())
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def write_markdown(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def content_hash(payload: Any) -> str:
    serialized = json.dumps(payload, sort_keys=True, ensure_ascii=False).encode("utf-8")
    return sha256(serialized).hexdigest()


def _svg_header(width: int, height: int, title: str) -> List[str]:
    return [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
        f'<rect width="{width}" height="{height}" fill="white"/>',
        f'<text x="{width / 2:.1f}" y="28" text-anchor="middle" font-family="Arial" font-size="22" font-weight="700">{title}</text>',
    ]


def make_radar_svg(rows: List[Dict[str, Any]], metric_names: Sequence[str], out_path: Path) -> None:
    if not rows:
        return
    width, height = 820, 760
    cx, cy, radius = width / 2, 350, 250
    colors = {"spider": "#d62728", "sparc": "#1f77b4", "cosql": "#2ca02c"}

    def point(angle: float, value: float) -> tuple[float, float]:
        adjusted = angle - math.pi / 2
        return cx + math.cos(adjusted) * radius * value, cy + math.sin(adjusted) * radius * value

    angles = [2 * math.pi * index / len(metric_names) for index in range(len(metric_names))]
    parts = _svg_header(width, height, "Benchmark Radar Comparison")
    for level in [0.2, 0.4, 0.6, 0.8, 1.0]:
        ring = " ".join(f"{point(angle, level)[0]:.1f},{point(angle, level)[1]:.1f}" for angle in angles)
        parts.append(f'<polygon points="{ring}" fill="none" stroke="#d0d0d0" stroke-width="1"/>')
    for angle, label in zip(angles, metric_names):
        x, y = point(angle, 1.0)
        lx, ly = point(angle, 1.18)
        anchor = "middle"
        if lx < cx - 40:
            anchor = "end"
        elif lx > cx + 40:
            anchor = "start"
        parts.append(f'<line x1="{cx:.1f}" y1="{cy:.1f}" x2="{x:.1f}" y2="{y:.1f}" stroke="#d0d0d0" stroke-width="1"/>')
        parts.append(
            f'<text x="{lx:.1f}" y="{ly:.1f}" text-anchor="{anchor}" dominant-baseline="middle" font-family="Arial" font-size="13">{label}</text>'
        )
    for index, row in enumerate(rows):
        color = colors.get(row["dataset"], "#555555")
        points = " ".join(
            f"{point(angle, float(row[name]))[0]:.1f},{point(angle, float(row[name]))[1]:.1f}"
            for angle, name in zip(angles, metric_names)
        )
        parts.append(f'<polygon points="{points}" fill="{color}" fill-opacity="0.08" stroke="{color}" stroke-width="2.5"/>')
        legend_x = 240 + index * 150
        parts.append(f'<line x1="{legend_x}" y1="660" x2="{legend_x + 32}" y2="660" stroke="{color}" stroke-width="3"/>')
        parts.append(f'<text x="{legend_x + 40}" y="665" font-family="Arial" font-size="15">{row["dataset"]}</text>')
    parts.append("</svg>")
    write_markdown(out_path, "\n".join(parts))


def make_grouped_bar_svg(
    series: List[Dict[str, Any]],
    categories: Sequence[str],
    value_keys: Sequence[str],
    title: str,
    out_path: Path,
) -> None:
    width, height = 940, 520
    margin_left, margin_bottom, chart_top = 80, 80, 60
    chart_width = width - margin_left - 40
    chart_height = height - chart_top - margin_bottom
    colors = ["#d62728", "#1f77b4", "#2ca02c", "#ff7f0e", "#2f4f4f"]
    max_value = max(float(row[key]) for row in series for key in value_keys) if series else 1.0
    max_value = max(max_value, 1.0)
    parts = _svg_header(width, height, title)
    parts.append(f'<line x1="{margin_left}" y1="{chart_top + chart_height}" x2="{width - 20}" y2="{chart_top + chart_height}" stroke="#333"/>')
    parts.append(f'<line x1="{margin_left}" y1="{chart_top}" x2="{margin_left}" y2="{chart_top + chart_height}" stroke="#333"/>')

    group_width = chart_width / max(len(categories), 1)
    bar_width = group_width / (len(value_keys) + 1)
    for group_index, category in enumerate(categories):
        group_x = margin_left + group_width * group_index
        parts.append(
            f'<text x="{group_x + group_width / 2:.1f}" y="{height - 28}" text-anchor="middle" font-family="Arial" font-size="13">{category}</text>'
        )
        row = next(item for item in series if item["dataset"] == category)
        for bar_index, key in enumerate(value_keys):
            bar_height = (float(row[key]) / max_value) * chart_height
            x = group_x + bar_width * (bar_index + 0.5)
            y = chart_top + chart_height - bar_height
            parts.append(
                f'<rect x="{x:.1f}" y="{y:.1f}" width="{bar_width * 0.75:.1f}" height="{bar_height:.1f}" fill="{colors[bar_index % len(colors)]}"/>'
            )
    for tick_index in range(6):
        value = max_value * tick_index / 5
        y = chart_top + chart_height - (chart_height * tick_index / 5)
        parts.append(f'<line x1="{margin_left - 4}" y1="{y:.1f}" x2="{margin_left}" y2="{y:.1f}" stroke="#333"/>')
        parts.append(f'<text x="{margin_left - 10}" y="{y + 4:.1f}" text-anchor="end" font-family="Arial" font-size="12">{value:.1f}</text>')
    legend_x = width - 230
    for index, key in enumerate(value_keys):
        parts.append(f'<rect x="{legend_x}" y="{70 + index * 24}" width="14" height="14" fill="{colors[index % len(colors)]}"/>')
        parts.append(f'<text x="{legend_x + 22}" y="{82 + index * 24}" font-family="Arial" font-size="13">{key}</text>')
    parts.append("</svg>")
    write_markdown(out_path, "\n".join(parts))


def make_line_chart_svg(
    turn_series: Dict[str, List[Dict[str, Any]]],
    title: str,
    out_path: Path,
) -> None:
    width, height = 920, 520
    margin_left, margin_bottom, chart_top = 80, 80, 60
    chart_width = width - margin_left - 40
    chart_height = height - chart_top - margin_bottom
    colors = {"sparc": "#1f77b4", "cosql": "#2ca02c"}
    max_x = max((max(point["turn_index"] for point in points) for points in turn_series.values() if points), default=1)
    max_y = max((max(point["avg_hardness_rank"] for point in points) for points in turn_series.values() if points), default=1.0)
    max_y = max(max_y, 1.0)

    parts = _svg_header(width, height, title)
    parts.append(f'<line x1="{margin_left}" y1="{chart_top + chart_height}" x2="{width - 20}" y2="{chart_top + chart_height}" stroke="#333"/>')
    parts.append(f'<line x1="{margin_left}" y1="{chart_top}" x2="{margin_left}" y2="{chart_top + chart_height}" stroke="#333"/>')

    for dataset, points in turn_series.items():
        if not points:
            continue
        coords = []
        for point in points:
            x = margin_left + (point["turn_index"] / max(max_x, 1)) * chart_width
            y = chart_top + chart_height - (point["avg_hardness_rank"] / max_y) * chart_height
            coords.append((x, y))
        polyline = " ".join(f"{x:.1f},{y:.1f}" for x, y in coords)
        color = colors.get(dataset, "#555555")
        parts.append(f'<polyline points="{polyline}" fill="none" stroke="{color}" stroke-width="3"/>')
        for x, y in coords:
            parts.append(f'<circle cx="{x:.1f}" cy="{y:.1f}" r="3.5" fill="{color}"/>')

    for tick in range(max_x + 1):
        x = margin_left + (tick / max(max_x, 1)) * chart_width
        parts.append(f'<text x="{x:.1f}" y="{height - 28}" text-anchor="middle" font-family="Arial" font-size="12">{tick}</text>')
    for tick_index in range(5):
        value = max_y * tick_index / 4
        y = chart_top + chart_height - (tick_index / 4) * chart_height
        parts.append(f'<text x="{margin_left - 10}" y="{y + 4:.1f}" text-anchor="end" font-family="Arial" font-size="12">{value:.2f}</text>')

    legend_x = width - 180
    for index, dataset in enumerate(turn_series):
        color = colors.get(dataset, "#555555")
        parts.append(f'<line x1="{legend_x}" y1="{80 + index * 24}" x2="{legend_x + 28}" y2="{80 + index * 24}" stroke="{color}" stroke-width="3"/>')
        parts.append(f'<text x="{legend_x + 36}" y="{84 + index * 24}" font-family="Arial" font-size="13">{dataset}</text>')
    parts.append("</svg>")
    write_markdown(out_path, "\n".join(parts))
