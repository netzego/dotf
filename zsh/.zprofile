# ~./zprofile
export EDITOR="nvim"
export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/scripts:$HOME/.cargo/bin"
export PYTHONDONTWRITEBYTECODE=1
export PIP_REQUIRE_VIRTUALENV=true
export SYSTEMD_COLORS=16
export MANWIDTH=79
export XDG_CONFIG_HOME="$HOME/.config"
# start keychain
[[ -x $(which keychain) ]] && eval $(keychain --eval --noask --quiet)
# start x at login only for UID=1000
if [[ $UID -ge 1000 ]]; then
  # start keychain
  if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
  fi
fi
