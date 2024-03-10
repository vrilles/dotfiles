#!/bin/sh

xrdb "$HOME"/.Xresources

setxkbmap -option caps:escape -option compose:rctrl
redshift &
ibus-daemon -xdr &
~/bin/kbtoggle &
picom &

# polybar &
sxhkd -c "$HOME/.config/berry/sxhkdrc" &
# sxhkd -c "$HOME/.config/sxhkd/sxhkdrc" &

~/.fehbg &
urxvtd -q -o &

exec berry
# exec xfwm4
