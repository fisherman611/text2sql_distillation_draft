# Literature Survey

This analysis scope is grounded in the text-to-SQL benchmark literature rather than generic SQL workload mining.

## Source anchors

- Spider: cross-domain SQL complexity, schema diversity, and hardness framing.
  Source: [Spider](https://aclanthology.org/D18-1425/)
- SParC: contextual dependency, coherent question sequences, and turn-level SQL generation.
  Source: [SParC](https://aclanthology.org/P19-1443.pdf)
- CoSQL: conversational text-to-SQL with clarification and natural interaction effects.
  Source: [CoSQL](https://aclanthology.org/D19-1204/)
- Dr.Spider: robustness-oriented perturbation analysis for text-to-SQL systems.
  Source: [Dr.Spider](https://openreview.net/forum?id=Wc5bmZZU9cy)
- CoE-SQL: multi-turn SQL generation as iterative SQL editing.
  Source: [CoE-SQL](https://aclanthology.org/2024.naacl-long.361/)

## Implemented survey axes

- Dataset scale:
  Implemented with sample, dialog, turn, and DB counts.
- Schema complexity:
  Implemented with tables, columns, foreign keys, graph density, and connected components.
- SQL complexity:
  Implemented with hardness, clause presence, nesting, set operations, join count, predicate count, and aggregation count.
- Conversational dependency:
  Implemented with previous-SQL reuse, token edit distance, clause deltas, and new-table introduction.
- Clarification behavior:
  Partially implemented with utterance marker heuristics such as `|`.
- Robustness:
  Not fully implemented as perturbation generation, but partially proxied through schema breadth, SQL diversity, and clarification-like turns.

## Not implemented

- Execution-time runtime cost analysis.
- Gold schema-link annotations.
- Synthetic perturbation suites in the style of Dr.Spider.
- User intent and system response generation tasks from auxiliary CoSQL tracks.
