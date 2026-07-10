#!/bin/bash

# stdlib testing setting library

builtin set -eo pipefail

# shellcheck source=src/testing/setting/state/__lib__.sh
builtin source "${STDLIB_DIRECTORY}/testing/setting/state/__lib__.sh"
# shellcheck source=src/testing/setting/theme.sh
builtin source "${STDLIB_DIRECTORY}/testing/setting/theme.sh"
