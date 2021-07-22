# Lines configured by zsh-newuser-install
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
[[ -e ~/.zalias ]] && source ~/.zalias
[[ -e ~/.zkeys ]] && source ~/.zkeys
[[ -e ~/.zprompt ]] && source ~/.zprompt
