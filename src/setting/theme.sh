#!/bin/bash

# stdlib setting theme library

builtin set -eo pipefail

# @description Gets the name of a colour variable from the theme.
#   * STDLIB_COLOUR_NULL string global: A default value for null or missing colours (default="").
# @arg $1 string The name of the colour.
# @exitcode 0 If the operation succeeded.
# @set STDLIB_COLOUR_NULL string A default value for null or missing colours.
# @stdout The name of the colour variable.
# @stderr The error message if the operation fails.
stdlib.setting.theme.get_colour() {
  builtin local theme_colour

  theme_colour="STDLIB_COLOUR_${1}" # noqa

  if ! stdlib.var.query.is_set "${theme_colour}"; then
    # shellcheck disable=SC2034
    STDLIB_COLOUR_NULL=""             # defaults STDLIB_COLOUR_NULL
    theme_colour="STDLIB_COLOUR_NULL" #
  fi

  builtin echo "${theme_colour}"
}

# @description Loads the theme colours.
# @noargs
# @exitcode 0 If the operation succeeded.
# @set STDLIB_THEME_LOGGER_ERROR string The colour to use for error messages.
# @set STDLIB_THEME_LOGGER_INFO string The colour to use for info messages.
# @set STDLIB_THEME_LOGGER_NOTICE string The colour to use for notice messages.
# @set STDLIB_THEME_LOGGER_SUCCESS string The colour to use for success messages.
# @set STDLIB_THEME_LOGGER_WARNING string The colour to use for warning messages.
stdlib.setting.theme.load() {
  stdlib.setting.colour.state.theme
}
