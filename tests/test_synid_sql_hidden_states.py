import pytest
import torch
import torch.nn as nn

from src.synid_sql import LastHiddenStateCapture


class TinyCausalLM(nn.Module):
    def __init__(self):
        super().__init__()
        self.embedding = nn.Embedding(8, 4)
        self.lm_head = nn.Linear(4, 8, bias=False)

    def get_output_embeddings(self):
        return self.lm_head

    def forward(self, input_ids):
        return self.lm_head(self.embedding(input_ids))


def test_last_hidden_state_capture_preserves_gradients():
    model = TinyCausalLM()
    capture = LastHiddenStateCapture(model)

    logits = model(torch.tensor([[1, 2, 3]]))
    hidden_states = capture.pop()
    logits.sum().backward()

    assert hidden_states.shape == (1, 3, 4)
    assert hidden_states.requires_grad
    assert model.embedding.weight.grad is not None
    capture.close()


def test_last_hidden_state_capture_requires_a_forward():
    model = TinyCausalLM()
    capture = LastHiddenStateCapture(model)

    with pytest.raises(RuntimeError, match="No hidden states"):
        capture.pop()

    capture.close()
