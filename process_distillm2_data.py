import json
import multiprocessing
import os
import sys
import time

import numpy as np
import torch
from transformers import AutoTokenizer

from data_utils.indexed_dataset import make_builder


class Encoder:
    def __init__(self, args):
        self.args = args

    def initializer(self):
        Encoder.tokenizer = AutoTokenizer.from_pretrained(
            self.args.model_path,
            padding_side="right",
        )

    @staticmethod
    def _chat_prompt(system_prompt, user_prompt):
        try:
            return Encoder.tokenizer.apply_chat_template(
                [
                    {"role": "system", "content": system_prompt},
                    {"role": "user", "content": user_prompt},
                ],
                add_generation_prompt=True,
                tokenize=False,
                enable_thinking=False,
            )
        except TypeError:
            return Encoder.tokenizer.apply_chat_template(
                [
                    {"role": "system", "content": system_prompt},
                    {"role": "user", "content": user_prompt},
                ],
                add_generation_prompt=True,
                tokenize=False,
            )

    def _encode_full(self, prompt, response):
        prompt_only_tokens = Encoder.tokenizer.encode(prompt, add_special_tokens=False)
        full_tokens = Encoder.tokenizer.encode(prompt + response, add_special_tokens=False)
        response_start_idx = len(prompt_only_tokens)

        if prompt_only_tokens != full_tokens[:response_start_idx]:
            response_start_idx = max(0, response_start_idx - 1)

        prompt_tokens = full_tokens[:response_start_idx]
        response_tokens = full_tokens[response_start_idx:]
        eos_token_id = Encoder.tokenizer.eos_token_id
        if not response_tokens or response_tokens[-1] != eos_token_id:
            response_tokens = response_tokens + [eos_token_id]

        if len(prompt_tokens) + len(response_tokens) > self.args.max_length:
            prompt_tokens = prompt_tokens[-self.args.max_prompt_length :]

        max_response_len = self.args.max_length - len(prompt_tokens)
        if max_response_len <= 0:
            prompt_tokens = prompt_tokens[-(self.args.max_length - 1) :]
            max_response_len = 1
        if len(response_tokens) > max_response_len:
            response_tokens = response_tokens[:max_response_len]
        return prompt_tokens, response_tokens

    def encode(self, line):
        raw_line = line
        line = json.loads(line)
        system_prompt = line["system_prompt"]
        user_prompt = line["user_prompt"]
        prompt = self._chat_prompt(system_prompt, user_prompt)

        chosen_response = line.get("teacher_response") or line.get("chosen_response") or line.get("response") or ""
        rejected_response = line.get("student_response") or line.get("rejected_response") or ""
        eval_response = line.get("gold_response") or chosen_response

        chosen_prompt_tokens, chosen_tokens = self._encode_full(prompt, chosen_response)
        rejected_prompt_tokens, rejected_tokens = self._encode_full(prompt, rejected_response)
        eval_prompt_tokens, eval_tokens = self._encode_full(prompt, eval_response)

        return (
            line,
            prompt,
            chosen_prompt_tokens,
            chosen_tokens,
            rejected_prompt_tokens,
            rejected_tokens,
            eval_prompt_tokens,
            eval_tokens,
            len(raw_line),
        )


def load_split_data(args):
    split_to_file = {
        "train": "train.jsonl",
        "valid": "dev.jsonl",
        "test": "test.jsonl",
    }
    if args.split not in split_to_file:
        raise ValueError(f"Unsupported split: {args.split}")

    file_path = os.path.join(args.data_dir, split_to_file[args.split])
    if not os.path.exists(file_path):
        raise FileNotFoundError(f"Cannot find file for split '{args.split}': {file_path}")

    with open(file_path, encoding="utf-8") as f:
        return f.readlines()


def get_builder_dtype(args):
    return np.uint32 if args.model_type == "qwen" else np.uint16


def _add_item(builder, prompt_tokens, response_tokens):
    builder.add_item(torch.IntTensor(prompt_tokens + [-1] + response_tokens))


def main():
    from arguments import get_args

    args = get_args()
    if args.split is None:
        raise ValueError("Please provide --split with one of: train, valid, test")

    if "generated" not in args.processed_data_dir:
        args.processed_data_dir = os.path.join(args.processed_data_dir, args.model_type)
    os.makedirs(args.processed_data_dir, exist_ok=True)

    data = load_split_data(args)
    if args.train_num is not None and args.train_num > 0:
        data = data[: args.train_num]

    encoder = Encoder(args)
    workers = args.data_process_workers if args.data_process_workers and args.data_process_workers > 0 else 1
    pool = multiprocessing.Pool(processes=workers, initializer=encoder.initializer)
    encoded_docs = pool.imap_unordered(encoder.encode, data, chunksize=50)

    dtype = get_builder_dtype(args)
    if args.split == "train":
        chosen_builder = make_builder(
            os.path.join(args.processed_data_dir, "chosen_train_0.bin"),
            impl="mmap",
            dtype=dtype,
        )
        rejected_builder = make_builder(
            os.path.join(args.processed_data_dir, "rejected_train_0.bin"),
            impl="mmap",
            dtype=dtype,
        )
        eval_builder = None
    else:
        prefix = args.split
        eval_builder = make_builder(
            os.path.join(args.processed_data_dir, f"{prefix}_0.bin"),
            impl="mmap",
            dtype=dtype,
        )
        chosen_builder = None
        rejected_builder = None

    proc_start = time.time()
    total_bytes_processed = 0
    prompt_lens, chosen_lens, rejected_lens = [], [], []

    json_file = open(
        os.path.join(args.processed_data_dir, f"{args.split}.jsonl"),
        "w",
        encoding="utf-8",
    )

    inst_num = 0
    for lid, (
        line,
        prompt_str,
        chosen_prompt,
        chosen,
        rejected_prompt,
        rejected,
        eval_prompt,
        eval_tokens,
        bytes_processed,
    ) in enumerate(encoded_docs):
        total_bytes_processed += bytes_processed
        if len(chosen_prompt) >= args.max_length:
            continue

        if args.split == "train":
            if not chosen or not rejected:
                continue
            _add_item(chosen_builder, chosen_prompt, chosen)
            _add_item(rejected_builder, rejected_prompt, rejected)
            chosen_lens.append(len(chosen))
            rejected_lens.append(len(rejected))
        else:
            if not eval_tokens:
                continue
            _add_item(eval_builder, eval_prompt, eval_tokens)

        json_file.write(
            json.dumps(
                {
                    "prompt": prompt_str,
                    "response": line.get("gold_response") or line.get("teacher_response", ""),
                    "teacher_response": line.get("teacher_response", ""),
                    "student_response": line.get("student_response", ""),
                    "db_id": line.get("db_id"),
                    "question": line.get("question"),
                },
                ensure_ascii=False,
            )
            + "\n"
        )

        prompt_lens.append(len(chosen_prompt))
        inst_num += 1
        if lid % 1000 == 0:
            elapsed = time.time() - proc_start
            mbs = total_bytes_processed / elapsed / 1024 / 1024 if elapsed > 0 else 0
            print(
                f"Processed {lid} documents. {inst_num} instances. "
                f"({lid / elapsed if elapsed > 0 else 0:.2f} docs/s, {mbs:.2f} MB/s).",
                file=sys.stderr,
            )

    if args.split == "train":
        chosen_builder.finalize(os.path.join(args.processed_data_dir, "chosen_train_0.idx"))
        rejected_builder.finalize(os.path.join(args.processed_data_dir, "rejected_train_0.idx"))
    else:
        eval_builder.finalize(os.path.join(args.processed_data_dir, f"{args.split}_0.idx"))

    pool.close()
    pool.join()
    json_file.close()

    print("Data num", len(prompt_lens))
    if prompt_lens:
        print("Prompt lengths.", "Mean:", np.mean(prompt_lens), "Max:", np.max(prompt_lens), "Min:", np.min(prompt_lens))
    if chosen_lens:
        print("Chosen lengths.", "Mean:", np.mean(chosen_lens), "Max:", np.max(chosen_lens), "Min:", np.min(chosen_lens))
    if rejected_lens:
        print(
            "Rejected lengths.",
            "Mean:",
            np.mean(rejected_lens),
            "Max:",
            np.max(rejected_lens),
            "Min:",
            np.min(rejected_lens),
        )


if __name__ == "__main__":
    main()
