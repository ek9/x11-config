#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 60-pasystray.sh

if command -v pasystray >/dev/null 2>&1; then
    pasystray &
fi

