from dataclasses import dataclass
from typing import Optional, Tuple

import torch
import torch.nn.functional as F


@dataclass
class DistiLLM2LossOutput:
    loss: torch.Tensor
    skl_loss: torch.Tensor
    srkl_loss: torch.Tensor
    alpha_t_mean: torch.Tensor
    alpha_s_mean: torch.Tensor
    beta: float
    chosen_gap_mean: torch.Tensor
    rejected_gap_mean: torch.Tensor


def _safe_labels(labels: torch.Tensor, label_pad_token_id: int = -100) -> Tuple[torch.Tensor, torch.Tensor]:
    mask = labels.ne(label_pad_token_id)
    safe_labels = labels.masked_fill(~mask, 0)
    return safe_labels, mask


def _masked_mean(values: torch.Tensor, mask: torch.Tensor) -> torch.Tensor:
    return _masked_sequence_mean(values, mask).mean()


def _masked_sequence_mean(values: torch.Tensor, mask: torch.Tensor) -> torch.Tensor:
    mask = mask.to(values.dtype)
    denom = mask.sum(dim=-1).clamp_min(1.0)
    return (values * mask).sum(dim=-1) / denom


def _gather_token_logps(logits: torch.Tensor, labels: torch.Tensor, mask: torch.Tensor) -> torch.Tensor:
    vocab_logps = F.log_softmax(logits, dim=-1, dtype=torch.float32)
    token_logps = torch.gather(vocab_logps, dim=-1, index=labels.unsqueeze(-1)).squeeze(-1)
    return token_logps.masked_fill(~mask, 0.0)


def sentence_probability_gap(
    student_logits: torch.Tensor,
    teacher_logits: torch.Tensor,
    labels: torch.Tensor,
    direction: str,
    label_pad_token_id: int = -100,
) -> torch.Tensor:
    safe_labels, mask = _safe_labels(labels, label_pad_token_id)
    student_token_logps = _gather_token_logps(student_logits, safe_labels, mask)
    teacher_token_logps = _gather_token_logps(teacher_logits, safe_labels, mask)

    student_probs = _masked_sequence_mean(student_token_logps, mask).exp()
    teacher_probs = _masked_sequence_mean(teacher_token_logps, mask).exp()

    if direction == "teacher_minus_student":
        return teacher_probs - student_probs
    if direction == "student_minus_teacher":
        return student_probs - teacher_probs
    raise ValueError(f"Unsupported gap direction: {direction}")


def compute_distillm2_alpha(
    gap: torch.Tensor,
    base_alpha: float,
    alpha_min: float,
    adaptive: bool,
    anchor: Optional[torch.Tensor] = None,
    eps: float = 1e-5,
) -> torch.Tensor:
    if not adaptive or anchor is None:
        return torch.full_like(gap, float(base_alpha), dtype=torch.float32)

    anchor = anchor.to(device=gap.device, dtype=torch.float32)
    gap = gap.to(dtype=torch.float32)
    valid_gap = gap > eps
    raw_alpha = 1.0 - (1.0 - base_alpha) * anchor / gap.clamp_min(eps)
    alpha = torch.where(valid_gap, raw_alpha, torch.full_like(raw_alpha, base_alpha))
    return alpha.clamp(min=alpha_min, max=base_alpha)


def compute_distillm2_beta(
    global_step: int,
    total_steps: int,
    gradual: bool = True,
    beta_start: float = 0.5,
    current_epoch: int = 1,
    total_epochs: int = 1,
) -> float:
    beta_start = min(1.0, max(0.0, float(beta_start)))
    if not gradual:
        return beta_start

    total_epochs = max(1, int(total_epochs))
    current_epoch = min(max(1, int(current_epoch)), total_epochs)
    epoch_progress = float(current_epoch - 1)

    if total_steps <= 1:
        iter_progress = 1.0 if current_epoch == total_epochs else 0.0
    else:
        iter_progress = float(max(1, global_step) - 1) / float(total_steps - 1)
        iter_progress = min(1.0, max(0.0, iter_progress))

    training_progress = (epoch_progress + iter_progress) / float(total_epochs)
    progress = beta_start + (1.0 - beta_start) * training_progress
    return min(1.0, max(beta_start, progress))


def distillm2_skl_loss(
    student_logits: torch.Tensor,
    teacher_logits: torch.Tensor,
    labels: torch.Tensor,
    alpha: torch.Tensor | float,
    label_pad_token_id: int = -100,
) -> torch.Tensor:
    _, mask = _safe_labels(labels, label_pad_token_id)
    teacher_logps = F.log_softmax(teacher_logits, dim=-1, dtype=torch.float32)
    student_logps = F.log_softmax(student_logits, dim=-1, dtype=torch.float32)

    if not isinstance(alpha, torch.Tensor):
        alpha = torch.full(
            (student_logits.size(0),),
            float(alpha),
            dtype=torch.float32,
            device=student_logits.device,
        )
    alpha = alpha.to(device=student_logits.device, dtype=torch.float32).view(-1, 1, 1)
    log_mix = torch.logsumexp(
        torch.stack(
            [
                torch.log(alpha) + teacher_logps,
                torch.log1p(-alpha) + student_logps,
            ],
            dim=0,
        ),
        dim=0,
    )
    per_token = (teacher_logps.exp() * (teacher_logps - log_mix)).sum(dim=-1)
    return _masked_mean(per_token, mask)


def distillm2_srkl_loss(
    student_logits: torch.Tensor,
    teacher_logits: torch.Tensor,
    labels: torch.Tensor,
    alpha: torch.Tensor | float,
    label_pad_token_id: int = -100,
) -> torch.Tensor:
    _, mask = _safe_labels(labels, label_pad_token_id)
    teacher_logps = F.log_softmax(teacher_logits, dim=-1, dtype=torch.float32)
    student_logps = F.log_softmax(student_logits, dim=-1, dtype=torch.float32)

    if not isinstance(alpha, torch.Tensor):
        alpha = torch.full(
            (student_logits.size(0),),
            float(alpha),
            dtype=torch.float32,
            device=student_logits.device,
        )
    alpha = alpha.to(device=student_logits.device, dtype=torch.float32).view(-1, 1, 1)
    log_mix = torch.logsumexp(
        torch.stack(
            [
                torch.log1p(-alpha) + teacher_logps,
                torch.log(alpha) + student_logps.detach(),
            ],
            dim=0,
        ),
        dim=0,
    )
    per_token = (student_logps.exp() * (student_logps - log_mix)).sum(dim=-1)
    return _masked_mean(per_token, mask)


def distillm2_loss(
    chosen_student_logits: torch.Tensor,
    chosen_teacher_logits: torch.Tensor,
    chosen_labels: torch.Tensor,
    rejected_student_logits: torch.Tensor,
    rejected_teacher_logits: torch.Tensor,
    rejected_labels: torch.Tensor,
    global_step: int,
    total_steps: int,
    alpha_t_base: float = 0.1,
    alpha_s_base: float = 0.1,
    alpha_min: float = 0.01,
    beta_start: float = 0.5,
    adaptive_alpha: bool = True,
    gradual_beta: bool = True,
    current_epoch: int = 1,
    total_epochs: int = 1,
    chosen_gap_anchor: Optional[torch.Tensor] = None,
    rejected_gap_anchor: Optional[torch.Tensor] = None,
) -> DistiLLM2LossOutput:
    chosen_gap = sentence_probability_gap(
        chosen_student_logits,
        chosen_teacher_logits,
        chosen_labels,
        direction="teacher_minus_student",
    )
    rejected_gap = sentence_probability_gap(
        rejected_student_logits,
        rejected_teacher_logits,
        rejected_labels,
        direction="student_minus_teacher",
    )

    alpha_t = compute_distillm2_alpha(
        chosen_gap,
        base_alpha=alpha_t_base,
        alpha_min=alpha_min,
        adaptive=adaptive_alpha,
        anchor=chosen_gap_anchor,
    )
    alpha_s = compute_distillm2_alpha(
        rejected_gap,
        base_alpha=alpha_s_base,
        alpha_min=alpha_min,
        adaptive=adaptive_alpha,
        anchor=rejected_gap_anchor,
    )

    skl_loss = distillm2_skl_loss(
        chosen_student_logits,
        chosen_teacher_logits,
        chosen_labels,
        alpha_t,
    )
    srkl_loss = distillm2_srkl_loss(
        rejected_student_logits,
        rejected_teacher_logits,
        rejected_labels,
        alpha_s,
    )
    beta = compute_distillm2_beta(
        global_step,
        total_steps,
        gradual=gradual_beta,
        beta_start=beta_start,
        current_epoch=current_epoch,
        total_epochs=total_epochs,
    )
    loss = 0.5 * ((1.0 - beta) * skl_loss + beta * srkl_loss)

    return DistiLLM2LossOutput(
        loss=loss,
        skl_loss=skl_loss.detach(),
        srkl_loss=srkl_loss.detach(),
        alpha_t_mean=alpha_t.detach().mean(),
        alpha_s_mean=alpha_s.detach().mean(),
        beta=beta,
        chosen_gap_mean=chosen_gap.detach().mean(),
        rejected_gap_mean=rejected_gap.detach().mean(),
    )
