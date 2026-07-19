#! /usr/bin/env bash

set -euo pipefail

DISTILL_TYPE="${DISTILL_TYPE:-srkl}"
BASELINE_KIND="${BASELINE_KIND:-srkl}"

source "$(dirname "${BASH_SOURCE[0]}")/common_baseline.inc" "$@"
