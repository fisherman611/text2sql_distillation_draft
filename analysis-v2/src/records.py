from __future__ import annotations

from dataclasses import asdict, dataclass, field
from typing import Any, Dict, List, Optional


@dataclass
class SampleRecord:
    dataset: str
    split: str
    sample_id: str
    db_id: str
    query: str
    utterance: str
    dialog_id: str = ""
    turn_id: Optional[int] = None
    turn_index: int = 0
    is_dialog: bool = False
    source_path: str = ""
    source_index: int = -1
    source_dialog_index: int = -1
    source_turn_index: int = -1
    analysis_tags: List[str] = field(default_factory=list)

    def to_dict(self) -> Dict[str, Any]:
        return asdict(self)


@dataclass
class DialogRecord:
    dataset: str
    split: str
    dialog_id: str
    db_id: str
    num_turns: int
    source_path: str = ""
    source_index: int = -1

    def to_dict(self) -> Dict[str, Any]:
        return asdict(self)


@dataclass
class DbRecord:
    dataset: str
    db_id: str
    table_count: int
    column_count: int
    foreign_key_count: int
    avg_columns_per_table: float
    schema_edge_count: int
    schema_connected_components: int
    schema_graph_density: float
    source_path: str = ""

    def to_dict(self) -> Dict[str, Any]:
        return asdict(self)
