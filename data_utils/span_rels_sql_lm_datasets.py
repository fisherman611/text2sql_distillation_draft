from __future__ import annotations

import json
import os
import random

import numpy as np
import torch
from torch.distributed import get_rank, get_world_size
from torch.utils.data import Dataset

from data_utils.distributed_indexed import DistributedMMapIndexedDataset
from data_utils.lm_datasets import find_prompt_response_separator, resolve_data_path
from src.span_rels_sql.span_rels_sql_spans import (
    SQL_SPAN_TYPES,
    extract_span_rels_sql_offsets,
    extract_span_rels_sql_records,
    normalize_span_rels_sql_types,
)
from utils import print_rank


class SpanRelsSQLTrainDataset(Dataset):
    def __init__(self, args, tokenizer, path, split, num, ratio, rng_sample: random.Random):
        self.args = args
        self.tokenizer = tokenizer
        self.split = split
        self.pad_id = self.tokenizer.eos_token_id
        self.ratio = ratio
        self.max_length = args.max_length
        self.max_prompt_length = args.max_prompt_length
        self.rng_sample = rng_sample
        self.has_span_metadata = False
        path = resolve_data_path(path)
        self.lm_ctx = DistributedMMapIndexedDataset(path, f"{split}", get_rank(), get_world_size())
        self.t_lm_ctx = None
        if os.path.exists(os.path.join(path, "teacher_train_0.bin")) and split == "train":
            self.t_lm_ctx = DistributedMMapIndexedDataset(path, "teacher_train", get_rank(), get_world_size())

        if os.path.exists(os.path.join(path, f"{split}.jsonl")):
            with open(os.path.join(path, f"{split}.jsonl"), encoding="utf-8") as f:
                self.raw = [json.loads(line) for line in f.readlines()]
            self.answers = [item["response"] if isinstance(item["response"], list) else [item["response"]] for item in self.raw]
            self.full_texts = []
            for item in self.raw:
                response = item["response"][0] if isinstance(item["response"], list) else item["response"]
                self.full_texts.append(item["prompt"] + response)
            self.offset_mapping = [
                tokenizer(
                    text,
                    return_offsets_mapping=True,
                    truncation=True,
                    max_length=self.max_length,
                    padding="max_length",
                    add_special_tokens=False,
                    return_tensors="pt",
                )["offset_mapping"]
                for text in self.full_texts
            ]
            self.span_include_types = normalize_span_rels_sql_types(
                getattr(args, "sql_span_types", None),
                default=SQL_SPAN_TYPES,
            )
            self.span_exclude_types = normalize_span_rels_sql_types(
                getattr(args, "exclude_sql_span_types", None),
                default=(),
            )
            self.get_span_offsets()
            self.has_span_metadata = True

        print_rank(len(self.lm_ctx))
        self.num = len(self.lm_ctx) if num == -1 else num
        print_rank(f"Num LM instances: {len(self.lm_ctx)}")

    def __len__(self):
        return self.num

    def get_span_offsets(self):
        self.span_offsets = []
        raw_type_counts = {span_type: 0 for span_type in SQL_SPAN_TYPES}
        kept_type_counts = {span_type: 0 for span_type in SQL_SPAN_TYPES}
        for item, full_text in zip(self.raw, self.full_texts):
            response = item["response"][0] if isinstance(item["response"], list) else item["response"]
            raw_records = extract_span_rels_sql_records(full_text, response, include_types=SQL_SPAN_TYPES, exclude_types=())
            for record in raw_records:
                raw_type_counts[record["type"]] += 1
            kept_records = extract_span_rels_sql_records(
                full_text,
                response,
                include_types=self.span_include_types,
                exclude_types=self.span_exclude_types,
            )
            for record in kept_records:
                kept_type_counts[record["type"]] += 1
            self.span_offsets.append(
                extract_span_rels_sql_offsets(
                    full_text,
                    response,
                    include_types=self.span_include_types,
                    exclude_types=self.span_exclude_types,
                )
            )
        print_rank(f"SpanRels-SQL span raw counts: {raw_type_counts}")
        print_rank(f"SpanRels-SQL span kept counts: {kept_type_counts}")

    def __getitem__(self, index):
        data = self.lm_ctx[index]
        sample = {"input_ids": data.astype(int), "t_input_ids": None}
        if self.t_lm_ctx is not None:
            sample["t_input_ids"] = self.t_lm_ctx[index].astype(int)
        if self.has_span_metadata:
            sample["span_offsets"] = self.span_offsets[index]
            sample["offset_mapping"] = self.offset_mapping[index]
        return sample

    def _process_lm(self, i, samp, model_data, no_model_data, gen_data, max_length=None):
        if max_length is None:
            max_length = self.max_length
        input_ids = samp["input_ids"]
        source_len = 1
        prompt = None
        sep_idx = find_prompt_response_separator(input_ids)
        if sep_idx is not None:
            source_len = sep_idx
            prompt = input_ids[:source_len]
            input_ids = np.concatenate([input_ids[:source_len], input_ids[source_len + 1 :]], axis=0)
        input_ids = input_ids[:max_length]
        input_len = len(input_ids)
        model_data["input_ids"][i][: input_len - 1] = torch.tensor(input_ids[:-1], dtype=torch.long)
        model_data["attention_mask"][i][: input_len - 1] = 1.0
        if self.args.model_type in ["gpt2"]:
            model_data["position_ids"][i][: input_len - 1] = torch.arange(0, input_len - 1, dtype=torch.long)
        no_model_data["label"][i][: input_len - 1] = torch.tensor(input_ids[1:], dtype=torch.long)
        no_model_data["label"][i][: source_len - 1] = -100
        if "loss_mask" in no_model_data:
            no_model_data["loss_mask"][i][: input_len - 1] = 1.0
            no_model_data["loss_mask"][i][: source_len - 1] = 0
        if prompt is not None and gen_data is not None:
            gen_data["input_ids"][i][-len(prompt) :] = torch.tensor(prompt, dtype=torch.long)
            gen_data["attention_mask"][i][-len(prompt) :] = 1.0

    def move_to_device(self, model_data, no_model_data, gen_data, device):
        for key in model_data:
            model_data[key] = model_data[key].to(device)
        for key in no_model_data:
            if isinstance(no_model_data[key], torch.Tensor):
                no_model_data[key] = no_model_data[key].to(device)
        if gen_data is not None:
            for key in gen_data:
                gen_data[key] = gen_data[key].to(device)
        return model_data, no_model_data, gen_data

    def collate(self, samples):
        bs = len(samples)
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
        if "span_offsets" in samples[0]:
            no_model_data["span_offsets"] = [sample["span_offsets"] for sample in samples]
            no_model_data["offset_mapping"] = torch.concat([sample["offset_mapping"] for sample in samples])
        gen_data = {
            "input_ids": torch.ones(bs, self.max_prompt_length, dtype=torch.long) * self.pad_id,
            "attention_mask": torch.zeros(bs, self.max_prompt_length, dtype=torch.long),
        }
        for i, samp in enumerate(samples):
            self._process_lm(i, samp, model_data, no_model_data, gen_data)

        t_model_data, t_no_model_data = None, None
        if samples[0]["t_input_ids"] is not None:
            t_model_data = {
                "input_ids": torch.ones(bs, self.args.t_max_length, dtype=torch.long) * self.pad_id,
                "attention_mask": torch.zeros(bs, self.args.t_max_length),
            }
            if self.args.model_type in ["gpt2"]:
                t_model_data["position_ids"] = torch.zeros(bs, self.args.t_max_length, dtype=torch.long)
            t_no_model_data = {"label": torch.ones(bs, self.args.t_max_length, dtype=torch.long) * -100}
            for i, samp in enumerate(samples):
                self._process_lm(
                    i,
                    {"input_ids": samp["t_input_ids"]},
                    t_model_data,
                    t_no_model_data,
                    None,
                    max_length=self.args.t_max_length,
                )
        return model_data, no_model_data, gen_data, t_model_data, t_no_model_data
