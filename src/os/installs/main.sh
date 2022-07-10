#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"


ask_for_confirmation "Do you want to install all the software?"
printf "\n"

if answer_is_yes; then
    "./$(get_os)/main.sh"
fi

