#!/usr/bin/zsh
# start xorg server
if [[ $UID -ge 1000 ]]; then
    if systemctl -q is-active graphical.target; then
        if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
            exec startx -- -quiet
        fi
    fi
fi
