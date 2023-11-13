#!/bin/bash

# exit early if not an interactive shell
[[ $- != *i* ]] && return

# maybe as a user systemd service
if type -P keychain &>/dev/null; then
    eval "$(keychain --eval --noask --quiet --nogui)"
fi

[[ -f ~/.exports ]] && source ~/.exports
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
