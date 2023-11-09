#!/bin/bash

# exit early if not an interactive shell
[[ $- != *i* ]] && return

if type -P keychain &>/dev/null; then
    eval "$(keychain --eval --noask --quiet --nogui)"
fi

set -o vi

[[ -f ~/.bash_export ]] && source ~/.bash_export
[[ -f ~/.bash_alias ]] && source ~/.bash_alias
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
