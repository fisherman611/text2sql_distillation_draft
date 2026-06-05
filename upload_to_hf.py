from huggingface_hub import HfApi

HfApi().upload_folder(
    folder_path="results/",
    repo_id="fisherman611/t2c_qwen2.5",
    repo_type="model",
)
