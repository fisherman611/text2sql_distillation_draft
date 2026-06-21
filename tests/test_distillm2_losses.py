import unittest

import torch

from distillm.distillm2_losses import (
    compute_distillm2_alpha,
    compute_distillm2_beta,
    distillm2_loss,
    distillm2_skl_loss,
    distillm2_srkl_loss,
    sentence_probability_gap,
)


def manual_srkl_loss(student_logits, teacher_logits, labels, alpha):
    mask = labels.ne(-100)
    teacher_logps = torch.nn.functional.log_softmax(teacher_logits, dim=-1, dtype=torch.float32)
    student_logps = torch.nn.functional.log_softmax(student_logits, dim=-1, dtype=torch.float32)
    alpha_tensor = torch.full(
        (student_logits.size(0), 1, 1),
        float(alpha),
        dtype=torch.float32,
        device=student_logits.device,
    )
    log_mix = torch.logsumexp(
        torch.stack(
            [
                torch.log1p(-alpha_tensor) + teacher_logps,
                torch.log(alpha_tensor) + student_logps,
            ],
            dim=0,
        ),
        dim=0,
    )
    per_token = (student_logps.exp() * (student_logps - log_mix)).sum(dim=-1)
    mask_f = mask.to(per_token.dtype)
    sequence_loss = (per_token * mask_f).sum(dim=-1) / mask_f.sum(dim=-1).clamp_min(1.0)
    return sequence_loss.mean()


def logits_with_label_boost(labels, vocab, boost):
    logits = torch.zeros(labels.size(0), labels.size(1), vocab)
    for batch_idx in range(labels.size(0)):
        for token_idx in range(labels.size(1)):
            label = labels[batch_idx, token_idx].item()
            if label != -100:
                logits[batch_idx, token_idx, label] = boost
    return logits


class DistillM2LossTest(unittest.TestCase):
    def test_loss_is_finite_and_backward_works(self):
        torch.manual_seed(7)
        batch, seq_len, vocab = 2, 4, 8
        chosen_student = torch.randn(batch, seq_len, vocab, requires_grad=True)
        rejected_student = torch.randn(batch, seq_len, vocab, requires_grad=True)
        chosen_teacher = torch.randn(batch, seq_len, vocab)
        rejected_teacher = torch.randn(batch, seq_len, vocab)
        chosen_labels = torch.tensor([[1, 2, -100, 3], [2, 3, 4, -100]])
        rejected_labels = torch.tensor([[3, 2, 1, -100], [4, -100, 2, 1]])

        output = distillm2_loss(
            chosen_student,
            chosen_teacher,
            chosen_labels,
            rejected_student,
            rejected_teacher,
            rejected_labels,
            global_step=1,
            total_steps=10,
            beta_start=0.5,
            adaptive_alpha=True,
            gradual_beta=True,
            current_epoch=2,
            total_epochs=3,
            chosen_gap_anchor=torch.tensor(0.01),
            rejected_gap_anchor=torch.tensor(0.01),
        )

        self.assertTrue(torch.isfinite(output.loss).item())
        output.loss.backward()
        self.assertIsNotNone(chosen_student.grad)
        self.assertIsNotNone(rejected_student.grad)

    def test_alpha_and_beta_ranges(self):
        gap = torch.tensor([0.001, 0.01, 0.1])
        alpha = compute_distillm2_alpha(
            gap,
            base_alpha=0.1,
            alpha_min=0.01,
            adaptive=True,
            anchor=torch.tensor(0.01),
        )
        self.assertGreaterEqual(alpha.min().item(), 0.01 - 1e-6)
        self.assertLessEqual(alpha.max().item(), 0.1 + 1e-6)
        self.assertEqual(compute_distillm2_beta(1, 10, gradual=True, beta_start=0.5), 0.5)
        self.assertEqual(compute_distillm2_beta(10, 10, gradual=True, beta_start=0.5), 1.0)
        self.assertGreater(compute_distillm2_beta(6, 10, gradual=True, beta_start=0.5, current_epoch=1, total_epochs=3), 0.5)
        self.assertGreaterEqual(
            compute_distillm2_beta(1, 10, gradual=True, beta_start=0.5, current_epoch=2, total_epochs=3),
            compute_distillm2_beta(10, 10, gradual=True, beta_start=0.5, current_epoch=1, total_epochs=3),
        )
        self.assertEqual(compute_distillm2_beta(10, 10, gradual=True, beta_start=0.5, current_epoch=3, total_epochs=3), 1.0)

    def test_loss_uses_paper_weighting(self):
        torch.manual_seed(11)
        batch, seq_len, vocab = 2, 3, 7
        chosen_student = torch.randn(batch, seq_len, vocab, requires_grad=True)
        rejected_student = torch.randn(batch, seq_len, vocab, requires_grad=True)
        chosen_teacher = torch.randn(batch, seq_len, vocab)
        rejected_teacher = torch.randn(batch, seq_len, vocab)
        chosen_labels = torch.tensor([[1, 2, -100], [2, 3, 4]])
        rejected_labels = torch.tensor([[3, 2, 1], [4, -100, 2]])

        output = distillm2_loss(
            chosen_student,
            chosen_teacher,
            chosen_labels,
            rejected_student,
            rejected_teacher,
            rejected_labels,
            global_step=1,
            total_steps=5,
            beta_start=0.5,
            adaptive_alpha=False,
            gradual_beta=False,
        )
        skl = distillm2_skl_loss(chosen_student, chosen_teacher, chosen_labels, alpha=0.1)
        srkl = distillm2_srkl_loss(rejected_student, rejected_teacher, rejected_labels, alpha=0.1)
        expected = 0.5 * ((1.0 - 0.5) * skl + 0.5 * srkl)
        self.assertTrue(torch.allclose(output.loss, expected))

    def test_srkl_gradient_matches_paper_formula(self):
        torch.manual_seed(13)
        batch, seq_len, vocab = 2, 3, 7
        student = torch.randn(batch, seq_len, vocab, requires_grad=True)
        teacher = torch.randn(batch, seq_len, vocab)
        labels = torch.tensor([[1, 2, 3], [4, -100, 2]])

        loss = distillm2_srkl_loss(student, teacher, labels, alpha=0.4)
        loss.backward()
        actual_grad = student.grad.detach().clone()

        expected_student = student.detach().clone().requires_grad_(True)
        expected_loss = manual_srkl_loss(expected_student, teacher, labels, alpha=0.4)
        expected_loss.backward()

        self.assertTrue(torch.allclose(loss.detach(), expected_loss.detach(), atol=1e-6))
        self.assertTrue(torch.allclose(actual_grad, expected_student.grad, atol=1e-6))

    def test_adaptive_alpha_uses_cross_response_gaps(self):
        labels = torch.tensor([[1, 2, 3]])
        vocab = 5
        chosen_teacher = logits_with_label_boost(labels, vocab, boost=4.0)
        chosen_student = logits_with_label_boost(labels, vocab, boost=1.0).requires_grad_(True)
        rejected_teacher = logits_with_label_boost(labels, vocab, boost=0.5)
        rejected_student = logits_with_label_boost(labels, vocab, boost=5.0).requires_grad_(True)

        chosen_anchor = torch.tensor(0.02)
        rejected_anchor = torch.tensor(0.03)
        output = distillm2_loss(
            chosen_student,
            chosen_teacher,
            labels,
            rejected_student,
            rejected_teacher,
            labels,
            global_step=2,
            total_steps=4,
            alpha_t_base=0.2,
            alpha_s_base=0.3,
            adaptive_alpha=True,
            gradual_beta=False,
            chosen_gap_anchor=chosen_anchor,
            rejected_gap_anchor=rejected_anchor,
        )

        chosen_gap = sentence_probability_gap(
            chosen_student.detach(),
            chosen_teacher,
            labels,
            direction="teacher_minus_student",
        )
        rejected_gap = sentence_probability_gap(
            rejected_student.detach(),
            rejected_teacher,
            labels,
            direction="student_minus_teacher",
        )
        expected_alpha_t = compute_distillm2_alpha(
            rejected_gap,
            base_alpha=0.2,
            alpha_min=0.01,
            adaptive=True,
            anchor=rejected_anchor,
        )
        expected_alpha_s = compute_distillm2_alpha(
            chosen_gap,
            base_alpha=0.3,
            alpha_min=0.01,
            adaptive=True,
            anchor=chosen_anchor,
        )

        self.assertTrue(torch.allclose(output.alpha_t_mean, expected_alpha_t.mean()))
        self.assertTrue(torch.allclose(output.alpha_s_mean, expected_alpha_s.mean()))


if __name__ == "__main__":
    unittest.main()
