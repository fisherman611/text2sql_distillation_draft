import os
from pathlib import Path
from typing import Optional, Tuple
from urllib.parse import urlparse

from huggingface_hub import snapshot_download


def get_hf_token() -> Optional[str]:
    return os.getenv("HF_TOKEN") or os.getenv("HF_READ_TOKEN")


def parse_hf_source(source: str) -> Tuple[str, Optional[str]]:
    normalized = str(source).strip().rstrip("/")
    if normalized.startswith("hf://"):
        parts = [part for part in normalized[len("hf://") :].split("/") if part]
        if len(parts) < 2:
            raise ValueError(f"Invalid Hugging Face source: {source}")
        repo_id = f"{parts[0]}/{parts[1]}"
        subfolder = "/".join(parts[2:]) or None
        return repo_id, subfolder

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
        return repo_id, subfolder

    return normalized, None


def resolve_hf_source(source: Optional[str], revision: Optional[str] = None) -> Tuple[Optional[str], Optional[str]]:
    if source is None:
        return None, revision
    if Path(source).is_dir():
        return source, revision

    repo_id, subfolder = parse_hf_source(source)
    if subfolder is None:
        return repo_id, revision

    snapshot_dir = snapshot_download(
        repo_id=repo_id,
        revision=revision,
        allow_patterns=[f"{subfolder}/*", f"{subfolder}/**"],
        token=get_hf_token(),
    )
    resolved = Path(snapshot_dir) / subfolder
    if not resolved.is_dir():
        raise FileNotFoundError(f"Hugging Face subfolder was not downloaded: {source}")
    return str(resolved), None
