#! /bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TAUS=(0.05 0.02)
ALPHAS=(0.1 0.2 0.3 0.4 0.5)

for tau in "${TAUS[@]}"; do
  for alpha in "${ALPHAS[@]}"; do
    echo "[grid] csd kd=0.7 tau=${tau} alpha=${alpha}"
    SYNID_KD_LOSS=csd \
    KD_RATIO=0.7 \
    SYNID_CONTRASTIVE_TAU="${tau}" \
    SYNID_ALPHA="${alpha}" \
    bash "${SCRIPT_DIR}/train_0.6b_4b_csd.sh" "$@"
  done
done
