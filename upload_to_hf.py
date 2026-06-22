from huggingface_hub import HfApi

HfApi().upload_folder(
    folder_path="runs/",
    repo_id="distillation-sql/baselines",
    repo_type="model",
)
