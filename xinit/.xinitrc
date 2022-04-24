# ~/.xinitrc
hostname=$(uname -n)

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xsetroot -gray
xsetroot -cursor_name arrow
# setxkbmap us
setxkbmap -option caps:escape
# setxkbmap -option terminate:ctrl_alt_bksp

if [[ ${hostname} == "sao" ]]; then
  # trackpoint speed
  xinput set-prop 11 318 -0.45
  # disable touchpad
  xinput set-prop 11 165 0
  #exec /usr/lib/xscreensaver/providence -root -wireframe -delay 100000 &
fi

dunst &

if [[ -n $(command -v redshift) ]]; then
  redshift -l 51.33962:12.37129 -b 1.0:0.75 &
fi

bspwm
