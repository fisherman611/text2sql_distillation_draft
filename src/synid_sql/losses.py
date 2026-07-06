from __future__ import annotations

from dataclasses import dataclass
from functools import lru_cache
import string
from typing import Optional
import re

import torch
import torch.nn as nn
import torch.nn.functional as F


SQL_KEYWORDS = {
    "ADD",
    "ALL",
    "ALTER",
    "AND",
    "AS",
    "ASC",
    "BETWEEN",
    "BY",
    "CASE",
    "COUNT",
    "CREATE",
    "DELETE",
    "DESC",
    "DISTINCT",
    "DROP",
    "ELSE",
    "END",
    "EXCEPT",
    "EXISTS",
    "FROM",
    "GROUP",
    "HAVING",
    "IN",
    "INNER",
    "INSERT",
    "INTERSECT",
    "INTO",
    "IS",
    "JOIN",
    "LEFT",
    "LIKE",
    "LIMIT",
    "MAX",
    "MIN",
    "NOT",
    "NULL",
    "ON",
    "OR",
    "ORDER",
    "OUTER",
    "RIGHT",
    "SELECT",
    "SET",
    "SUM",
    "THEN",
    "UNION",
    "UPDATE",
    "VALUES",
    "WHEN",
    "WHERE",
    "WITH",
}


@dataclass
class SynIDLossParts:
    total: torch.Tensor
    kd: torch.Tensor
    con1: torch.Tensor
    con2: torch.Tensor


def _zero_like(reference: torch.Tensor) -> torch.Tensor:
    return reference.new_zeros(())


def _compact_by_label_mask(values: torch.Tensor, labels: torch.Tensor) -> list[torch.Tensor]:
    mask = labels != -100
    return [values[i, mask[i]] for i in range(values.size(0))]


def _token_forward_kl(student_logits: torch.Tensor, teacher_logits: torch.Tensor) -> torch.Tensor:
    student_log_probs = F.log_softmax(student_logits, dim=-1)
    teacher_log_probs = F.log_softmax(teacher_logits, dim=-1)
    teacher_probs = teacher_log_probs.exp()
    return (teacher_probs * (teacher_log_probs - student_log_probs)).sum(dim=-1)


def _token_reverse_kl(student_logits: torch.Tensor, teacher_logits: torch.Tensor) -> torch.Tensor:
    student_log_probs = F.log_softmax(student_logits, dim=-1)
    teacher_log_probs = F.log_softmax(teacher_logits, dim=-1)
    student_probs = student_log_probs.exp()
    return (student_probs * (student_log_probs - teacher_log_probs)).sum(dim=-1)


def _token_skewed_forward_kl(student_logits: torch.Tensor, teacher_logits: torch.Tensor, lam: float) -> torch.Tensor:
    student_probs = F.softmax(student_logits, dim=-1)
    teacher_probs = F.softmax(teacher_logits, dim=-1)
    teacher_log_probs = F.log_softmax(teacher_logits, dim=-1)
    mixed_probs = lam * teacher_probs + (1.0 - lam) * student_probs
    mixed_log_probs = torch.log(mixed_probs.clamp_min(1e-12))
    return (teacher_probs * (teacher_log_probs - mixed_log_probs)).sum(dim=-1)


def _token_skewed_reverse_kl(student_logits: torch.Tensor, teacher_logits: torch.Tensor, lam: float) -> torch.Tensor:
    student_probs = F.softmax(student_logits, dim=-1)
    student_log_probs = F.log_softmax(student_logits, dim=-1)
    teacher_probs = F.softmax(teacher_logits, dim=-1)
    mixed_probs = (1.0 - lam) * teacher_probs + lam * student_probs
    mixed_log_probs = torch.log(mixed_probs.clamp_min(1e-12))
    return (student_probs * (student_log_probs - mixed_log_probs)).sum(dim=-1)


def response_kd_loss(
    student_logits: torch.Tensor,
    teacher_logits: torch.Tensor,
    student_labels: torch.Tensor,
    teacher_labels: Optional[torch.Tensor] = None,
    kd_loss: str = "fkl",
    skew_alpha: float = 0.1,
    temperature: float = 1.0,
) -> torch.Tensor:
    """KD divergence over response positions, compacted per sample.

    Student and teacher prompts may have different lengths in later phases, so
    this aligns response tokens by the label masks instead of absolute positions.
    """
    if teacher_labels is None:
        teacher_labels = student_labels

    student_parts = _compact_by_label_mask(student_logits, student_labels)
    teacher_parts = _compact_by_label_mask(teacher_logits, teacher_labels)

    loss_sum = student_logits.new_zeros((), dtype=torch.float32)
    token_count = 0
    for s_logits, t_logits in zip(student_parts, teacher_parts):
        length = min(s_logits.size(0), t_logits.size(0))
        if length == 0:
            continue
        s_logits = s_logits[:length].float() / temperature
        t_logits = t_logits[:length].float() / temperature
        if kd_loss == "fkl":
            token_loss = _token_forward_kl(s_logits, t_logits)
        elif kd_loss == "rkl":
            token_loss = _token_reverse_kl(s_logits, t_logits)
        elif kd_loss == "sfkl":
            token_loss = _token_skewed_forward_kl(s_logits, t_logits, skew_alpha)
        elif kd_loss == "srkl":
            token_loss = _token_skewed_reverse_kl(s_logits, t_logits, skew_alpha)
        else:
            raise ValueError(f"Unsupported SynID KD loss: {kd_loss}")
        loss_sum = loss_sum + token_loss.sum() * (temperature ** 2)
        token_count += int(token_loss.numel())

    if token_count == 0:
        return _zero_like(student_logits)
    return loss_sum / token_count


def _last_valid_hidden(hidden_states: torch.Tensor, mask: torch.Tensor) -> torch.Tensor:
    lengths = mask.long().sum(dim=1).clamp(min=1)
    batch_idx = torch.arange(hidden_states.size(0), device=hidden_states.device)
    return hidden_states[batch_idx, lengths - 1]


def _normalize_token_text(text: str) -> str:
    return text.strip().strip(string.punctuation).upper()


def _term_variants(term: str) -> set[str]:
    normalized = _normalize_token_text(term)
    if not normalized:
        return set()
    variants = {normalized}
    variants.update(part for part in re.split(r"[_\W]+", normalized) if part)
    return variants


def _extract_schema_terms(text: str) -> set[str]:
    terms: set[str] = set()
    for line in text.splitlines():
        line = line.strip()
        if not line.startswith("- ") or "(" not in line or ")" not in line:
            continue
        table_part, columns_part = line[2:].split("(", 1)
        terms.update(_term_variants(table_part))
        columns = columns_part.split(")", 1)[0]
        for column in columns.split(","):
            terms.update(_term_variants(column))
    return terms


def _sql_keyword_weight_for_token(
    token_id: int,
    tokenizer,
    syntax_lambda: float,
    schema_terms: Optional[set[str]] = None,
) -> float:
    text = tokenizer.decode([int(token_id)], clean_up_tokenization_spaces=False)
    normalized = _normalize_token_text(text)
    if normalized in SQL_KEYWORDS or (schema_terms is not None and normalized in schema_terms):
        return syntax_lambda
    return 1.0


def _syntax_weights(
    input_ids: torch.Tensor,
    mask: torch.Tensor,
    tokenizer,
    syntax_lambda: float,
    use_syntax_weights: bool,
) -> torch.Tensor:
    weights = torch.ones_like(mask, dtype=torch.float32)
    if not use_syntax_weights:
        return weights

    ids_cpu = input_ids.detach().cpu()
    mask_cpu = mask.detach().cpu()

    @lru_cache(maxsize=8192)
    def cached_weight(token_id: int) -> float:
        return _sql_keyword_weight_for_token(token_id, tokenizer, syntax_lambda)

    for row in range(ids_cpu.size(0)):
        valid_ids = [int(ids_cpu[row, col]) for col in range(ids_cpu.size(1)) if mask_cpu[row, col].item()]
        row_text = tokenizer.decode(valid_ids, clean_up_tokenization_spaces=False)
        schema_terms = _extract_schema_terms(row_text)
        for col in range(ids_cpu.size(1)):
            if not mask_cpu[row, col].item():
                continue
            token_id = int(ids_cpu[row, col])
            if schema_terms:
                weights[row, col] = _sql_keyword_weight_for_token(
                    token_id,
                    tokenizer,
                    syntax_lambda,
                    schema_terms,
                )
            else:
                weights[row, col] = cached_weight(token_id)

    return weights.to(device=input_ids.device, dtype=torch.float32)


def _pool_hidden(
    hidden_states: torch.Tensor,
    input_ids: torch.Tensor,
    mask: torch.Tensor,
    tokenizer,
    pooling: str,
    pool_tau: float,
    syntax_lambda: float,
    use_syntax_weights: bool,
) -> torch.Tensor:
    mask = mask.bool()
    if pooling == "mean":
        denom = mask.float().sum(dim=1, keepdim=True).clamp(min=1.0)
        return (hidden_states * mask.unsqueeze(-1).float()).sum(dim=1) / denom

    if pooling != "sc":
        raise ValueError(f"Unsupported SynID pooling mode: {pooling}")

    anchor = _last_valid_hidden(hidden_states, mask)
    cosine = F.cosine_similarity(hidden_states.float(), anchor[:, None, :].float(), dim=-1)
    syntax_weights = _syntax_weights(input_ids, mask, tokenizer, syntax_lambda, use_syntax_weights)
    scores = cosine * syntax_weights / pool_tau
    scores = scores.masked_fill(~mask, torch.finfo(scores.dtype).min)
    alpha = torch.softmax(scores, dim=1).to(hidden_states.dtype)
    return (hidden_states * alpha.unsqueeze(-1)).sum(dim=1)


def _info_nce(anchor: torch.Tensor, positive: torch.Tensor, temperature: float) -> torch.Tensor:
    if anchor.size(0) <= 1:
        return _zero_like(anchor)
    anchor = F.normalize(anchor.float(), dim=-1)
    positive = F.normalize(positive.float(), dim=-1)
    logits = anchor @ positive.t()
    logits = logits / temperature
    labels = torch.arange(anchor.size(0), device=anchor.device)
    return F.cross_entropy(logits, labels)


def _project_if_needed(embeddings: torch.Tensor, projector: Optional[nn.Module]) -> torch.Tensor:
    if projector is None:
        return embeddings
    return projector(embeddings)


def synid_loss(
    *,
    args,
    tokenizer,
    student_outputs,
    teacher_outputs,
    student_batch: dict[str, torch.Tensor],
    student_no_model_batch: dict[str, torch.Tensor],
    teacher_batch: Optional[dict[str, torch.Tensor]] = None,
    teacher_no_model_batch: Optional[dict[str, torch.Tensor]] = None,
    student_projector: Optional[nn.Module] = None,
) -> SynIDLossParts:
    if teacher_batch is None:
        teacher_batch = student_batch
    if teacher_no_model_batch is None:
        teacher_no_model_batch = student_no_model_batch

    student_labels = student_no_model_batch["label"]
    teacher_labels = teacher_no_model_batch["label"]

    kd_loss = response_kd_loss(
        student_outputs.logits,
        teacher_outputs.logits,
        student_labels,
        teacher_labels,
        kd_loss=args.synid_kd_loss,
        skew_alpha=args.skew_alpha,
        temperature=args.synid_kd_temperature,
    )

    student_hidden = student_outputs.hidden_states[-1]
    teacher_hidden = teacher_outputs.hidden_states[-1]

    student_response_mask = student_labels != -100
    teacher_response_mask = teacher_labels != -100
    student_prompt_mask = student_batch["attention_mask"].bool() & ~student_response_mask

    # Teacher response is the positive solution representation. In phase 1 it is
    # from the same prompt as the student; later it can come from privileged input.
    teacher_response_embedding = _pool_hidden(
        teacher_hidden,
        teacher_batch["input_ids"],
        teacher_response_mask,
        tokenizer,
        args.synid_pooling,
        args.synid_pool_tau,
        args.synid_syntax_lambda,
        args.synid_use_syntax_weights,
    )
    student_prompt_embedding = _pool_hidden(
        student_hidden,
        student_batch["input_ids"],
        student_prompt_mask,
        tokenizer,
        args.synid_pooling,
        args.synid_pool_tau,
        args.synid_syntax_lambda,
        args.synid_use_syntax_weights,
    )
    student_response_embedding = _pool_hidden(
        student_hidden,
        student_batch["input_ids"],
        student_response_mask,
        tokenizer,
        args.synid_pooling,
        args.synid_pool_tau,
        args.synid_syntax_lambda,
        args.synid_use_syntax_weights,
    )

    student_prompt_embedding = _project_if_needed(student_prompt_embedding, student_projector)
    student_response_embedding = _project_if_needed(student_response_embedding, student_projector)

    con1_loss = (
        _zero_like(kd_loss)
        if not args.synid_use_con1
        else _info_nce(student_prompt_embedding, teacher_response_embedding, args.synid_contrastive_tau)
    )
    con2_loss = (
        _zero_like(kd_loss)
        if not args.synid_use_con2
        else _info_nce(student_response_embedding, teacher_response_embedding, args.synid_contrastive_tau)
    )

    total = kd_loss + args.synid_alpha * con1_loss + args.synid_beta * con2_loss
    return SynIDLossParts(total=total, kd=kd_loss, con1=con1_loss, con2=con2_loss)
