#!/bin/sh

xrdb "$HOME"/.Xresources

setxkbmap -option caps:escape -option compose:rctrl
redshift &
ibus-daemon -xdr &
~/bin/kbtoggle &
# picom &

# sxhkd -c "$HOME/.config/berry/sxhkdrc" &
sxhkd -c "$HOME/.config/sxhkd/sxhkdrc" &

~/.fehbg &
# urxvtd -q -o &
# polybar &

# exec berry
# startxfce4
exec openbox
# exec xfwm4
