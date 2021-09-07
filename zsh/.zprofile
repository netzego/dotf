# ~./zprofile
export EDITOR="vim"
export PATH="$HOME/scripts:$PATH"
export PYTHONDONTWRITEBYTECODE=1
export SYSTEMD_COLORS=16
export XDG_CONFIG_HOME="$HOME/.config"
#export GOPATH="$HOME/go:$HOME/hack/go:/usr/lib/go"
# start keychain
[[ -x $(which keychain) ]] && eval $(keychain --eval --noask --quiet)
# start x at login only for UID=1000
if [[ $UID -ge 1000 ]]; then
  # start keychain
  if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
  fi
fi
