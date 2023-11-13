#!/bin/bash

# exit early if not an interactive shell
[[ $- != *i* ]] && return

if type -P keychain &>/dev/null; then
    eval "$(keychain --eval --noask --quiet --nogui)"
fi

[[ -f ~/.exports ]] && source ~/.bash_export
[[ -f ~/.aliases ]] && source ~/.bash_alias
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
