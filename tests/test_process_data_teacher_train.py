import json
from pathlib import Path

import pytest

from process_data import merge_teacher_train_data


def _json_line(record):
    return json.dumps(record, ensure_ascii=False) + "\n"


def test_merge_teacher_train_data_adds_teacher_prompt_fields(tmp_path: Path):
    teacher_path = tmp_path / "teacher_train.jsonl"
    teacher_path.write_text(
        _json_line(
            {
                "t_system_prompt": "teacher system",
                "t_user_prompt": "teacher user",
                "response": '{"sql": "SELECT 1"}',
            }
        ),
        encoding="utf-8",
    )
    student_lines = [
        _json_line(
            {
                "system_prompt": "student system",
                "user_prompt": "student user",
                "response": '{"sql": "SELECT 1"}',
            }
        )
    ]

    merged_lines = merge_teacher_train_data(student_lines, str(teacher_path))

    merged = json.loads(merged_lines[0])
    assert merged["system_prompt"] == "student system"
    assert merged["user_prompt"] == "student user"
    assert merged["t_system_prompt"] == "teacher system"
    assert merged["t_user_prompt"] == "teacher user"
    assert merged["response"] == '{"sql": "SELECT 1"}'


def test_merge_teacher_train_data_rejects_response_mismatch(tmp_path: Path):
    teacher_path = tmp_path / "teacher_train.jsonl"
    teacher_path.write_text(
        _json_line(
            {
                "t_system_prompt": "teacher system",
                "t_user_prompt": "teacher user",
                "response": '{"sql": "SELECT 2"}',
            }
        ),
        encoding="utf-8",
    )

    with pytest.raises(ValueError, match="responses differ"):
        merge_teacher_train_data(
            [
                _json_line(
                    {
                        "system_prompt": "student system",
                        "user_prompt": "student user",
                        "response": '{"sql": "SELECT 1"}',
                    }
                )
            ],
            str(teacher_path),
        )


def test_merge_teacher_train_data_rejects_missing_teacher_fields(tmp_path: Path):
    teacher_path = tmp_path / "teacher_train.jsonl"
    teacher_path.write_text(
        _json_line(
            {
                "t_system_prompt": "teacher system",
                "response": '{"sql": "SELECT 1"}',
            }
        ),
        encoding="utf-8",
    )

    with pytest.raises(ValueError, match="Missing teacher fields"):
        merge_teacher_train_data(
            [
                _json_line(
                    {
                        "system_prompt": "student system",
                        "user_prompt": "student user",
                        "response": '{"sql": "SELECT 1"}',
                    }
                )
            ],
            str(teacher_path),
        )
