from types import SimpleNamespace

import torch

from src.span_rels_sql.span_rels_sql_relation_loss import compute_span_rels_sql_loss


class _CharTokenizer:
    @staticmethod
    def encode(text, add_special_tokens=False):
        assert not add_special_tokens
        return [ord(character) for character in text]


def _args():
    return SimpleNamespace(
        student_layer_mapping=[-1],
        teacher_layer_mapping=[-1],
        use_teacher_shared_attn=True,
        use_span_weight=True,
    )


def _inputs(response="SELECT name FROM singer WHERE age > 30"):
    prompt = (
        "QUESTION:\nList singers older than 30.\n\n"
        "SCHEMA:\nTables:\n- singer(name, age)\n\n"
        "Generate a valid SQLite SQL query that answers the question using only the provided schema.\n"
        "Return only the JSON object in the required format."
    )
    full_text = prompt + response
    input_ids = torch.tensor([[ord(character) for character in full_text]], dtype=torch.long)
    attention_mask = torch.ones(1, len(full_text))
    labels = torch.ones(1, len(full_text), dtype=torch.long)
    labels[:, : len(prompt)] = -100
    offsets = torch.tensor([[[idx, idx + 1] for idx in range(len(full_text))]], dtype=torch.long)
    return full_text, prompt, input_ids, attention_mask, labels, offsets


def test_empty_spans_return_zero_loss():
    hidden = torch.randn(2, 6, 4)
    attention_mask = torch.ones(2, 6)
    labels = torch.tensor([[-100, -100, -100, 1, 2, 3], [-100, -100, 1, 2, 3, 4]])
    offsets = torch.zeros(2, 6, 2, dtype=torch.long)
    loss = compute_span_rels_sql_loss(None, None, attention_mask, labels, (hidden,), (hidden,), offsets, [[], []], _args())
    assert loss.item() == 0.0


def test_valid_spans_return_finite_scalar():
    _, prompt, input_ids, attention_mask, labels, offsets = _inputs()
    seq_len = attention_mask.size(1)
    student_hidden = torch.randn(1, seq_len, 4)
    teacher_hidden = torch.randn(1, seq_len, 4)
    spans = [[(len(prompt), len(prompt) + len("SELECT name"))]]
    loss = compute_span_rels_sql_loss(
        _CharTokenizer(),
        input_ids,
        attention_mask,
        labels,
        (student_hidden,),
        (teacher_hidden,),
        offsets,
        spans,
        _args(),
    )
    assert loss.ndim == 0
    assert torch.isfinite(loss)


def test_relation_loss_supports_student_teacher_dim_mismatch():
    _, prompt, input_ids, attention_mask, labels, offsets = _inputs()
    seq_len = attention_mask.size(1)
    student_hidden = torch.randn(1, seq_len, 3)
    teacher_hidden = torch.randn(1, seq_len, 7)
    loss = compute_span_rels_sql_loss(
        _CharTokenizer(),
        input_ids,
        attention_mask,
        labels,
        (student_hidden,),
        (teacher_hidden,),
        offsets,
        [[(len(prompt), len(prompt) + len("SELECT name"))]],
        _args(),
    )
    assert torch.isfinite(loss)
