# Analysis Report

## Dataset comparison

- Spider has the highest average SQL length (21.87) and the highest nested SQL rate (14.53%).
- SParC has the largest total SQL turn count (10228) and the largest dialog inventory (3034 train dialogs).
- CoSQL keeps similar SQL length to SParC (18.6) but spans the largest schema inventory (178 DBs).

## Schema comparison

- Spider and SParC share the same schema DB count in the local split setup (166), while CoSQL adds broader schema coverage.
- CoSQL has the highest average columns per DB (28.16) and slightly denser schemas than Spider and SParC.
- Across all three, average tables per DB stay close (5.28 to 5.39), so schema breadth differs more in columns and relation structure than raw table count.

## SQL complexity comparison

- Spider contributes the strongest single-turn compositional load: hard+extra share 35.35%, nested 14.53%, average joins 0.54.
- SParC SQLs are shorter and structurally lighter than Spider, but still retain substantial `GROUP BY` use (20.09%).
- CoSQL is structurally between Spider and SParC, with more `ORDER BY` than SParC (18.66% vs 15.47%) and higher nested usage.

## Conversational comparison

- SParC is the cleaner contextual-edit benchmark: more dialogs and more turns to model sequential SQL refinement.
- CoSQL exposes more conversational noise and clarification behavior, including explicit clarification markers in utterances.
- Average dialog turn reuse is a meaningful signal in both datasets, so previous-SQL editing should be treated as a first-class training view rather than a side feature.

## Training implications

- Spider contributes broad single-turn SQL composition, harder nested structures, and better clause coverage for schema-grounded generation.
- SParC contributes controlled multi-turn context dependency and clean SQL-to-SQL editing patterns.
- CoSQL contributes multi-turn robustness under more natural conversational phrasing and clarification-heavy user behavior.
- Default hybrid recipe: start with Spider single-turn SFT, then add SParC and CoSQL multi-turn training, and finally oversample edit-style turns with nested or clause-changing transitions.

## Dialog profile

- SParC average dev dialog length: 2.96 turns.
- CoSQL average dev dialog length: 3.41 turns.
