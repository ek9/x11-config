#!/usr/bin/env bash
## ek9/x11-config - https://github.com/ek9/x11-config
## 12-gtk.sh
## This file sets up custom GTK2 config gile path and sets qt apps to use gtk
## themes

# gtk2 config file path
export GTK2_RC_FILES="$HOME/.config/gtkrc-2.0"

# gtk themes in qt apps
export QT_STYLE_OVERRIDE=gtk

