#!/bin/bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias cp="cp -iv"
#             │└─ list copied files
#             └─ prompt before overwriting an existing file

alias mkdir="mkdir -pv"
#                   │└─ list created directories
#                   └─ create intermediate directories

alias mv="mv -iv"
#             │└─ list moved files
#             └─ prompt before overwriting an existing file

# Delete for security reasons
# alias rm="rm -rf --"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias :q="exit"
alias q="exit"
alias d="cd ~/Downloads"
alias c="clear"
alias e="vim --"
alias g="git"
alias ll="ls -l"
alias path='printf "%b\n" "${PATH//:/\\n}"'
#                             └─ directories for executables

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Load OS specific configs.

. ".bash_$OS/bash_aliases"
