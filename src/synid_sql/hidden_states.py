from __future__ import annotations

from typing import Optional

import torch
import torch.nn as nn


class LastHiddenStateCapture:
    """Capture the final normalized hidden state entering a causal LM head."""

    def __init__(self, model: nn.Module):
        output_embeddings = model.get_output_embeddings()
        if output_embeddings is None:
            raise ValueError("Cannot capture hidden states: model has no output embedding layer.")
        self.hidden_states: Optional[torch.Tensor] = None
        self._handle = output_embeddings.register_forward_pre_hook(self._capture)

    def _capture(self, _module: nn.Module, inputs: tuple[torch.Tensor, ...]) -> None:
        if not inputs or not isinstance(inputs[0], torch.Tensor):
            raise RuntimeError("Causal LM head did not receive hidden states as its first input.")
        self.hidden_states = inputs[0]

    def pop(self) -> torch.Tensor:
        if self.hidden_states is None:
            raise RuntimeError("No hidden states were captured during the latest model forward.")
        hidden_states = self.hidden_states
        self.hidden_states = None
        return hidden_states

    def clear(self) -> None:
        self.hidden_states = None

    def close(self) -> None:
        self._handle.remove()
        self.hidden_states = None
