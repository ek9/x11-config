#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 95-xautolock.sh

if command -v xautolock >/dev/null 2>&1; then
    xautolock -time 30 -locker slock -notify 30 -notifier "notify-send -u critical -t 10000 -- 'Locking screen in 30'" &
fi
