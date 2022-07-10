#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Delete files that match a certain pattern from the current directory.

delete-files() {
    local q="${1:-*.DS_Store}"
    find . -type f -name "$q" -ls -delete
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Search history.

h() {
    #           ┌─ Enable colors for pipe.
    #           │  ("--color=auto" enables colors only
    #           │   if the output is in the terminal.)
    grep --color=always "$*" "$HISTFILE" \
        | less --no-init --raw-control-chars
          #    │         └─ Display ANSI color escape sequences in raw form.
          #    └─ Don't clear the screen after quitting less.
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Search for text within the current directory.

s() {
    grep --color=always "$*" \
         --exclude-dir=".git" \
         --exclude-dir="node_modules" \
         --ignore-case \
         --recursive \
         . \
        | less --no-init --raw-control-chars
          #    │         └─ Display ANSI color escape sequences in raw form.
          #    └─ Don't clear the screen after quitting less.
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Download and convert Dan Mu with the given url

getdanmu() {
    DanmakuFactory --fontsize 60 \
        --fontname "SimHei" \
        -r "1920x1080" \
        --density -1 \
        --scrollarea 0.25 \
        --opacity 127 \
        --shadow 0 \
        --outline 1 \
        --bold TRUE \
        -o "${1%%.xml*}".ass \
        -i "$1"
}