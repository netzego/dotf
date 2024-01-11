#!/bin/bash

# [[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set a typematic delay to 200ms and a typematic rate to 30Hz
xset r rate 200 30

# set the x root windows properties
xsetroot -gray
xsetroot -cursor_name arrow

# better done in /etc/vconsole.conf and /etc/X11/xorg.conf.d/70-custom.conf
# see also: `man:vconsole.conf`
# setxkbmap us
# setxkbmap -option caps:escape
# setxkbmap -option terminate:ctrl_alt_bksp

#hostname=$(uname -n)
#if [[ ${hostname} == "sao" ]]; then
#  # trackpoint speed
#  xinput set-prop 11 318 -0.45
#  # disable touchpad
#  xinput set-prop 11 165 0
#  #exec /usr/lib/xscreensaver/providence -root -wireframe -delay 100000 &
#fi

# dunst &

# if [[ -n $(command -v redshift) ]]; then
#   redshift -l 51.33962:12.37129 -b 1.0:0.75 &
# fi

exec bspwm
