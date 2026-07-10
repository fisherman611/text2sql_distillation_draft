from __future__ import annotations

import math

import torch
import torch.nn.functional as F


_TOKENIZED_MARKER_CACHE = {}
MAX_REL_LOSS = 4.0
MAX_GROUNDING_LOSS = 1e4
NEG_INF = -1e4
EPS = 1e-5
QUESTION_MARKER_TEXT = "QUESTION:\n"
EVIDENCE_MARKER_TEXT = "EVIDENCE:\n"
SCHEMA_MARKER_TEXT = "SCHEMA:\n"
SQL_SCHEMA_END_MARKER_TEXTS = (
    "\n\nGenerate a valid SQLite SQL query that answers the question using only the provided schema.\n"
    "Return only the JSON object in the required format.",
    "\n\nGenerate a valid SQLite SQL query that answers the question using only the provided schema and evidence.\n"
    "Return only the JSON object in the required format.",
)


def _zero_scalar_like(tensor: torch.Tensor) -> torch.Tensor:
    return tensor.new_tensor(0.0)


def _sanitize_loss(value: torch.Tensor, cap: float) -> torch.Tensor:
    return torch.nan_to_num(value, nan=0.0, posinf=cap, neginf=0.0).clamp(min=0.0, max=cap)


def build_prompt_token_mask(attention_mask, labels):
    valid_token_mask = attention_mask.bool()
    prompt_mask = (labels == -100) & valid_token_mask
    no_prompt = (~prompt_mask.any(dim=-1)) & valid_token_mask.any(dim=-1)
    if no_prompt.any():
        prompt_mask[no_prompt] = valid_token_mask[no_prompt]
    return prompt_mask


def _tokenize_marker(tokenizer, marker_text):
    return tokenizer.encode(marker_text, add_special_tokens=False)


def _find_subsequence(sequence, pattern, start=0):
    if not pattern:
        return -1, 0
    max_start = len(sequence) - len(pattern)
    if start > max_start:
        return -1, 0
    for idx in range(max(0, start), max_start + 1):
        if sequence[idx : idx + len(pattern)] == pattern:
            return idx, len(pattern)
    return -1, 0


def _get_tokenized_markers(tokenizer):
    cache_key = id(tokenizer)
    markers = _TOKENIZED_MARKER_CACHE.get(cache_key)
    if markers is None:
        markers = {
            "question": _tokenize_marker(tokenizer, QUESTION_MARKER_TEXT),
            "evidence": _tokenize_marker(tokenizer, EVIDENCE_MARKER_TEXT),
            "schema": _tokenize_marker(tokenizer, SCHEMA_MARKER_TEXT),
            "schema_end": [_tokenize_marker(tokenizer, marker) for marker in SQL_SCHEMA_END_MARKER_TEXTS],
        }
        _TOKENIZED_MARKER_CACHE[cache_key] = markers
    return markers


def build_question_schema_context_mask(tokenizer, input_ids, attention_mask, labels):
    prompt_mask = build_prompt_token_mask(attention_mask, labels)
    source_mask = torch.zeros_like(prompt_mask)
    markers = _get_tokenized_markers(tokenizer)

    for batch_idx in range(input_ids.size(0)):
        prompt_indices = torch.nonzero(prompt_mask[batch_idx], as_tuple=False).flatten()
        if prompt_indices.numel() == 0:
            continue

        token_ids = input_ids[batch_idx, prompt_indices].detach().cpu().tolist()
        question_pos, question_len = _find_subsequence(token_ids, markers["question"])
        if question_pos < 0:
            continue

        schema_pos, schema_len = _find_subsequence(token_ids, markers["schema"], start=question_pos + question_len)
        if schema_pos < 0:
            continue

        evidence_pos, evidence_len = _find_subsequence(token_ids, markers["evidence"], start=question_pos + question_len)
        evidence_is_before_schema = evidence_pos >= 0 and evidence_pos < schema_pos
        question_start = question_pos + question_len
        question_end = evidence_pos if evidence_is_before_schema else schema_pos
        evidence_start = evidence_pos + evidence_len if evidence_is_before_schema else -1
        evidence_end = schema_pos if evidence_is_before_schema else -1
        schema_start = schema_pos + schema_len
        schema_end = len(token_ids)
        for marker in markers["schema_end"]:
            marker_pos, _ = _find_subsequence(token_ids, marker, start=schema_start)
            if marker_pos >= 0:
                schema_end = marker_pos
                break

        if question_start < question_end:
            source_mask[batch_idx, prompt_indices[question_start:question_end]] = True
        if evidence_start >= 0 and evidence_start < evidence_end:
            source_mask[batch_idx, prompt_indices[evidence_start:evidence_end]] = True
        if schema_start < schema_end:
            source_mask[batch_idx, prompt_indices[schema_start:schema_end]] = True

    return source_mask & attention_mask.bool()


def build_token_to_span_map(attention_mask, offsets_mapping, spans_offsets):
    device = attention_mask.device
    batch_size, seq_len = attention_mask.shape
    max_spans = max((len(sample_spans) for sample_spans in spans_offsets), default=0)
    if max_spans == 0:
        return None, None

    span_starts = torch.zeros(batch_size, max_spans, dtype=torch.long, device=device)
    span_ends = torch.zeros(batch_size, max_spans, dtype=torch.long, device=device)
    span_mask = torch.zeros(batch_size, max_spans, dtype=torch.bool, device=device)
    for batch_idx, sample_spans in enumerate(spans_offsets):
        valid_spans = [(int(start), int(end)) for start, end in sample_spans if int(start) < int(end)]
        if not valid_spans:
            continue
        spans_tensor = torch.tensor(valid_spans, dtype=torch.long, device=device)
        span_starts[batch_idx, : len(valid_spans)] = spans_tensor[:, 0]
        span_ends[batch_idx, : len(valid_spans)] = spans_tensor[:, 1]
        span_mask[batch_idx, : len(valid_spans)] = True

    current_offsets = offsets_mapping[:, :seq_len, :] if offsets_mapping.shape[1] != seq_len else offsets_mapping
    token_start = current_offsets[..., 0].unsqueeze(-1).to(device)
    token_end = current_offsets[..., 1].unsqueeze(-1).to(device)
    token_has_offsets = token_end.squeeze(-1) > token_start.squeeze(-1)
    token_in_span = (token_start + 1 >= span_starts.unsqueeze(1)) & (token_end <= span_ends.unsqueeze(1))
    token_in_span = token_in_span & token_has_offsets.unsqueeze(-1) & attention_mask.unsqueeze(-1).bool() & span_mask.unsqueeze(1)
    if not token_in_span.any():
        return None, None
    span_has_tokens = token_in_span.any(dim=1)
    span_mask = span_mask & span_has_tokens
    token_in_span = token_in_span & span_mask.unsqueeze(1)
    if not token_in_span.any():
        return None, None
    return token_in_span, span_mask


def compute_token_weights(hidden_state, attention_mask):
    hidden_state = hidden_state.float()
    attention_mask = attention_mask.bool()
    std = hidden_state.std(dim=-1, keepdim=True, unbiased=False).clamp(min=EPS)
    standardized_hidden = hidden_state / std
    scores = torch.matmul(standardized_hidden, standardized_hidden.transpose(1, 2)) / math.sqrt(hidden_state.size(-1))
    valid_pair_mask = attention_mask.unsqueeze(1) & attention_mask.unsqueeze(2)
    scores = scores.masked_fill(~valid_pair_mask, NEG_INF)
    diag_mask = torch.eye(scores.size(-1), device=scores.device, dtype=torch.bool).unsqueeze(0)
    scores = scores.masked_fill(diag_mask, NEG_INF)
    attention_probs = torch.softmax(scores, dim=-1)
    attention_probs = torch.nan_to_num(attention_probs, nan=0.0, posinf=0.0, neginf=0.0)
    attention_probs = attention_probs * valid_pair_mask.float()
    attention_probs = attention_probs / attention_probs.sum(dim=-1, keepdim=True).clamp(min=EPS)
    valid_source_count = attention_mask.float().sum(dim=1, keepdim=True).clamp(min=1.0)
    token_weights = attention_probs.sum(dim=1) / valid_source_count
    return token_weights * attention_mask.float()


def compute_weighted_span_representations(hidden_state, token_to_span_map, span_mask, token_weights):
    token_to_span_map = token_to_span_map.float()
    token_weights = token_weights.float().unsqueeze(-1)
    weighted_token_to_span = token_to_span_map * token_weights
    span_sums = torch.einsum("bld,bls->bsd", hidden_state.float(), weighted_token_to_span)
    span_weight_sums = weighted_token_to_span.sum(dim=1).unsqueeze(-1).clamp(min=EPS)
    span_repr = span_sums / span_weight_sums
    return span_repr * span_mask.unsqueeze(-1).float()


def compute_span_context_vectors(hidden_state, span_repr, span_mask, source_mask, shared_attn_weights=None):
    hidden_state = hidden_state.float()
    span_repr = span_repr.float()
    if shared_attn_weights is None:
        scores = torch.matmul(span_repr, hidden_state.transpose(1, 2)) / math.sqrt(hidden_state.size(-1))
        scores = scores.masked_fill(~source_mask.unsqueeze(1), NEG_INF)
        attn_weights = torch.softmax(scores, dim=-1)
        attn_weights = torch.nan_to_num(attn_weights, nan=0.0, posinf=0.0, neginf=0.0)
        attn_weights = attn_weights * source_mask.unsqueeze(1).float()
        attn_weights = attn_weights / attn_weights.sum(dim=-1, keepdim=True).clamp(min=EPS)
    else:
        attn_weights = shared_attn_weights.float()
    attn_weights = attn_weights * span_mask.unsqueeze(-1).float()
    context_repr = torch.matmul(attn_weights, hidden_state)
    return context_repr * span_mask.unsqueeze(-1).float(), attn_weights


def _safe_cosine_similarity(x, y, dim=-1, eps=1e-6):
    x = torch.nan_to_num(x.float(), nan=0.0, posinf=1e4, neginf=-1e4)
    y = torch.nan_to_num(y.float(), nan=0.0, posinf=1e4, neginf=-1e4)
    x = F.normalize(x, p=2, dim=dim, eps=eps)
    y = F.normalize(y, p=2, dim=dim, eps=eps)
    return (x * y).sum(dim=dim).clamp(min=-1.0, max=1.0)


def compute_layer_span_context_relation_loss(
    student_span,
    student_context,
    teacher_span,
    teacher_context,
    span_mask,
    span_weights,
    use_span_weight=True,
):
    student_rel = _safe_cosine_similarity(student_span, student_context, dim=-1)
    teacher_rel = _safe_cosine_similarity(teacher_span, teacher_context, dim=-1)
    per_span = _sanitize_loss((student_rel - teacher_rel).pow(2), MAX_REL_LOSS)
    weights = (span_weights if use_span_weight else span_mask.float()) * span_mask.float()
    loss = (per_span * weights).sum() / weights.sum().clamp(min=EPS)
    return _sanitize_loss(loss, MAX_REL_LOSS)


def _project_if_needed(hidden_state, projector):
    if projector is None:
        return hidden_state
    return projector(hidden_state)


def compute_grounding_losses_for_layer(
    student_hidden_state,
    teacher_hidden_state,
    token_to_span_map,
    span_mask,
    source_mask,
    attention_mask,
    use_teacher_shared_attn=True,
    use_span_weight=True,
):
    valid_sample_mask = span_mask.any(dim=-1) & source_mask.any(dim=-1)
    if not valid_sample_mask.any():
        return _zero_scalar_like(student_hidden_state)

    student_hidden_state = student_hidden_state[valid_sample_mask]
    teacher_hidden_state = teacher_hidden_state[valid_sample_mask]
    token_to_span_map = token_to_span_map[valid_sample_mask]
    span_mask = span_mask[valid_sample_mask]
    source_mask = source_mask[valid_sample_mask]
    attention_mask = attention_mask[valid_sample_mask]
    student_token_weights = compute_token_weights(student_hidden_state, attention_mask)
    teacher_token_weights = compute_token_weights(teacher_hidden_state, attention_mask)
    raw_span_weights = (token_to_span_map.float() * teacher_token_weights.unsqueeze(-1)).sum(dim=1)
    raw_span_weights = raw_span_weights * span_mask.float()
    span_weights = raw_span_weights / raw_span_weights.sum(dim=-1, keepdim=True).clamp(min=EPS)
    student_span = compute_weighted_span_representations(student_hidden_state, token_to_span_map, span_mask, student_token_weights)
    teacher_span = compute_weighted_span_representations(teacher_hidden_state, token_to_span_map, span_mask, teacher_token_weights)
    teacher_context, teacher_attn_weights = compute_span_context_vectors(teacher_hidden_state, teacher_span, span_mask, source_mask)
    student_context, _ = compute_span_context_vectors(
        student_hidden_state,
        student_span,
        span_mask,
        source_mask,
        shared_attn_weights=teacher_attn_weights if use_teacher_shared_attn else None,
    )
    return compute_layer_span_context_relation_loss(
        student_span,
        student_context,
        teacher_span,
        teacher_context,
        span_mask,
        span_weights,
        use_span_weight=use_span_weight,
    )


def _as_hidden_sequence(hidden_states):
    if isinstance(hidden_states, torch.Tensor):
        return (hidden_states,)
    return tuple(hidden_states)


def compute_span_rels_sql_loss(
    tokenizer,
    input_ids,
    attention_mask,
    labels,
    student_hidden_states,
    teacher_hidden_states,
    offsets_mapping,
    spans_offsets,
    args,
):
    if offsets_mapping is None or spans_offsets is None:
        return _zero_scalar_like(attention_mask)
    if not isinstance(offsets_mapping, torch.Tensor):
        return _zero_scalar_like(attention_mask)
    if not isinstance(spans_offsets, (list, tuple)) or len(spans_offsets) != attention_mask.size(0):
        return _zero_scalar_like(attention_mask)

    token_to_span_map, span_mask = build_token_to_span_map(attention_mask, offsets_mapping, spans_offsets)
    if token_to_span_map is None:
        return _zero_scalar_like(attention_mask)
    source_mask = build_question_schema_context_mask(tokenizer, input_ids, attention_mask, labels)
    if not source_mask.any():
        return _zero_scalar_like(attention_mask)

    student_seq = _as_hidden_sequence(student_hidden_states)
    teacher_seq = _as_hidden_sequence(teacher_hidden_states)
    student_mapping = getattr(args, "student_layer_mapping", [-1])
    teacher_mapping = getattr(args, "teacher_layer_mapping", [-1])
    use_span_weight = getattr(args, "use_span_weight", True)
    use_teacher_shared_attn = getattr(args, "use_teacher_shared_attn", True)
    rel_total = attention_mask.new_tensor(0.0)
    valid_layers = 0
    for student_idx, teacher_idx in zip(student_mapping, teacher_mapping):
        try:
            student_hidden = student_seq[student_idx]
            teacher_hidden = teacher_seq[teacher_idx]
        except IndexError:
            continue
        if student_hidden is None or teacher_hidden is None:
            continue
        rel_loss = compute_grounding_losses_for_layer(
            student_hidden,
            teacher_hidden,
            token_to_span_map,
            span_mask,
            source_mask,
            attention_mask,
            use_teacher_shared_attn=use_teacher_shared_attn,
            use_span_weight=use_span_weight,
        )
        rel_total = rel_total + rel_loss
        valid_layers += 1
    if valid_layers == 0:
        return _zero_scalar_like(attention_mask)
    return _sanitize_loss(rel_total / valid_layers, MAX_GROUNDING_LOSS)
