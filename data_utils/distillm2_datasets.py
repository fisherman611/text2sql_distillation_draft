import json
import os
import random

import numpy as np
import torch
from torch.distributed import get_rank, get_world_size
from torch.utils.data import Dataset

from .distributed_indexed import DistributedMMapIndexedDataset
from .lm_datasets import find_prompt_response_separator, resolve_data_path
from utils import print_rank


class DistillM2TrainDataset(Dataset):
    def __init__(self, args, tokenizer, path, split, num, ratio, rng_sample: random.Random):
        if split != "train":
            raise ValueError("DistillM2TrainDataset only supports the train split.")

        self.args = args
        self.tokenizer = tokenizer
        self.pad_id = self.tokenizer.eos_token_id
        self.max_length = args.max_length
        self.max_prompt_length = args.max_prompt_length
        self.ratio = ratio
        self.rng_sample = rng_sample

        path = resolve_data_path(path)
        self.chosen_ctx = DistributedMMapIndexedDataset(path, "chosen_train", get_rank(), get_world_size())
        self.rejected_ctx = DistributedMMapIndexedDataset(path, "rejected_train", get_rank(), get_world_size())

        if len(self.chosen_ctx) != len(self.rejected_ctx):
            raise ValueError(
                f"chosen/rejected length mismatch: {len(self.chosen_ctx)} != {len(self.rejected_ctx)}"
            )

        if os.path.exists(os.path.join(path, "train.jsonl")):
            with open(os.path.join(path, "train.jsonl"), encoding="utf-8") as f:
                self.raw = [json.loads(line) for line in f]
        else:
            self.raw = []

        self.num = len(self.chosen_ctx) if num == -1 else min(num, len(self.chosen_ctx))
        print_rank(f"Num DistiLLM-2 train instances: {self.num}")

    def __len__(self):
        return self.num

    def __getitem__(self, index):
        return {
            "chosen_input_ids": self.chosen_ctx[index].astype(int),
            "rejected_input_ids": self.rejected_ctx[index].astype(int),
        }

    def _process_lm(self, i, input_ids, model_data, no_model_data, gen_data=None):
        source_len = 1
        prompt = None

        sep_idx = find_prompt_response_separator(input_ids)
        if sep_idx is not None:
            source_len = sep_idx
            prompt = input_ids[:source_len]
            input_ids = np.concatenate([input_ids[:source_len], input_ids[source_len + 1 :]], axis=0)

        input_ids = input_ids[: self.max_length]
        input_len = len(input_ids)
        if input_len < 2:
            return

        model_data["input_ids"][i, : input_len - 1] = torch.tensor(input_ids[:-1], dtype=torch.long)
        model_data["attention_mask"][i, : input_len - 1] = 1.0
        if self.args.model_type in ["gpt2"]:
            model_data["position_ids"][i, : input_len - 1] = torch.arange(0, input_len - 1, dtype=torch.long)

        no_model_data["label"][i, : input_len - 1] = torch.tensor(input_ids[1:], dtype=torch.long)
        no_model_data["label"][i, : source_len - 1] = -100
        no_model_data["loss_mask"][i, : input_len - 1] = 1.0
        no_model_data["loss_mask"][i, : source_len - 1] = 0.0

        if prompt is not None and gen_data is not None:
            gen_data["input_ids"][i, -len(prompt) :] = torch.tensor(prompt, dtype=torch.long)
            gen_data["attention_mask"][i, -len(prompt) :] = 1

    def _empty_batch(self, bs):
        model_data = {
            "input_ids": torch.ones(bs, self.max_length, dtype=torch.long) * self.pad_id,
            "attention_mask": torch.zeros(bs, self.max_length),
        }
        if self.args.model_type in ["gpt2"]:
            model_data["position_ids"] = torch.zeros(bs, self.max_length, dtype=torch.long)

        no_model_data = {
            "label": torch.ones(bs, self.max_length, dtype=torch.long) * -100,
            "loss_mask": torch.zeros(bs, self.max_length),
        }
        return model_data, no_model_data

    def collate(self, samples):
        bs = len(samples)
        chosen_model_data, chosen_no_model_data = self._empty_batch(bs)
        rejected_model_data, rejected_no_model_data = self._empty_batch(bs)
        gen_data = {
            "input_ids": torch.ones(bs, self.max_prompt_length, dtype=torch.long) * self.pad_id,
            "attention_mask": torch.zeros(bs, self.max_prompt_length, dtype=torch.long),
        }

        for i, sample in enumerate(samples):
            self._process_lm(
                i,
                sample["chosen_input_ids"],
                chosen_model_data,
                chosen_no_model_data,
                gen_data,
            )
            self._process_lm(
                i,
                sample["rejected_input_ids"],
                rejected_model_data,
                rejected_no_model_data,
                None,
            )

        return chosen_model_data, chosen_no_model_data, rejected_model_data, rejected_no_model_data, gen_data

    def move_to_device(self, *batches):
        device = batches[-1]
        moved = []
        for batch in batches[:-1]:
            if batch is None:
                moved.append(None)
                continue
            for key, value in batch.items():
                if isinstance(value, torch.Tensor):
                    batch[key] = value.to(device)
            moved.append(batch)
        return tuple(moved)
