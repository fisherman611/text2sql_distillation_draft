#! /usr/bin/env bash

set -euo pipefail

BASELINE_KIND="${BASELINE_KIND:-fdd}"
ENABLE_FDD=1
FDD_DISTILL_TYPE="${FDD_DISTILL_TYPE:-sfkl}"

source "$(dirname "${BASH_SOURCE[0]}")/common_baseline.inc" "$@"
