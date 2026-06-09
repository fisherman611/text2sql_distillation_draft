from huggingface_hub import HfApi

HfApi().upload_folder(
    folder_path="benchmarks/",
    repo_id="distillation-sql/benchmarks",
    repo_type="dataset",
)
