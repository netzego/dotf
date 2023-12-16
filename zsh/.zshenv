#!/usr/bin/env zsh

export PATH="$HOME/scripts:$PATH"

# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh history
export HISTFILE=~/.history
export HISTSIZE=1024
export SAVEHIST=1024

# editor
export EDITOR="nvim"
export VISUAL="$EDITOR"

# python
export PYTHONDONTWRITEBYTECODE=1
export PIP_REQUIRE_VIRTUALENV=true

# systemd
export SYSTEMD_COLORS=16

# man
export MANWIDTH=79

# fzf
FZF_DEFAULT_OPTS="--reverse"
FZF_DEFAULT_OPTS+=" --color=bw"
# FZF_DEFAULT_OPTS+=" --color=bg:#e2f1c7,bg+:#d1e5bc,fg:#282828,fg+:#282828,hl:#282828,hl+:#282828,pointer:#282828,marker:#282828,prompt:#282828,info:#282828"
export FZF_DEFAULT_OPTS
