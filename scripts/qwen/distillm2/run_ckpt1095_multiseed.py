#!/usr/bin/env python3
"""Run multi-seed inference and evaluation for DistillM2 checkpoint-1095."""

from __future__ import annotations

import argparse
import os
import shlex
import subprocess
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[3]
DEFAULT_SEEDS = "10,42,50,100,1234"
DEFAULT_RUN_ID = "distillm2_ckpt1095"
DEFAULT_BASE_MODEL = "Qwen/Qwen3-0.6B"
DEFAULT_CKPT_PATH = "hf://distillation-sql/baselines/checkpoint-1095"

BENCHMARKS = {
    "spider_data": ("856", "spider_test"),
    "spider_syn": ("756", "spider_syn_test"),
    "spider_realistic": ("755", "spider_realistic_test"),
    "spider_dk": ("663", "spider_dk_test"),
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run multi-seed inference/eval for distillation-sql/baselines checkpoint-1095."
    )
    parser.add_argument(
        "benchmarks",
        nargs="*",
        choices=sorted(BENCHMARKS),
        default=list(BENCHMARKS),
        help="Benchmarks to run. Default: all Spider variants.",
    )
    parser.add_argument("--phase", choices=["infer", "eval", "all"], default=os.getenv("PHASE", "all"))
    parser.add_argument("--python", default=os.getenv("PYTHON", sys.executable))
    parser.add_argument("--run-id", default=os.getenv("RUN_ID", DEFAULT_RUN_ID))
    parser.add_argument("--base-model", default=os.getenv("BASE_MODEL", DEFAULT_BASE_MODEL))
    parser.add_argument("--ckpt-path", default=os.getenv("CKPT_PATH", DEFAULT_CKPT_PATH))
    parser.add_argument("--ckpt-step", default=os.getenv("CKPT_STEP", "1095"))
    parser.add_argument("--seeds", default=os.getenv("INFER_SEEDS", DEFAULT_SEEDS))
    parser.add_argument("--split", default=os.getenv("INFER_SPLIT", "test"))
    parser.add_argument("--db", default=os.getenv("INFER_DB", "full"))
    parser.add_argument("--batch-size", default=os.getenv("INFER_BATCH_SIZE", "100"))
    parser.add_argument("--device", default=os.getenv("INFER_DEVICE", "cuda"), choices=["cuda", "cpu", "auto"])
    parser.add_argument("--limit", default=os.getenv("INFER_LIMIT", ""))
    parser.add_argument(
        "--infer-output-root",
        default=os.getenv("INFER_OUTPUT_ROOT", "results/infer/distillm2_ckpt1095/qwen"),
    )
    parser.add_argument(
        "--eval-output-root",
        default=os.getenv("EVAL_OUTPUT_ROOT", "results/eval/distillm2_ckpt1095/qwen"),
    )
    parser.add_argument("--etype", default=os.getenv("ETYPE", "all"))
    parser.add_argument("--exec-timeout", default=os.getenv("EXEC_TIMEOUT", "60"))
    parser.add_argument("--progress-bar", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--skip-existing", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--skip-existing-eval", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--format-after-infer", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--infer-extra-args", default=os.getenv("INFER_EXTRA_ARGS", "--flush-every 100"))
    return parser.parse_args()


def env_for_run(args: argparse.Namespace) -> dict[str, str]:
    env = os.environ.copy()
    env["PYTHONPATH"] = str(REPO_ROOT) + (os.pathsep + env["PYTHONPATH"] if env.get("PYTHONPATH") else "")
    env["HF_HOME"] = env.get("HF_HOME", str(REPO_ROOT / ".hf_cache"))
    env["INFER_SEEDS"] = args.seeds
    env["FORMAT_AFTER_INFER"] = "true" if args.format_after_infer else "false"
    env["SKIP_EXISTING"] = "true" if args.skip_existing else "false"
    return env


def run(cmd: list[str], env: dict[str, str]) -> None:
    print("[cmd] " + " ".join(shlex.quote(part) for part in cmd), flush=True)
    subprocess.run(cmd, cwd=REPO_ROOT, env=env, check=True)


def run_infer(args: argparse.Namespace, benchmark: str, env: dict[str, str]) -> None:
    max_length, _ = BENCHMARKS[benchmark]
    output_dir = Path(args.infer_output_root) / benchmark
    output_path = output_dir / f"{args.run_id}__ckpt{args.ckpt_step}__{args.split}__{args.db}_sql_result.json"
    output_dir.mkdir(parents=True, exist_ok=True)

    cmd = [
        args.python,
        "scripts/qwen/synid_ce_multilayer_3/infer_multiseed.py",
        "--benchmark",
        benchmark,
        "--split",
        args.split,
        "--db",
        args.db,
        "--model",
        args.base_model,
        "--ckpt_path",
        args.ckpt_path,
        "--device",
        args.device,
        "--batch-size",
        str(args.batch_size),
        "--max-length",
        max_length,
        "--output_path",
        str(output_path),
    ]
    if args.limit:
        cmd.extend(["--limit", str(args.limit)])
    if args.infer_extra_args:
        cmd.extend(shlex.split(args.infer_extra_args))

    print(f"[infer] {benchmark} seeds={args.seeds} out={output_path}", flush=True)
    run(cmd, env)


def run_eval(args: argparse.Namespace, benchmark: str, env: dict[str, str]) -> None:
    _, eval_key = BENCHMARKS[benchmark]
    input_dir = Path(args.infer_output_root) / benchmark
    if not input_dir.is_dir():
        print(f"[skip] Missing inference output dir: {input_dir}", file=sys.stderr)
        return

    for seed_dir in sorted(path for path in input_dir.glob("seed*") if path.is_dir()):
        json_files = sorted(seed_dir.glob("*_sql_result.json"))
        if not json_files:
            print(f"[skip] No *_sql_result.json files in {seed_dir}", file=sys.stderr)
            continue

        formatted_dir = seed_dir / "formatted_data"
        formatted_dir.mkdir(parents=True, exist_ok=True)
        run(
            [
                args.python,
                "scripts/format_spider_infer_results.py",
                "--input-dir",
                str(seed_dir),
                "--output-dir",
                str(formatted_dir),
            ],
            env,
        )

        eval_dir = Path(args.eval_output_root) / benchmark / seed_dir.name
        eval_dir.mkdir(parents=True, exist_ok=True)
        for pred in sorted(formatted_dir.glob("*.pred.sql")):
            gold = pred.with_name(pred.name.replace(".pred.sql", ".gold.sql"))
            if not gold.is_file():
                print(f"[skip] Missing gold file for {pred}: {gold}", file=sys.stderr)
                continue

            run_name = pred.name.removesuffix(".pred.sql")
            log_path = eval_dir / f"{run_name}.etype-{args.etype}.timeout-{args.exec_timeout}.log"
            if args.skip_existing_eval and log_path.is_file() and log_path.stat().st_size > 0:
                print(f"[skip-eval] {log_path}", flush=True)
                continue

            cmd = [
                args.python,
                "src/evaluator/run_benchmark.py",
                "--benchmark",
                eval_key,
                "--gold",
                str(gold),
                "--pred",
                str(pred),
                "--etype",
                args.etype,
                "--exec_timeout",
                str(args.exec_timeout),
            ]
            if args.progress_bar:
                cmd.append("--progress_bar_for_each_datapoint")

            print(f"[eval] {benchmark}/{seed_dir.name} :: {run_name}", flush=True)
            with log_path.open("w", encoding="utf-8") as fout:
                fout.write(" ".join(shlex.quote(part) for part in cmd) + "\n")
                fout.flush()
                subprocess.run(
                    cmd,
                    cwd=REPO_ROOT,
                    env=env,
                    check=True,
                    stdout=fout,
                    stderr=subprocess.STDOUT,
                )
            print(f"[done] {log_path}", flush=True)


def main() -> None:
    args = parse_args()
    env = env_for_run(args)

    if args.phase in {"infer", "all"}:
        for benchmark in args.benchmarks:
            run_infer(args, benchmark, env)

    if args.phase in {"eval", "all"}:
        for benchmark in args.benchmarks:
            run_eval(args, benchmark, env)


if __name__ == "__main__":
    main()
