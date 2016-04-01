#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 75-nitrogen.sh

if -d ~/.local/share/wallpaper && command -v nitrogen >/dev/null 2>&1; then
    nitrogen --set-auto --random ~/.local/share/wallpaper/
fi

