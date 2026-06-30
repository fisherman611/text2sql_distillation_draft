#!/usr/bin/env python
import argparse
from pathlib import Path

import yaml


def parse_value(raw: str):
    try:
        return yaml.safe_load(raw)
    except yaml.YAMLError:
        return raw


def main():
    parser = argparse.ArgumentParser(description="Create a runtime YAML config with HF overrides.")
    parser.add_argument("--template", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--set",
        dest="sets",
        action="append",
        default=[],
        help="Override a top-level key, e.g. --set model_name_or_path=org/repo.",
    )
    args = parser.parse_args()

    with args.template.open("r", encoding="utf-8") as fin:
        config = yaml.safe_load(fin)

    for item in args.sets:
        if "=" not in item:
            raise ValueError(f"Invalid --set value {item!r}; expected key=value.")
        key, value = item.split("=", 1)
        config[key] = parse_value(value)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8") as fout:
        yaml.safe_dump(config, fout, sort_keys=False, allow_unicode=True)

    print(f"Wrote runtime config: {args.output}")


if __name__ == "__main__":
    main()
