#!/bin/bash

# exit early if not an interactive shell
[[ $- != *i* ]] && return

# maybe as a user systemd service
if type -P keychain &>/dev/null; then
    eval "$(keychain --eval --noask --quiet --nogui)"
fi

[[ -f ~/.exports ]] && source ~/.aliases
[[ -f ~/.aliases ]] && source ~/.exports
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
