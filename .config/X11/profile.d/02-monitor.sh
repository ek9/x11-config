#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 02-monitor.sh
## This file loads monitor.icm file via dispwin

# Load monitor.icm if present (requires agryllcms)
if [ -f ~/.local/share/monitor.icm ] && [ -x $(command -v dispwin) ]; then
    dispwin -d 1 ~/.local/share/monitor.icm &
fi

