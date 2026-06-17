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


if __name__ == "__main__":
    unittest.main()
