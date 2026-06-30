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

Use a dedicated environment for this directory. Do not install it into the
repository-root environment: the root project and `distillm2/` pin different
versions of PyTorch, PEFT, Transformers, and TRL.

The training stack depends on vLLM, DeepSpeed, bitsandbytes, FlashAttention, and
Bash scripts. Run it on Linux or WSL2 with an NVIDIA GPU rather than native
Windows PowerShell.

### 1. Create and activate the environment

```bash
cd distillm2

conda create -n distillm2 python=3.11 -y
conda activate distillm2

python -m pip install --upgrade pip setuptools wheel
```

To discard a broken existing environment and recreate it:

```bash
conda deactivate
conda env remove -n distillm2 -y
conda create -n distillm2 python=3.11 -y
conda activate distillm2
```

When accessing this Windows checkout from WSL2, the equivalent project path is
typically:

```bash
cd /mnt/d/GitHub/text2sql_distillation_draft/distillm2
```

### 2. Install CUDA 12.8, DistiLLM-2, and FlashAttention

```bash
conda install -y \
  -c nvidia/label/cuda-12.8.0 \
  -c nvidia \
  "cuda=12.8.0"

export CUDA_HOME="${CONDA_PREFIX}"
export PATH="${CUDA_HOME}/bin:${PATH}"
export CPATH="${CUDA_HOME}/targets/x86_64-linux/include:${CPATH:-}"
export LD_LIBRARY_PATH="${CUDA_HOME}/targets/x86_64-linux/lib:${LD_LIBRARY_PATH:-}"

python -m pip install torch==2.9.0 \
  --index-url https://download.pytorch.org/whl/cu128
python -m pip install vllm==0.11.1
python -m pip install -e .
```

The editable install is recommended for this repository so changes under
`src/` are used immediately. `setup.py` accepts Python 3.10.9 or newer; this
workflow uses Python 3.11, PyTorch 2.9.0 built for CUDA 12.8, and a matching
CUDA 12.8 development toolkit. The older PyTorch 2.4 instruction from the
upstream project does not apply to this Qwen3 setup.

Before building FlashAttention, verify that the CUDA compiler, development
headers, and PyTorch build all use CUDA 12.8:

```bash
which nvcc
nvcc --version
find "${CUDA_HOME}" -name cuda_runtime.h | head
python -c "import torch; print('torch:', torch.__version__); print('torch CUDA:', torch.version.cuda); print('CUDA available:', torch.cuda.is_available()); print('GPU count:', torch.cuda.device_count())"
nvidia-smi
```

Both `nvcc --version` and `torch.version.cuda` must report CUDA 12.8. The
`CUDA Version` shown by `nvidia-smi` is the maximum version supported by the
driver; it does not prove that a complete CUDA development toolkit is
installed.

Build FlashAttention with limited parallelism to avoid exhausting host RAM.
On an NVIDIA A40, restrict the CUDA architecture list to Ampere `sm_80`;
otherwise FlashAttention may try to compile extra targets such as `sm_90`,
`sm_100`, and `sm_120`, which is slow and can fail during the ninja build:

```bash
TORCH_CUDA_ARCH_LIST="8.0" MAX_JOBS=2 \
  python -m pip install flash-attn --no-build-isolation
python -c "import torch, flash_attn; print(torch.__version__, torch.version.cuda); print('flash-attn OK')"
```

### 3. Configure Hugging Face access

Copy the provided environment template:

```bash
cp .env.hf.example .env.hf
```

Edit `.env.hf` and set at least:

```dotenv
HF_TOKEN=hf_your_token
HF_HOME=.hf_cache
RUN_GPUS=0,1
```

`HF_TOKEN` is required when the configured model or adapter repository is
private. Do not commit `.env.hf`.

### 4. Validate the Spider configuration

Generate and inspect the runtime configuration without downloading models or
starting training:

```bash
DRY_RUN=1 bash scripts/run_spider_distillm2.sh
```

The script uses the paths from `.env.hf`, writes
`runtime_configs/spider_distillm2.yaml`, and stops before inference and
training.

### 5. Run the complete Spider DistiLLM-2 workflow

For the default two-GPU setup:

```bash
bash scripts/run_spider_distillm2.sh
```

The workflow reuses existing inference results and pair data when available.
It follows the original DistiLLM-2 pairing format: teacher generations become
`chosen`, student generations become `rejected`, and the teacher is also loaded
as the reference model during `src/run_distillm.py`. Gold SQL remains useful for
evaluation, but it is not the default `chosen` response for DistiLLM-2 pairs.
To regenerate both:

```bash
REBUILD_INFERENCE=1 REBUILD_PAIRS=1 bash scripts/run_spider_distillm2.sh
```

To select two specific GPUs:

```bash
RUN_GPUS=2,3 bash scripts/run_spider_distillm2.sh
```

For a single GPU:

```bash
RUN_GPUS=0 NUM_PROCESSES=1 bash scripts/run_spider_distillm2.sh
```

Single-GPU training may run out of memory because training holds both the
Qwen3-0.6B student and Qwen3-4B teacher. If this happens, reduce
`per_device_train_batch_size`, `max_length`, or `max_prompt_length` in
`training_configs/qwen3-0.6b-4b-spider-distillm2.yaml`. Increasing gradient
accumulation alone does not reduce the peak memory of one micro-batch.

### Optional Gemma-2 dependency

If you are decoding with Gemma-2, install a FlashInfer build compatible with
the PyTorch and CUDA versions in the active environment. Do not use the old
hard-coded Torch 2.4/CUDA 12.1 wheel command unless those versions exactly
match your environment.

### Setup troubleshooting

- If `vllm`, DeepSpeed, bitsandbytes, or FlashAttention fails to install on
  native Windows, move the environment to Linux or WSL2.
- If FlashAttention reports `cuda_runtime.h: No such file or directory`, the
  selected CUDA toolkit is missing development headers or `CUDA_HOME` points
  to an incomplete installation.
- If FlashAttention reports detected CUDA 13.3 versus PyTorch CUDA 12.8, the
  compiler toolkit is wrong. Reactivate the environment, set
  `CUDA_HOME="${CONDA_PREFIX}"`, and confirm `nvcc --version` before retrying.
- If FlashAttention reaches ninja compilation but fails after compiling many
  architectures such as `sm_80`, `sm_90`, `sm_100`, and `sm_120`, restrict the
  build to the GPU architecture you actually use. For A40 and A100 use
  `TORCH_CUDA_ARCH_LIST="8.0"`; for H100 use `"9.0"`; for RTX 4090 use
  `"8.9"`. The `nvcc warning : incompatible redefinition for option
  'compiler-bindir'` message is usually only a warning; the real error is the
  first `FAILED:` or `fatal error:` line before `ninja: build stopped`.
- Do not install CUDA 12.8 using only the labeled channel with
  `--override-channels`; the solver also needs the main `nvidia` channel for
  the `cuda-version` dependency.
- If CUDA is unavailable inside WSL2, verify `nvidia-smi` before reinstalling
  Python packages.
- If dependency resolution changes packages used by the repository root,
  confirm that the `distillm2` Conda environment is active.

The detailed data preparation, SFT, inference, pair-building, training, and
Hugging Face checkpoint workflow is documented in
[`SQL_SPIDER.md`](SQL_SPIDER.md).

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
