from types import SimpleNamespace

import pytest
import torch
import torch.nn as nn

from src.synid_sql.losses import (
    _extract_schema_terms,
    _last_valid_hidden,
    _response_hidden_mask,
    _syntax_weights,
    response_kd_loss,
    synid_loss,
)


class DummyTokenizer:
    def __init__(self):
        self.tokens = {
            0: "<pad>",
            1: "Tables:\n",
            2: "- users(user_id, display_name)\n",
            3: "SELECT",
            4: "user_id",
            5: "plain",
            6: "display_name",
        }
        self.batch_decode_calls = 0

    def decode(self, token_ids, clean_up_tokenization_spaces=False):
        del clean_up_tokenization_spaces
        return " ".join(self.tokens[int(token_id)] for token_id in token_ids)

    def batch_decode(self, rows, clean_up_tokenization_spaces=False):
        del clean_up_tokenization_spaces
        self.batch_decode_calls += 1
        return [self.decode(row) for row in rows]


def make_args(**overrides):
    values = {
        "synid_kd_loss": "fkl",
        "skew_alpha": 0.1,
        "synid_kd_temperature": 1.0,
        "synid_pooling": "sc",
        "synid_pool_tau": 0.1,
        "synid_syntax_lambda": 2.0,
        "synid_use_syntax_weights": True,
        "synid_use_con1": True,
        "synid_use_con2": True,
        "synid_contrastive_tau": 0.1,
        "synid_alpha": 1.0,
        "synid_beta": 1.0,
    }
    values.update(overrides)
    return SimpleNamespace(**values)


def test_response_hidden_mask_selects_response_inputs_not_prediction_positions():
    labels = torch.tensor([[-100, -100, 10, 11, 12, -100]])
    attention_mask = torch.tensor([[1, 1, 1, 1, 1, 0]])

    result = _response_hidden_mask(labels, attention_mask)

    assert result.tolist() == [[False, False, False, True, True, False]]


def test_last_valid_hidden_uses_rightmost_masked_position():
    hidden = torch.arange(6, dtype=torch.float32).view(1, 6, 1)
    mask = torch.tensor([[False, True, False, False, True, False]])

    result = _last_valid_hidden(hidden, mask)

    assert result.item() == 4


def test_response_kd_rejects_silent_length_truncation():
    student_logits = torch.randn(1, 4, 8)
    teacher_logits = torch.randn(1, 5, 8)
    student_labels = torch.tensor([[-100, 1, 2, -100]])
    teacher_labels = torch.tensor([[-100, 1, 2, 3, -100]])

    with pytest.raises(ValueError, match="response lengths differ"):
        response_kd_loss(
            student_logits,
            teacher_logits,
            student_labels,
            teacher_labels,
        )


def test_response_kd_rejects_misaligned_target_tokens():
    logits = torch.randn(1, 4, 8)
    student_labels = torch.tensor([[-100, 1, 2, -100]])
    teacher_labels = torch.tensor([[-100, 1, 3, -100]])

    with pytest.raises(ValueError, match="response tokens differ"):
        response_kd_loss(
            logits,
            logits,
            student_labels,
            teacher_labels,
        )


@pytest.mark.parametrize("kd_loss", ["fkl", "rkl", "sfkl", "srkl"])
def test_response_kd_variants_are_finite(kd_loss):
    student_logits = torch.randn(2, 5, 11, requires_grad=True)
    teacher_logits = torch.randn(2, 5, 11)
    labels = torch.tensor(
        [
            [-100, -100, 1, 2, 3],
            [-100, 1, 2, 3, 4],
        ]
    )

    loss = response_kd_loss(
        student_logits,
        teacher_logits,
        labels,
        kd_loss=kd_loss,
    )
    loss.backward()

    assert torch.isfinite(loss)
    assert torch.isfinite(student_logits.grad).all()


def test_schema_terms_do_not_promote_short_generic_fragments():
    terms = _extract_schema_terms("Tables:\n- users(user_id, eligible_for_trial, age)")

    assert "USERS" in terms
    assert "USER_ID" in terms
    assert "ELIGIBLE" in terms
    assert "TRIAL" in terms
    assert "AGE" in terms
    assert "ID" not in terms
    assert "FOR" not in terms


def test_syntax_token_decode_cache_is_reused():
    tokenizer = DummyTokenizer()
    input_ids = torch.tensor([[1, 2, 3, 4, 5]])
    mask = torch.ones_like(input_ids, dtype=torch.bool)

    first = _syntax_weights(input_ids, mask, tokenizer, 2.0, True, mask)
    second = _syntax_weights(input_ids, mask, tokenizer, 2.0, True, mask)

    assert first.tolist() == second.tolist()
    assert first[0, 2].item() == 2.0
    assert first[0, 3].item() == 2.0
    assert first[0, 4].item() == 1.0
    assert tokenizer.batch_decode_calls == 1


def test_synid_loss_with_external_last_hidden_states_backpropagates_projector():
    tokenizer = DummyTokenizer()
    batch_size, seq_len, vocab_size = 2, 6, 13
    student_size, teacher_size = 3, 5
    labels = torch.tensor(
        [
            [-100, -100, 1, 2, 3, -100],
            [-100, -100, 1, 2, 3, -100],
        ]
    )
    batch = {
        "input_ids": torch.tensor(
            [
                [1, 2, 3, 4, 5, 0],
                [1, 2, 3, 6, 5, 0],
            ]
        ),
        "attention_mask": torch.tensor(
            [
                [1, 1, 1, 1, 1, 0],
                [1, 1, 1, 1, 1, 0],
            ]
        ),
    }
    student_outputs = SimpleNamespace(
        logits=torch.randn(batch_size, seq_len, vocab_size, requires_grad=True)
    )
    teacher_outputs = SimpleNamespace(
        logits=torch.randn(batch_size, seq_len, vocab_size)
    )
    student_hidden = torch.randn(
        batch_size,
        seq_len,
        student_size,
        requires_grad=True,
    )
    teacher_hidden = torch.randn(batch_size, seq_len, teacher_size)
    projector = nn.Linear(student_size, teacher_size, bias=False)

    parts = synid_loss(
        args=make_args(),
        tokenizer=tokenizer,
        student_outputs=student_outputs,
        teacher_outputs=teacher_outputs,
        student_batch=batch,
        student_no_model_batch={"label": labels},
        student_projector=projector,
        student_hidden_states=student_hidden,
        teacher_hidden_states=teacher_hidden,
    )
    parts.total.backward()

    assert all(torch.isfinite(value) for value in (parts.total, parts.kd, parts.con1, parts.con2))
    assert projector.weight.grad is not None
    assert torch.isfinite(projector.weight.grad).all()


@pytest.mark.parametrize(
    ("override", "message"),
    [
        ({"synid_kd_temperature": 0.0}, "KD temperature"),
        ({"synid_pool_tau": 0.0}, "pooling temperature"),
        ({"synid_contrastive_tau": 0.0}, "contrastive temperature"),
        ({"synid_alpha": -1.0}, "non-negative"),
    ],
)
def test_synid_rejects_invalid_hyperparameters(override, message):
    tokenizer = DummyTokenizer()
    labels = torch.tensor([[-100, 1, 2]])
    batch = {
        "input_ids": torch.tensor([[1, 3, 4]]),
        "attention_mask": torch.ones(1, 3),
    }
    outputs = SimpleNamespace(
        logits=torch.randn(1, 3, 7),
        hidden_states=[torch.randn(1, 3, 4)],
    )

    with pytest.raises(ValueError, match=message):
        synid_loss(
            args=make_args(**override),
            tokenizer=tokenizer,
            student_outputs=outputs,
            teacher_outputs=outputs,
            student_batch=batch,
            student_no_model_batch={"label": labels},
        )
