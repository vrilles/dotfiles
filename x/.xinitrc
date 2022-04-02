#!/bin/sh

xrdb "$HOME"/.Xresources

setxkbmap -option caps:escape -option compose:rctrl
redshift &
ibus-daemon -xdr &

sxhkd -c "$HOME/.config/berry/sxhkdrc" &

~/.fehbg &
urxvtd -q -o &

exec berry
