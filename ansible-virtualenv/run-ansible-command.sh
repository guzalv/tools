#!/bin/bash

set -euo pipefail

DIR=$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd -P)
VENV_BIN_DIR=${DIR}/bin  # This script should be placed in the root of a virtualenv

candidate_binary=${VENV_BIN_DIR}/$(basename "$0")
if ! [ -x "${candidate_binary}" ]; then
    echo "ERROR: ${candidate_binary} does not exist"
    exit 1
fi

# Other binaries might be needed by the current one
export PATH="${VENV_BIN_DIR}:${PATH}"

args=${@:-}
exec "${candidate_binary}" ${args}
