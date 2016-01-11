#!/bin/bash

if command -v tdrop >/dev/null 2>&1; then
    tdrop -a -m -s quaketermite -y 16 -x 6 -w 99% termite
else
    xdotool search --onlyvisible --classname QuakeTermite windowunmap \
        || xdotool search --classname QuakeTermite windowmap \
        || termite --name QuakeTermite --geometry 1360x300+0+20
fi

