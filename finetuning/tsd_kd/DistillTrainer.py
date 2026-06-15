# Copyright 2020-2025 The HuggingFace Team. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os
import random
from typing import Any, Callable, Optional, Union

import torch
import torch.nn as nn
import torch.nn.functional as F
from datasets import Dataset
from transformers import (
    AutoModelForCausalLM,
    BaseImageProcessor,
    DataCollator,
    FeatureExtractionMixin,
    GenerationConfig,
    PreTrainedModel,
    PreTrainedTokenizerBase,
    ProcessorMixin,
    is_wandb_available,
)
from transformers.trainer_callback import TrainerCallback
from transformers.trainer_utils import EvalPrediction
from transformers.utils import is_peft_available

from trl.models import prepare_deepspeed
from trl.models.utils import unwrap_model_for_generation
from trl.trainer.gkd_config import GKDConfig
from trl.trainer.sft_trainer import SFTTrainer
from trl.trainer.utils import (
    DataCollatorForChatML,
    disable_dropout_in_model,
    entropy_from_logits,
)

if is_peft_available():
    from peft import PeftConfig

if is_wandb_available():
    import wandb  # noqa: F401


def normalize_entropy(entropy: torch.Tensor) -> torch.Tensor:
    total_entropy = entropy.sum(dim=-1, keepdim=True).clamp_min(1e-8)
    return entropy / total_entropy


def top_k_entropy_position(norm_entropy: torch.Tensor, top_p: float = 0.1) -> torch.Tensor:
    """
    Return the first position where cumulative normalized entropy crosses top_p.
    """
    cum_entropy = torch.cumsum(norm_entropy, dim=-1)
    mask = cum_entropy >= top_p
    return mask.float().argmax(dim=-1)


def indirect_kd_loss(
    student_logits: torch.Tensor,
    teacher_logits: torch.Tensor,
    mask: Optional[torch.Tensor] = None,
    T: float = 1.0,
    K: int = 10,
) -> torch.Tensor:
    if student_logits.numel() == 0 or student_logits.size(1) == 0:
        return student_logits.new_zeros(())

    B, L, V = student_logits.shape
    K = min(K, V)

    student_logits = student_logits / T
    teacher_logits = teacher_logits / T

    student_topk_logits, student_topk_indices = torch.topk(student_logits, K, dim=2)
    teacher_topk_logits = torch.gather(teacher_logits, dim=2, index=student_topk_indices)
    teacher_sorted_idx = torch.argsort(teacher_topk_logits, dim=2, descending=True)

    batch_indices = torch.arange(B, device=student_logits.device).view(B, 1, 1).expand(B, L, K)
    seq_indices = torch.arange(L, device=student_logits.device).view(1, L, 1).expand(B, L, K)
    sorted_student_logits = student_topk_logits[batch_indices, seq_indices, teacher_sorted_idx]
    sorted_student_logits = sorted_student_logits - sorted_student_logits.mean(dim=2, keepdim=True)

    log_cumsum_exp = torch.logcumsumexp(sorted_student_logits, dim=2)
    log_probs = sorted_student_logits - log_cumsum_exp
    loss = -log_probs.sum(dim=2)

    if mask is not None:
        mask = mask.to(loss.device, dtype=loss.dtype)
        denom = mask.sum().clamp_min(1.0)
        return (loss * mask).sum() / denom
    return loss.mean()


class DistillTrainer(SFTTrainer):
    _tag_names = ["trl", "tsd-kd"]

    def __init__(
        self,
        model: Optional[Union[PreTrainedModel, nn.Module, str]] = None,
        teacher_model: Union[PreTrainedModel, nn.Module, str] = None,
        args: Optional[GKDConfig] = None,
        data_collator: Optional[DataCollator] = None,  # type: ignore
        train_dataset: Optional[Dataset] = None,
        eval_dataset: Optional[Union[Dataset, dict[str, Dataset]]] = None,
        processing_class: Optional[
            Union[PreTrainedTokenizerBase, BaseImageProcessor, FeatureExtractionMixin, ProcessorMixin]
        ] = None,
        compute_metrics: Optional[Callable[[EvalPrediction], dict]] = None,
        callbacks: Optional[list[TrainerCallback]] = None,
        optimizers: tuple[torch.optim.Optimizer, torch.optim.lr_scheduler.LambdaLR] = (None, None),
        preprocess_logits_for_metrics: Optional[Callable[[torch.Tensor, torch.Tensor], torch.Tensor]] = None,
        peft_config: Optional["PeftConfig"] = None,
        formatting_func: Optional[Callable] = None,
        token_entropy_percentile_threshold: float = 0.1,
        indirect_kd_alpha: float = 0.1,
    ):
        args.remove_unused_columns = False
        data_collator = DataCollatorForChatML(tokenizer=processing_class, max_length=args.max_length)

        super().__init__(
            model,
            args=args,
            data_collator=data_collator,
            train_dataset=train_dataset,
            eval_dataset=eval_dataset,
            processing_class=processing_class,
            compute_metrics=compute_metrics,
            callbacks=callbacks,
            optimizers=optimizers,
            preprocess_logits_for_metrics=preprocess_logits_for_metrics,
            peft_config=peft_config,
            formatting_func=formatting_func,
        )

        if args.teacher_model_init_kwargs is None:
            teacher_model_init_kwargs = {}
        elif not isinstance(teacher_model, str):
            raise ValueError(
                "teacher_model_init_kwargs was passed, but teacher_model is already instantiated."
            )
        else:
            teacher_model_init_kwargs = args.teacher_model_init_kwargs
            teacher_model_init_kwargs["torch_dtype"] = (
                teacher_model_init_kwargs["torch_dtype"]
                if teacher_model_init_kwargs["torch_dtype"] in ["auto", None]
                else getattr(torch, teacher_model_init_kwargs["torch_dtype"])
            )

        if isinstance(teacher_model, str):
            teacher_model = AutoModelForCausalLM.from_pretrained(teacher_model, **teacher_model_init_kwargs)

        if args.disable_dropout:
            disable_dropout_in_model(self.model)

        if self.is_deepspeed_enabled:
            self.teacher_model = prepare_deepspeed(teacher_model, self.accelerator)
        else:
            self.teacher_model = self.accelerator.prepare_model(teacher_model, evaluation_mode=True)

        self.lmbda = args.lmbda
        self.beta = args.beta
        self.temperature = args.temperature
        self.seq_kd = args.seq_kd
        self.token_entropy_percentile_threshold = token_entropy_percentile_threshold
        self.indirect_kd_alpha = indirect_kd_alpha
        self.generation_config = GenerationConfig(
            max_new_tokens=args.max_new_tokens,
            temperature=args.temperature,
            do_sample=True,
            top_k=0,
            use_cache=False if args.gradient_checkpointing else True,
            pad_token_id=self.processing_class.pad_token_id,
        )
        if (
            hasattr(self.model.generation_config, "eos_token_id")
            and self.model.generation_config.eos_token_id is not None
        ):
            self.generation_config.eos_token_id = self.model.generation_config.eos_token_id

    @staticmethod
    def generalized_jsd_loss(
        student_logits: torch.Tensor,
        teacher_logits: torch.Tensor,
        labels: Optional[torch.Tensor] = None,
        beta: float = 0.9,
        temperature: float = 1.0,
        reduction: str = "batchmean",
        token_entropy_percentile_threshold: float = 0.1,
        indirect_kd_alpha: float = 0.1,
    ) -> torch.Tensor:
        student_logits = student_logits / temperature
        teacher_logits = teacher_logits / temperature

        student_log_probs = F.log_softmax(student_logits, dim=-1)
        teacher_log_probs = F.log_softmax(teacher_logits, dim=-1)
        beta_t = torch.tensor(beta, dtype=student_log_probs.dtype, device=student_log_probs.device)
        mixture_log_probs = torch.logsumexp(
            torch.stack(
                [
                    student_log_probs + torch.log1p(-beta_t),
                    teacher_log_probs + torch.log(beta_t),
                ]
            ),
            dim=0,
        )

        mask = labels != -100 if labels is not None else torch.ones_like(student_logits[..., 0], dtype=torch.bool)
        entropies = entropy_from_logits(student_logits)
        entropies_teacher = entropy_from_logits(teacher_logits)
        weight = torch.sigmoid(entropies - entropies_teacher).detach()

        non_pad_entropies = entropies[mask]
        if non_pad_entropies.numel() == 0:
            entropy_mask = torch.zeros_like(entropies, dtype=torch.bool)
            d_token_len = 0
        else:
            entropy_threshold = torch.quantile(
                non_pad_entropies.float(),
                token_entropy_percentile_threshold,
            )
            entropy_mask = entropies >= entropy_threshold
            normalized_entropies = normalize_entropy(non_pad_entropies.float())
            d_token_len = int(top_k_entropy_position(normalized_entropies, token_entropy_percentile_threshold).item()) + 1
            d_token_len = min(d_token_len, student_logits.size(1))

        regularization_denom = entropy_mask.sum().clamp_min(1)
        regularization = (entropies * entropy_mask).sum() / regularization_denom

        topk_loss = indirect_kd_loss(
            student_logits[:, :d_token_len, :],
            teacher_logits[:, :d_token_len, :],
            mask=mask[:, :d_token_len],
            K=10,
        )

        if student_logits.size(1) > 0:
            kl_student = F.kl_div(mixture_log_probs, student_log_probs, reduction="none", log_target=True)
            kl_teacher = F.kl_div(mixture_log_probs, teacher_log_probs, reduction="none", log_target=True)
            jsd = beta_t * kl_teacher + (1 - beta_t) * kl_student
            jsd = jsd * weight.unsqueeze(-1)
        else:
            jsd = F.kl_div(teacher_log_probs, student_log_probs, reduction="none", log_target=True)

        if labels is not None:
            jsd = jsd[mask]

        if reduction == "batchmean":
            if labels is not None:
                loss = jsd.sum() / mask.sum().clamp_min(1)
            else:
                loss = jsd.sum() / (jsd.size(0) * jsd.size(1))
            return loss + regularization + indirect_kd_alpha * topk_loss
        if reduction == "sum":
            return jsd.sum()
        if reduction == "mean":
            return jsd.mean()
        return jsd

    def compute_loss(self, model, inputs, return_outputs=False, num_items_in_batch=None):
        outputs_student = model(
            input_ids=inputs["input_ids"],
            attention_mask=inputs["attention_mask"],
        )

        self.teacher_model.eval()
        with torch.no_grad():
            outputs_teacher = self.teacher_model(
                input_ids=inputs["input_ids"],
                attention_mask=inputs["attention_mask"],
            )

        prompt_lengths = inputs["prompts"].shape[1]
        shifted_student_logits = outputs_student.logits[:, prompt_lengths - 1 : -1, :]
        shifted_teacher_logits = outputs_teacher.logits[:, prompt_lengths - 1 : -1, :]
        shifted_labels = inputs["labels"][:, prompt_lengths:]

        loss = self.generalized_jsd_loss(
            student_logits=shifted_student_logits,
            teacher_logits=shifted_teacher_logits,
            labels=shifted_labels,
            beta=self.beta,
            temperature=self.temperature,
            token_entropy_percentile_threshold=self.token_entropy_percentile_threshold,
            indirect_kd_alpha=self.indirect_kd_alpha,
        )

        return (loss, outputs_student) if return_outputs else loss

    @staticmethod
    def generate_on_policy_outputs(model, inputs, generation_config, pad_token_id=None):
        generated_outputs = model.generate(
            input_ids=inputs["prompts"],
            attention_mask=inputs.get("prompt_attention_mask", None),
            generation_config=generation_config,
            return_dict_in_generate=True,
        )

        generated_tokens = generated_outputs.sequences
        new_attention_mask = torch.ones_like(generated_tokens)
        new_labels = generated_tokens.clone()

        if pad_token_id is not None:
            new_labels[new_labels == pad_token_id] = -100
            new_attention_mask[generated_tokens == pad_token_id] = 0

        return generated_tokens, new_attention_mask, new_labels

    def training_step(
        self,
        model: nn.Module,
        inputs: dict[str, Union[torch.Tensor, Any]],
        num_items_in_batch: Optional[int] = None,
    ) -> torch.Tensor:
        if self.seq_kd:
            with unwrap_model_for_generation(self.teacher_model, self.accelerator) as unwrapped_model:
                new_input_ids, new_attention_mask, new_labels = self.generate_on_policy_outputs(
                    unwrapped_model,
                    inputs,
                    self.generation_config,
                    self.processing_class.pad_token_id,
                )
            inputs["input_ids"] = new_input_ids
            inputs["attention_mask"] = new_attention_mask
            inputs["labels"] = new_labels

        if random.random() <= self.lmbda:
            with unwrap_model_for_generation(model, self.accelerator) as unwrapped_model:
                new_input_ids, new_attention_mask, new_labels = self.generate_on_policy_outputs(
                    unwrapped_model,
                    inputs,
                    self.generation_config,
                    self.processing_class.pad_token_id,
                )
            inputs["input_ids"] = new_input_ids
            inputs["attention_mask"] = new_attention_mask
            inputs["labels"] = new_labels

        return super().training_step(model, inputs, num_items_in_batch)

    def create_model_card(
        self,
        model_name: Optional[str] = None,
        dataset_name: Optional[str] = None,
        tags: Union[str, list[str], None] = None,
    ):
        if not self.is_world_process_zero():
            return

        if hasattr(self.model.config, "_name_or_path") and not os.path.isdir(self.model.config._name_or_path):
            base_model = self.model.config._name_or_path
        else:
            base_model = None

        if tags is None:
            tags = set()
        elif isinstance(tags, str):
            tags = {tags}
        else:
            tags = set(tags)

        if hasattr(self.model.config, "unsloth_version"):
            tags.add("unsloth")

        tags.update(self._tag_names)
