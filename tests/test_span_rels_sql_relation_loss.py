from types import SimpleNamespace

import torch
import torch.nn as nn

from src.span_rels_sql.span_rels_sql_relation_loss import compute_span_rels_sql_loss


def _args():
    return SimpleNamespace(
        student_layer_mapping=[-1],
        teacher_layer_mapping=[-1],
        use_teacher_shared_attn=True,
        use_span_weight=True,
    )


def test_empty_spans_return_zero_loss():
    hidden = torch.randn(2, 6, 4)
    attention_mask = torch.ones(2, 6)
    labels = torch.tensor([[-100, -100, -100, 1, 2, 3], [-100, -100, 1, 2, 3, 4]])
    offsets = torch.zeros(2, 6, 2, dtype=torch.long)
    loss = compute_span_rels_sql_loss(None, None, attention_mask, labels, (hidden,), (hidden,), offsets, [[], []], _args())
    assert loss.item() == 0.0


def test_valid_spans_return_finite_scalar():
    student_hidden = torch.randn(2, 6, 4)
    teacher_hidden = torch.randn(2, 6, 4)
    attention_mask = torch.ones(2, 6)
    labels = torch.tensor([[-100, -100, -100, 1, 2, 3], [-100, -100, -100, 2, 3, 4]])
    offsets = torch.tensor(
        [
            [[0, 1], [1, 2], [2, 3], [3, 8], [8, 12], [12, 16]],
            [[0, 1], [1, 2], [2, 3], [3, 7], [7, 11], [11, 15]],
        ]
    )
    spans = [[(3, 12)], [(3, 11)]]
    loss = compute_span_rels_sql_loss(
        None,
        None,
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


def test_projector_supports_student_teacher_dim_mismatch():
    student_hidden = torch.randn(1, 5, 3)
    teacher_hidden = torch.randn(1, 5, 7)
    projector = nn.Linear(3, 7, bias=False)
    attention_mask = torch.ones(1, 5)
    labels = torch.tensor([[-100, -100, 1, 2, 3]])
    offsets = torch.tensor([[[0, 1], [1, 2], [2, 6], [6, 10], [10, 14]]])
    loss = compute_span_rels_sql_loss(
        None,
        None,
        attention_mask,
        labels,
        (student_hidden,),
        (teacher_hidden,),
        offsets,
        [[(2, 10)]],
        _args(),
        student_projector=projector,
    )
    assert torch.isfinite(loss)
