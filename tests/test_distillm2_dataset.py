import os
import tempfile
import unittest
import importlib.util
from types import SimpleNamespace
from unittest.mock import patch

import numpy as np
import torch

from data_utils.indexed_dataset import make_builder


class DummyTokenizer:
    eos_token_id = 0


class CharTokenizer:
    eos_token_id = 0

    def encode(self, text, add_special_tokens=False):
        return [ord(ch) for ch in text]


class MergeBoundaryTokenizer:
    eos_token_id = 0

    def encode(self, text, add_special_tokens=False):
        if text == "ab":
            return [1, 2]
        if text == "abC":
            return [1, 20, 3]
        return [ord(ch) for ch in text]


def write_indexed(prefix, rows):
    builder = make_builder(prefix + ".bin", impl="mmap", dtype=np.int32)
    for row in rows:
        builder.add_item(torch.IntTensor(row))
    builder.finalize(prefix + ".idx")


class DistillM2DatasetTest(unittest.TestCase):
    @unittest.skipIf(importlib.util.find_spec("deepspeed") is None, "deepspeed is required by repo utils")
    def test_collate_masks_prompt_for_chosen_and_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            write_indexed(os.path.join(tmp, "chosen_train_0"), [[10, 11, -1, 20, 21, 0]])
            write_indexed(os.path.join(tmp, "rejected_train_0"), [[10, 11, -1, 30, 31, 0]])

            args = SimpleNamespace(
                max_length=8,
                max_prompt_length=4,
                model_type="qwen",
            )

            import data_utils.distillm2_datasets

            with patch("data_utils.distillm2_datasets.get_rank", return_value=0), patch(
                "data_utils.distillm2_datasets.get_world_size", return_value=1
            ):
                from data_utils.distillm2_datasets import DistillM2TrainDataset

                dataset = DistillM2TrainDataset(args, DummyTokenizer(), tmp + os.sep, "train", -1, 1.0, None)
                chosen_model, chosen_no_model, rejected_model, rejected_no_model, gen_data = dataset.collate([dataset[0]])

            self.assertEqual(chosen_model["input_ids"].shape, (1, 8))
            self.assertEqual(rejected_model["input_ids"].shape, (1, 8))
            self.assertEqual(chosen_no_model["label"][0, 0].item(), -100)
            self.assertEqual(chosen_no_model["label"][0, 1].item(), 20)
            self.assertEqual(rejected_no_model["label"][0, 1].item(), 30)
            self.assertEqual(gen_data["input_ids"].shape, (1, 4))

    def test_process_distillm2_encoder_keeps_prompt_end(self):
        from process_distillm2_data import Encoder

        encoder = Encoder(SimpleNamespace(max_length=6, max_prompt_length=3))
        Encoder.tokenizer = CharTokenizer()
        prompt_tokens, response_tokens = encoder._encode_full("abcdef", "XYZ")

        self.assertEqual(prompt_tokens, [ord("d"), ord("e"), ord("f")])
        self.assertEqual(response_tokens, [ord("X"), ord("Y"), ord("Z")])

    def test_process_distillm2_encoder_handles_prompt_response_merge(self):
        from process_distillm2_data import Encoder

        encoder = Encoder(SimpleNamespace(max_length=10, max_prompt_length=8))
        Encoder.tokenizer = MergeBoundaryTokenizer()
        prompt_tokens, response_tokens = encoder._encode_full("ab", "C")

        self.assertEqual(prompt_tokens, [1])
        self.assertEqual(response_tokens, [20, 3, 0])


if __name__ == "__main__":
    unittest.main()
