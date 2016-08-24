#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 70-monitor-hotplug.sh

if command -v monitor-hotplug.sh >/dev/null 2>&1; then
    monitor-hotplug.sh &
fi

