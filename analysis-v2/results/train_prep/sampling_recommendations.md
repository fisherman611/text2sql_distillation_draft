# Sampling Recommendations

## Single-turn baseline
- Start from `single_turn_manifest` with Spider as the majority share.
- Include flattened SParC and CoSQL turns for conversational residue and paraphrase diversity.

## Multi-turn baseline
- Use `multi_turn_manifest` from SParC and CoSQL only.
- Mix SParC for cleaner contextual edits and CoSQL for clarification-heavy dialogue.

## Hybrid default
- Stage 1: Spider-heavy single-turn SFT.
- Stage 2: joint SParC and CoSQL multi-turn continuation training.
- Stage 3: oversample `edit_turn_manifest` rows tagged with `nested`, `having`, and `new_table_introduction`.

## Hardness balancing
- Median DB complexity score: 7.0.
- Keep explicit buckets by SQL hardness and DB complexity for controlled ablations.
