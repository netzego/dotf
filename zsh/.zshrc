HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/anon/.zshrc'
zstyle ':completion:*' rehash true

autoload -Uz compinit
compinit
# End of lines added by compinstall

# open vim to edit the commandline
# https://stackoverflow.com/a/903973
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

[[ -e ~/.zalias ]] && source ~/.zalias
[[ -e ~/.zkeys ]] && source ~/.zkeys
[[ -e ~/.zprompt ]] && source ~/.zprompt
