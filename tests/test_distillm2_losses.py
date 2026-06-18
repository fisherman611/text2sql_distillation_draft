import unittest

import torch

from distillm.distillm2_losses import (
    compute_distillm2_alpha,
    compute_distillm2_beta,
    distillm2_loss,
    distillm2_skl_loss,
    distillm2_srkl_loss,
)


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


if __name__ == "__main__":
    unittest.main()
