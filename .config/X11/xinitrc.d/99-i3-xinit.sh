#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 99-i3-xinit.sh
## starts i3 wm. Make sure to run this last

i3 -V >> "$HOME/.local/share/xorg/i3.log" 2>&1
