#!/usr/bin/env python
import argparse
import inspect
import json
import os
import shutil
import tempfile
from contextlib import contextmanager
from pathlib import Path
from typing import Dict, Iterator, List, Optional
from urllib.parse import urlparse

import torch
from huggingface_hub import list_repo_files, snapshot_download
from tqdm.auto import tqdm
from transformers import AutoModelForCausalLM, AutoTokenizer


def read_jsonl(path: Path) -> List[Dict]:
    rows = []
    with path.open("r", encoding="utf-8") as fin:
        for line in fin:
            line = line.strip()
            if line:
                rows.append(json.loads(line))
    return rows


def hf_token() -> Optional[str]:
    return os.getenv("HF_TOKEN") or os.getenv("HF_READ_TOKEN")


def resolve_hf_source(source: Optional[str]) -> tuple[Optional[str], Optional[str]]:
    if source is None or Path(source).is_dir():
        return source, None

    normalized = str(source).strip().rstrip("/")
    subfolder = None
    if normalized.startswith("hf://"):
        parts = [part for part in normalized[len("hf://") :].split("/") if part]
        if len(parts) < 2:
            raise ValueError(f"Invalid Hugging Face source: {source}")
        repo_id = f"{parts[0]}/{parts[1]}"
        subfolder = "/".join(parts[2:]) or None
    else:
        parsed = urlparse(normalized)
        if parsed.scheme in {"http", "https"} and parsed.netloc in {"huggingface.co", "www.huggingface.co"}:
            parts = [part for part in parsed.path.split("/") if part]
            if len(parts) < 2:
                raise ValueError(f"Invalid Hugging Face URL: {source}")
            repo_id = f"{parts[0]}/{parts[1]}"
            if len(parts) >= 4 and parts[2] in {"tree", "blob"}:
                subfolder = "/".join(parts[4:]) or None
            else:
                subfolder = "/".join(parts[2:]) or None
        else:
            return normalized, None

    if subfolder is None:
        return repo_id, None

    snapshot_dir = snapshot_download(
        repo_id=repo_id,
        allow_patterns=[f"{subfolder}/*", f"{subfolder}/**"],
        token=hf_token(),
    )
    resolved = Path(snapshot_dir) / subfolder
    if not resolved.is_dir():
        raise FileNotFoundError(f"Hugging Face subfolder was not downloaded: {source}")
    return str(resolved), None


def parse_sql(text: str) -> Optional[str]:
    text = text.strip()
    if "</think>" in text:
        text = text.split("</think>", 1)[1].strip()
    start = text.find("{")
    end = text.rfind("}")
    if start != -1 and end != -1 and end > start:
        try:
            parsed = json.loads(text[start : end + 1])
            if isinstance(parsed, dict) and parsed.get("sql") is not None:
                return str(parsed["sql"]).strip()
        except json.JSONDecodeError:
            pass
    if text:
        return text
    return None


def resolve_latest_ckpt(path: Optional[str]) -> Optional[str]:
    if path is None:
        return None
    root = Path(path)
    markers = {
        "adapter_config.json",
        "config.json",
        "model.safetensors",
        "pytorch_model.bin",
        "adapter_model.bin",
        "adapter_model.safetensors",
    }
    if not root.is_dir():
        return path
    candidates = []
    for child in (root, *root.rglob("*")):
        if child.is_dir() and any((child / marker).exists() for marker in markers):
            step = int(child.name) if child.name.isdigit() else -1
            candidates.append((step, child.stat().st_mtime, child))
    return str(max(candidates, key=lambda item: (item[0], item[1]))[2]) if candidates else path


def has_ckpt_file(source: Optional[str], filename: str) -> bool:
    if source is None:
        return False
    path = Path(source)
    if path.is_dir():
        return (path / filename).exists()
    try:
        return filename in list_repo_files(source, token=hf_token())
    except Exception:
        return False


def materialize_hf_adapter_if_needed(source: str) -> str:
    path = Path(source)
    if path.is_dir():
        return source
    try:
        files = list_repo_files(source, token=hf_token())
    except Exception:
        return source
    if "adapter_config.json" not in files:
        return source
    return snapshot_download(
        repo_id=source,
        allow_patterns=["adapter_config.json", "adapter_model.safetensors", "adapter_model.bin", "*.json"],
        token=hf_token(),
    )


def _copy_or_link_file(src: str, dst: str):
    try:
        os.link(src, dst)
    except OSError:
        shutil.copy2(src, dst)


def _unsupported_peft_config_keys(config: Dict) -> List[str]:
    try:
        from peft.mapping import PEFT_TYPE_TO_CONFIG_MAPPING
    except Exception:
        try:
            from peft.peft_model import PEFT_TYPE_TO_CONFIG_MAPPING
        except Exception:
            return []

    config_cls = PEFT_TYPE_TO_CONFIG_MAPPING.get(config.get("peft_type"))
    if config_cls is None:
        return []

    signature = inspect.signature(config_cls.__init__)
    if any(param.kind == inspect.Parameter.VAR_KEYWORD for param in signature.parameters.values()):
        return []

    supported_keys = {name for name in signature.parameters if name != "self"}
    return sorted(key for key in config if key not in supported_keys)


def _is_empty_peft_config_value(value) -> bool:
    return value is None or value is False or value == "" or value == [] or value == {}


@contextmanager
def compatible_peft_adapter_path(adapter_path: str) -> Iterator[str]:
    path = Path(adapter_path)
    config_path = path / "adapter_config.json"
    if not path.is_dir() or not config_path.exists():
        yield adapter_path
        return

    with config_path.open("r", encoding="utf-8") as fin:
        config = json.load(fin)

    unsupported_keys = _unsupported_peft_config_keys(config)
    if not unsupported_keys:
        yield adapter_path
        return

    non_empty_keys = [key for key in unsupported_keys if not _is_empty_peft_config_value(config[key])]
    if non_empty_keys:
        raise RuntimeError(
            "The adapter_config.json contains PEFT options that the installed peft package does not support: "
            + ", ".join(non_empty_keys)
            + ". Upgrade peft in this runtime environment, or use an adapter saved with a compatible peft version."
        )

    with tempfile.TemporaryDirectory(prefix="peft_adapter_") as tmp_dir:
        tmp_path = Path(tmp_dir)
        for child in path.iterdir():
            target = tmp_path / child.name
            if child.name == "adapter_config.json":
                continue
            if child.is_file():
                _copy_or_link_file(str(child), str(target))
            elif child.is_dir():
                shutil.copytree(child, target, copy_function=_copy_or_link_file)

        sanitized_config = {key: value for key, value in config.items() if key not in unsupported_keys}
        (tmp_path / "adapter_config.json").write_text(
            json.dumps(sanitized_config, indent=2, ensure_ascii=False),
            encoding="utf-8",
        )
        print(
            "Ignoring PEFT adapter_config keys unsupported by installed peft: "
            + ", ".join(unsupported_keys)
        )
        yield str(tmp_path)


def load_model(model_name_or_path: str, ckpt_path: Optional[str], device: str):
    model_name_or_path, _ = resolve_hf_source(model_name_or_path)
    ckpt_path, _ = resolve_hf_source(ckpt_path)
    ckpt_path = resolve_latest_ckpt(ckpt_path)
    tokenizer_source = model_name_or_path
    model_source = model_name_or_path
    is_lora = False

    if ckpt_path:
        ckpt = Path(ckpt_path)
        if has_ckpt_file(ckpt_path, "adapter_config.json"):
            is_lora = True
        elif has_ckpt_file(ckpt_path, "config.json"):
            tokenizer_source = ckpt_path
            model_source = ckpt_path

    tokenizer = AutoTokenizer.from_pretrained(
        tokenizer_source,
        trust_remote_code=True,
        padding_side="left",
        token=hf_token(),
    )
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    dtype = torch.float32 if device == "cpu" else torch.bfloat16
    device_map = {"": device} if device == "cpu" else "auto"
    model = AutoModelForCausalLM.from_pretrained(
        model_source,
        torch_dtype=dtype,
        device_map=device_map,
        trust_remote_code=True,
        token=hf_token(),
    )

    if ckpt_path and is_lora:
        from peft import PeftModel

        ckpt_path = materialize_hf_adapter_if_needed(ckpt_path)
        with compatible_peft_adapter_path(ckpt_path) as adapter_path:
            model = PeftModel.from_pretrained(model, adapter_path, token=hf_token())
            model = model.merge_and_unload()

    model.eval()
    return tokenizer, model


def write_sql_lines(path: Path, values: List[Optional[str]]):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as fout:
        for value in values:
            fout.write((value or "") + "\n")


def parse_args():
    parser = argparse.ArgumentParser(description="Run Qwen3/DistiLLM2 inference on processed Spider JSONL.")
    parser.add_argument("--input", type=Path, default=Path("../processed_data/benchmarks/spider_data/qwen/test.jsonl"))
    parser.add_argument("--model", default="Qwen/Qwen3-0.6B")
    parser.add_argument("--ckpt-path", default=None)
    parser.add_argument("--device", choices=["cuda", "cpu"], default="cuda")
    parser.add_argument("--batch-size", type=int, default=1)
    parser.add_argument("--max-new-tokens", type=int, default=256)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--top-p", type=float, default=1.0)
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--output", type=Path, default=Path("infer_results/spider_sql_result.json"))
    return parser.parse_args()


def main():
    args = parse_args()
    if args.device == "cuda" and not torch.cuda.is_available():
        raise RuntimeError("CUDA requested but torch.cuda.is_available() is false.")

    rows = read_jsonl(args.input)
    if args.limit is not None:
        rows = rows[: args.limit]

    tokenizer, model = load_model(args.model, args.ckpt_path, args.device)
    results = []
    pred_sqls: List[Optional[str]] = []
    gold_sqls: List[Optional[str]] = []

    do_sample = args.temperature > 0
    for start in tqdm(range(0, len(rows), args.batch_size), desc="Infer Spider SQL"):
        batch = rows[start : start + args.batch_size]
        prompts = [row["prompt"] for row in batch]
        inputs = tokenizer(prompts, return_tensors="pt", padding=True).to(model.device)
        generate_kwargs = {
            "max_new_tokens": args.max_new_tokens,
            "do_sample": do_sample,
            "pad_token_id": tokenizer.pad_token_id,
            "eos_token_id": tokenizer.eos_token_id,
        }
        if do_sample:
            generate_kwargs["temperature"] = args.temperature
            generate_kwargs["top_p"] = args.top_p
        with torch.inference_mode():
            outputs = model.generate(
                **inputs,
                **generate_kwargs,
            )
        generated = outputs[:, inputs["input_ids"].shape[-1] :]
        decoded = tokenizer.batch_decode(generated, skip_special_tokens=True)

        for offset, (row, raw_response) in enumerate(zip(batch, decoded)):
            pred_sql = parse_sql(raw_response)
            gold_sql = parse_sql(row.get("response", ""))
            pred_sqls.append(pred_sql)
            gold_sqls.append(gold_sql)
            results.append(
                {
                    "sample_id": f"{args.input.stem}:{start + offset}",
                    "prompt": row["prompt"],
                    "gold_sql": gold_sql,
                    "pred_sql": pred_sql,
                    "raw_response": raw_response,
                    "success": pred_sql is not None,
                    "error": None if pred_sql is not None else "Could not parse SQL",
                }
            )

    args.output.parent.mkdir(parents=True, exist_ok=True)
    tmp_path = args.output.with_name(args.output.name + ".tmp")
    tmp_path.write_text(json.dumps(results, indent=2, ensure_ascii=False), encoding="utf-8")
    os.replace(tmp_path, args.output)
    write_sql_lines(args.output.with_suffix(".pred.sql"), pred_sqls)
    write_sql_lines(args.output.with_suffix(".gold.sql"), gold_sqls)
    print(f"Saved JSON results to {args.output}")
    print(f"Saved SQL predictions to {args.output.with_suffix('.pred.sql')}")
    print(f"Saved SQL gold labels to {args.output.with_suffix('.gold.sql')}")


if __name__ == "__main__":
    main()
