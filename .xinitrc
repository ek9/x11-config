#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## .xinitrc
## This file sets up X11 environment when initializing via xinit/startx
exec >~/.local/share/xorg/"xinitrc-$DISPLAY.log" 2>&1
#set -x

# run files from xinitrc.d directory
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    test -r "$f" && . "$f"
  done
  unset f
fi
[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.config/X11/Xresources ] && xrdb ~/.config/X11/Xresources
# run files from $HOME/X11/xinitrc.d directory
if [ -d "$HOME/.config/X11/xinitrc.d" ]; then
  for f in $HOME/.config/X11/xinitrc.d/*; do
    test -r "$f" && . "$f"
  done
  unset f
fi

