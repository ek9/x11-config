#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 10-stalonetray.sh

if command -v stalonetray >/dev/null 2>&1; then
    stalonetray &
fi

