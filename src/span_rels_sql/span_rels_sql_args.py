from __future__ import annotations

import argparse
import os

try:
    import deepspeed
except ImportError:  # pragma: no cover
    deepspeed = None

from arguments import (
    add_data_args,
    add_distillm_args,
    add_gen_args,
    add_hp_args,
    add_minillm_args,
    add_model_args,
    add_peft_args,
    add_ppo_args,
    add_runtime_args,
)


def add_span_rels_sql_args(parser: argparse.ArgumentParser):
    group = parser.add_argument_group("span_rels_sql", "SQL span relation loss configurations")
    group.add_argument("--span-rels-sql-weight", type=float, default=0.6)
    group.add_argument("--sql-span-types", nargs="+", default=None)
    group.add_argument("--exclude-sql-span-types", nargs="+", default=None)
    group.add_argument("--use-teacher-shared-attn", action="store_true")
    group.add_argument("--no-teacher-shared-attn", action="store_false", dest="use_teacher_shared_attn")
    group.add_argument("--use-span-weight", action="store_true")
    group.add_argument("--no-span-weight", action="store_false", dest="use_span_weight")
    group.set_defaults(use_teacher_shared_attn=True, use_span_weight=True)
    return parser


def get_span_rels_sql_args():
    parser = argparse.ArgumentParser()
    parser = add_model_args(parser)
    parser = add_runtime_args(parser)
    parser = add_data_args(parser)
    parser = add_hp_args(parser)
    parser = add_ppo_args(parser)
    parser = add_minillm_args(parser)
    parser = add_distillm_args(parser)
    parser = add_span_rels_sql_args(parser)
    parser = add_gen_args(parser)
    parser = add_peft_args(parser)
    if deepspeed is not None:
        parser = deepspeed.add_config_arguments(parser)

    args, unknown = parser.parse_known_args()
    assert all("--" not in item for item in unknown), unknown
    if args.split == "dev":
        args.split = "valid"
    args.local_rank = int(os.getenv("LOCAL_RANK", "0"))
    args.n_gpu = args.n_gpu * args.n_nodes
    if args.type is None:
        args.type = "srkl"
    if args.kd_ratio is None:
        args.kd_ratio = 0.6
    return args
