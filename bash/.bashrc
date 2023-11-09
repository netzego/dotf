#!/bin/bash

# exit early if not an interactive shell
[[ $- != *i* ]] && return

eval "$(keychain --eval --noask --quiet --nogui)"

set -o vi

[[ -f ~/.bash_export ]] && source ~/.bash_export
[[ -f ~/.bash_alias ]] && source ~/.bash_alias
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
