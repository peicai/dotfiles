#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Preferences\n"

ask_for_confirmation "Do you want to set all the preferences now?"
printf "\n"

if answer_is_yes; then
    "./$(get_os)/main.sh"
fi
