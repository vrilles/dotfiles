#!/bin/sh

xrdb "$HOME"/.Xresources

setxkbmap -option caps:escape -option compose:rctrl
ibus-daemon -xdr &
~/bin/kbtoggle &
# picom &

# sxhkd -c "$HOME/.config/berry/sxhkdrc" &
sxhkd -c "$HOME/.config/sxhkd/sxhkdrc" &
xrandr --output HDMI-1 --off
xrandr --output HDMI-1 --auto

~/.fehbg &
# urxvtd -q -o &
# polybar &

exec openbox
