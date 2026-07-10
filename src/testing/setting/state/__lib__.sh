#!/bin/bash

# stdlib testing setting state library

builtin set -eo pipefail

# shellcheck source=src/testing/setting/state/theme.sh
builtin source "${STDLIB_DIRECTORY}/testing/setting/state/theme.sh"
