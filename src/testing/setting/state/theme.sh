#!/bin/bash
# shellcheck disable=SC2034

# stdlib testing setting theme library

builtin set -eo pipefail

# @description Sets the default testing colours.
# @noargs
# @exitcode 0 If the operation succeeded.
# @set STDLIB_TESTING_THEME_DEBUG_FIXTURE string The colour to use for for debug output.
# @set STDLIB_TESTING_THEME_LOAD string The colour to use for module loading messages.
# @set STDLIB_TESTING_THEME_PARAMETRIZE_HIGHLIGHT string The colour to use for highlighting informational messages during parametrization.
# @set STDLIB_TESTING_THEME_PARAMETRIZE_ORIGINAL_TEST_NAMES string The colour to use for displaying original test names during parametrization.
_testing.setting.state.theme() {
  STDLIB_TESTING_THEME_DEBUG_FIXTURE="GREY"
  STDLIB_TESTING_THEME_LOAD="GREY"
  STDLIB_TESTING_THEME_PARAMETRIZE_HIGHLIGHT="LIGHT_BLUE"
  STDLIB_TESTING_THEME_PARAMETRIZE_ORIGINAL_TEST_NAMES="GREY"
}
