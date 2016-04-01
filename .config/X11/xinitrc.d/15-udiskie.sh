#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 15-udiskie.sh

if command -v udiskie >/dev/null 2>&1; then
    udiskie --tray &
fi

