#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 15-fonts.sh
## This file sets fonts

# force Xft on old GTK and QT applications
export GDK_USE_XFT=1
export QT_XFT=true
# Java font rendering
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# Dota 2 font rendering fix
#export MESA_GL_VERSION_OVERRIDE=2.1
