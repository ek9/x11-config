#!/bin/bash
# Based on https://bbs.archlinux.org/viewtopic.php?pid=1047415#p1047415
# Script for toggling different monitor setups for laptop. Supports these modes:
# - Default mode: Laptop monitor only ($LVDS) and external monitors off
# - External VGA mode: Laptop monitor ($LVDS) and external monitor ($VGA)
# - External HDMI mode: Laptop monitor ($LVDS) and external monitor ($HDMI)
# - External only mode: External monitor ($LVDS) and external monitor ($HDMI)

# run xrandr a few times so it refreshes
#xrandr &> /dev/null
#xrandr &> /dev/null

# Laptop's monitor
LVDS="LVDS1"
# VGA monitor
VGA="VGA1"
# HDMI monitor
HDMI="HDMI1"

CHK_VGA=$(xrandr |grep $VGA | awk ' { print $2 } ')
CHK_HDMI=$(xrandr |grep $HDMI | awk ' { print $2 } ')

#CHK_VGA_G=$(xrandr |grep $VGA | grep "+")
#CHK_HDMI_G=$(xrandr |grep $HDMI | grep "+")

function external_only() {
    xrandr --output $LVDS --off --output $VGA --auto --output $HDMI --auto
    xrandr --output $VGA --left-of $HDMI
}

function external_vga() {
    xrandr --output $LVDS --auto --primary --output $VGA --auto --output $HDMI --off
    xrandr --output $VGA --right-of $LVDS
}

function external_hdmi() {
    xrandr --output $LVDS --auto --primary --output $HDMI --auto --output $VGA --off
    xrandr --output $HDMI --right-of $LVDS
}



if [ "$CHK_VGA" == "connected" ] && [ "$CHK_HDMI" == "connected" ]; then
    echo $VGA $HDMI
    external_only
elif [ "$CHK_VGA" == "connected" ]; then
    echo $LVDS $VGA
    external_vga
elif [ "$CHK_HDMI" == "connected" ]; then
    echo $LVDS $HDMI
    external_hdmi
else
    echo $LVDS
    xrandr --output $VGA --off --output $HDMI --off --output $LVDS --primary
fi

# restore wallpapers if nitrogen is installed
command -v nitrogen >/dev/null 2>&1 && nitrogen --restore

exit 0
