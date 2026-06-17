import unittest

import torch

from distillm.distillm2_losses import (
    compute_distillm2_alpha,
    compute_distillm2_beta,
    distillm2_loss,
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
            adaptive_alpha=True,
            gradual_beta=True,
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
        self.assertEqual(compute_distillm2_beta(0, 10, gradual=True), 1.0)
        self.assertEqual(compute_distillm2_beta(10, 10, gradual=True), 1.5)


if __name__ == "__main__":
    unittest.main()
