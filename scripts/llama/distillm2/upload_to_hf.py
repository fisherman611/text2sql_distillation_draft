#!/usr/bin/env python3
"""Upload Llama DistiLLM-2 reference artifacts to Hugging Face."""

from __future__ import annotations

import argparse
import os
from pathlib import Path

from huggingface_hub import HfApi


def upload_folder(
    api: HfApi,
    repo_id: str,
    repo_type: str,
    folder_path: Path,
    path_in_repo: str,
    dry_run: bool,
) -> None:
    if not folder_path.is_dir():
        print(f"[upload-skip] missing folder: {folder_path}")
        return

    print(f"[upload] {folder_path} -> {repo_id}/{path_in_repo}")
    if dry_run:
        return

    api.upload_folder(
        folder_path=str(folder_path),
        repo_id=repo_id,
        repo_type=repo_type,
        path_in_repo=path_in_repo,
        commit_message=f"Upload Llama DistiLLM-2 artifacts: {path_in_repo}",
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-id", default=os.environ.get("HF_REPO_ID", "distillation-sql/baselines"))
    parser.add_argument("--repo-type", default=os.environ.get("HF_REPO_TYPE", "model"))
    parser.add_argument(
        "--checkpoint-dir",
        type=Path,
        default=Path(os.environ.get("DISTILLM2_CHECKPOINT_DIR", "distillm2/outputs/llama3.2-1b-8b-spider-distillm2")),
    )
    parser.add_argument(
        "--infer-output-root",
        type=Path,
        default=Path(os.environ.get("INFER_OUTPUT_ROOT", "results/infer/llama_distillm2_ref")),
    )
    parser.add_argument(
        "--eval-output-root",
        type=Path,
        default=Path(os.environ.get("EVAL_OUTPUT_ROOT", "results/eval/llama_distillm2_ref")),
    )
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    checkpoint_name = args.checkpoint_dir.name
    uploads = [
        (args.checkpoint_dir, f"llama/distillm2_ref/checkpoints/{checkpoint_name}"),
        (args.infer_output_root, "llama/distillm2_ref/infer"),
        (args.eval_output_root, "llama/distillm2_ref/eval"),
    ]

    api = HfApi()
    for folder_path, path_in_repo in uploads:
        upload_folder(
            api=api,
            repo_id=args.repo_id,
            repo_type=args.repo_type,
            folder_path=folder_path,
            path_in_repo=path_in_repo,
            dry_run=args.dry_run,
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
