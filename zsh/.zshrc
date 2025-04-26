#!/usr/bin/zsh

# zsh
[[ -e ~/.config/zsh/settings ]]   && source ~/.config/zsh/settings
[[ -e ~/.config/zsh/completion ]] && source ~/.config/zsh/completion
[[ -e ~/.config/zsh/keys ]]       && source ~/.config/zsh/keys
[[ -e ~/.config/zsh/history ]]    && source ~/.config/zsh/history
[[ -e ~/.config/zsh/prompt ]]     && source ~/.config/zsh/prompt
[[ -e ~/.config/zsh/cursor ]]     && source ~/.config/zsh/cursor
[[ -e ~/.aliases ]]               && source ~/.aliases

# fzf
[[ -e /usr/share/fzf/completion.zsh ]]   && source /usr/share/fzf/completion.zsh
[[ -e /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh

# keychain
[[ -x $(which keychain) ]] && eval $(keychain --eval --noask --quiet)
