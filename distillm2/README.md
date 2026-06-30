# DistiLLM-2: A Contrastive Approach Boosts the Distillation of LLMs (ICML 2025 Oral)

[![arXiv](https://img.shields.io/badge/Paper-arXiv:2503.07067-Green)](https://arxiv.org/abs/2503.07067)  [![BibTex](https://img.shields.io/badge/Paper-BibTex-yellow)](#bibtex)

Official PyTorch implementation of **DistiLLM-2**, as presented in our paper:  
[**DistiLLM-2: A Contrastive Approach Boosts the Distillation of LLMs**](https://arxiv.org/abs/2503.07067)  
by [Jongwoo Ko](https://sites.google.com/view/jongwooko)<sup>1,2</sup>, Tianyi Chen<sup>2</sup>, [Sungnyun Kim](https://sungnyunkim.notion.site/Sungnyun-Kim-4770a0182c47469ebdcd357cde97bd32)<sup>1</sup>, Tianyu Ding<sup>2</sup>, Luming Liang<sup>2</sup>, Ilya Zharkov<sup>2</sup>, and Se-Young Yun<sup>1</sup>  
<sup>1</sup>KAIST AI &nbsp;&nbsp; <sup>2</sup>Microsoft

---

## 🚀 Updates
- [x] (25.06.10) The official code implementation is finally out.
- [x] (25.06.09) DistiLLM-2 has been selected for an ***oral presentation at ICML (_top 1%_)***.
- [x] (25.03.11) DistiLLM-2 paper is out! The preliminary code will be available in this repo, and final code will be available in [here](https://github.com/jongwooko/distillm-2).

--- 

## 🔧 Environment Setup

Our codebase builds upon the [alignment-handbook repository](https://github.com/huggingface/alignment-handbook).
This copy keeps the upstream DistiLLM-2 code layout and adds a small Spider/Qwen3 adapter layer.

Use a dedicated Linux or WSL2 environment for this directory. The Qwen3 stack is pinned in `setup.py` to
`torch==2.9.1`, `transformers==4.57.3`, `trl==0.21.0`, `peft==0.18.1`, `accelerate==1.13.0`, and
`vllm==0.11.1`.

```bash
cd distillm2
conda create -n distillm2 python=3.11 -y
conda activate distillm2
python -m pip install --upgrade pip setuptools wheel
python -m pip install -e .
```

Install FlashAttention separately for the CUDA/PyTorch build on your machine:

```bash
python -m pip install flash-attn --no-build-isolation
```

For private Hugging Face model or adapter repos, copy `.env.hf.example` to `.env.hf` and set `HF_TOKEN`.
The Spider SQL workflow is documented in [`SQL_SPIDER.md`](SQL_SPIDER.md). The default Qwen3 runner is:

```bash
RUN_GPUS=0,1 bash scripts/run_spider_distillm2.sh
```

## 🚀 Generation

0. (Optional) Perform supervised fine-tuning before running DistiLLM-2. This step can be skipped if you are using an instruction-tuned model as the student. We recommend performing this step. However, if you choose to skip it, we suggest reducing the number of training iterations for DistiLLM-2 as described in Appendix D.2.

```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml --num_processes=4 src/run_sft.py training_configs/qwen2.5-1.5b-sft.yaml
```

1. Generate responses using the language model:

```bash
python generate/generate_vllm.py --model $MODEL_DIR --output_dir $OUTPUT_DIR --seed $SEED
```

This script generates one response per prompt. You can specify your prompt dataset (by default, we use `HuggingFaceH4/ultrachat_200k`). You can also set decoding hyperparameters by passing in the corresponding arguments (by default, we use a temperature of `0.8` for sampling).

2. Reformat into teacher-student pairs:

```bash
python generate/reformat.py --teacher_file $TEACHER_DIR --student_file $STUDENT_DIR --output_dir $OUTPUT_DIR
```

## 🏋️ Training

**Note**: Some LLMs (e.g., Qwen2.5) use different classifier head sizes depending on the model scale. To align them before distillation:
```Shell
python utils/resize_embedding.py --teacher-model Qwen/Qwen2.5-7B-Instruct --student-model Qwen/Qwen2.5-0.5B-Instruct
```

We provide training configuration files for the four setups described in the paper. Each configuration is designed for either a 2×A100 or 4×A100 GPU setup. You may need to adjust `num_processes` and `per_device_train_batch_size` to match your environment.
You can modify the student and teacher models by changing the values of `model_name_or_path` and `ref_model_name_or_path` in the configuration file.

* Qwen2.5-1.5B-DistiLLM2 (4xA100):
```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml --num_processes=4 src/run_distillm.py training_configs/qwen2.5-1.5b-distillm2.yaml
```

* Deepseek-Coder-1.3B-DistiLLM2 (4xA100):
```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml --num_processes=4 src/run_distillm.py training_configs/deepseek-coder-1.3b-distillm2.yaml
```

* TinyLLaVA (4xA100):
```bash
accelerate launch --config_file accelerate_configs/deepspeed_zero3.yaml --num_processes=4 src/run_distivlm.py training_configs/vlm.yaml
```

## 📊 Evaluation

For our evaluation benchmark, we use AlpacaEval, Evol-Instruct, and UltraFeedback. We generate responses for pairwise comparison with the LLM-as-a-Judge framework. For AlpacaEval, we use the official response from `text-davinci-003`. For Evol-Instruct and UltraFeedback, we use responses from `gpt-3.5-turbo`. As judge models, we use `GPT-4o` for AlpacaEval and Evol-Instruct, and `GPT-4o-mini` for UltraFeedback.

**Note** The MATH dataset (Hendrycks et al., 2021) is currently blocked. Although we use the `hendrycks/competition_math` dataset on Hugging Face for prompts, it is not available for use at this time.

1. Generate outputs for evaluation (e.g., Evol-Instruct):

```shell
python utils/merging.py --base-model-name ${STUDENT_DIR} --lora-model-name ${LORA_DIR}

python generate/generate_vllm.py --model ${LORA_DIR}/merged --output_dir ${OUTPUT_DIR} --data_dir evol-instruct --seed 200
```

2. Run LLM-as-a-Judge evaluation (e.g., `gpt-4o`): 

```shell
python eval/build_evaluation.py --data-path1 eval/evol-instruct/evol_inst_eval.json --data-path2 $OUTPUT_DIR/output_200.json --pairwise --output-file evol_inst-${EXP_NAME} --judge gpt-4o

python eval/build_evaluation.py --data-path2 eval/evol-instruct/evol_inst_eval.json --data-path1 $OUTPUT_DIR/output_200.json --pairwise --output-file ${EXP_NAME}-evol_inst --judge gpt-4o

bash eval/run.sh ${3} ${EXP_NAME}
```

## 📚 BibTeX
If you find this repo useful for your research, please consider citing us:

```
@inproceedings{kodistillm,
  title={DistiLLM: Towards Streamlined Distillation for Large Language Models},
  author={Ko, Jongwoo and Kim, Sungnyun and Chen, Tianyi and Yun, Se-Young},
  booktitle={Forty-first International Conference on Machine Learning}
}

@inproceedings{
ko2025distillm,
title={Disti{LLM}-2: A Contrastive Approach Boosts the Distillation of {LLM}s},
author={Jongwoo Ko and Tianyi Chen and Sungnyun Kim and Tianyu Ding and Luming Liang and Ilya Zharkov and Se-Young Yun},
booktitle={Forty-second International Conference on Machine Learning},
year={2025},
url={https://openreview.net/forum?id=rc65N9xIrY}
}
```

## ✉️ Contact
If you have any questions or feedback, feel free to reach out:
- Jongwoo Ko: jongwoo.ko@kaist.ac.kr
