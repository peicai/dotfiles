#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

find \
    ../stow/bash \
    ../src/os \
    ../tests/*.sh \
    -type f \
    ! -path '../src/os/preferences/macos/*.applescript' \
    ! -path '../src/os/preferences/macos/*.terminal' \
    ! -path '../stow/bash/.curlrc' \
    ! -path '../stow/bash/.inputrc' \
    -exec shellcheck \
            --exclude=SC1090 \
            --exclude=SC1091 \
            --exclude=SC2155 \
            --exclude=SC2164 \
    {} +
