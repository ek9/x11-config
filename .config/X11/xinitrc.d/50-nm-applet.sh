#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 50-nm-applet.sh

if command -v nm-applet >/dev/null 2>&1; then
    nm-applet &
fi

