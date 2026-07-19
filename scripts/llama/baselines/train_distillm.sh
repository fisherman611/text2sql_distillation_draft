#! /usr/bin/env bash

set -euo pipefail

DISTILL_TYPE="${DISTILL_TYPE:-adaptive-srkl}"
BASELINE_KIND="${BASELINE_KIND:-distillm}"

source "$(dirname "${BASH_SOURCE[0]}")/common_baseline.inc" "$@"
