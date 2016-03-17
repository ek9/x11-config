#!/bin/bash

# run files from xinitrc.d directory
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.config/X11/Xresources ] && xrdb ~/.config/X11/Xresources

#exec i3
exec i3 -V >> /dev/null 2>&1
