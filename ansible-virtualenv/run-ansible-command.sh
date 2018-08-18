#!/bin/bash

set -euo pipefail

DIR=$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd -P)

export PATH="${DIR}/bin:${PATH}"

ansible_command=$(basename "$0")
if ! grep -q '^ansible' <<< "${ansible_command}"; then
    echo "ERROR: not an ansible command: ${ansible_command}"
    exit 1
fi

args=${@:-}

exec "${ansible_command}" ${args}
