x11-config
============

[x11-config][0] is a personal dotfiles repository for Xorg X11 ([i3][2],
[termite][3] etc.). It is compatible with [vcsh-dotfiles][1].

Part of [ek9/dotfiles][10] collection.

## Requirements

- [vcsh-dotfiles][1]

## Install

Clone via `vcsh-dotfiles`:

    $ vcsh-dotfiles clone https://github.com/ek9/x11-config

When starting Xorg X11 via `startx` (or `xinit`), X11 Xorg environment
will be setup with [i3 wm][2]. See [Overview section](#Overview) for more
information.

## Overview

### Software

This repository contains dotfiles for the following software:

- i3wm
- dunst
- thunar
- ranger
- stalonetray
- nitrogen
- udiskie
- nm-applet
- pasystray
- xautolock
- mplayer / mpv
- compton (deprecated)
- Source Code Pro (Regular+Powerline+Awesome) font

### Features

Profile tweaks (files in `.config/X11/profile.d`):

- `xkb` keyboard customization.
- automatic loading of monitor profile via `dispwin` (only if
  `~/.local/share/monitor.icm` is present.
- Setting default `BROWSER` to `firefox` (only if installed)
- GTK config directory set to `~/.config/gtkrc-2.0`. Qt is setup to use GTK
  themes.
- Enabled Xft fonts in GTK, Qt and Java applications.
- `DESKTOP_SESSIONS` set to `gnome` for `gnome-keyring` to work.
- DPMS disbaled

Application startup (executable files in `.config/X11/xinitrc.d`). Applications
are started only if they are available:

- stalonetray (tray bar)
- udiskie (automatic mounting)
- dunst (notifications)
- nm-applet (networking)
- pasystray (pulseaudio)
- monitor-hotplug.sh - custom script for laptop monitor hotplug
- nitrogen random wallpaper (symlink wallpapers in `~/.local/share/wallpaper`
  dir)
- xautolock setup to lock automatically after 30 minutes of inactivity
- i3 wm started (has to be installed)

### Files and Directories

Basic file and directory structure:

- `.xinitrc` - this file is loaded during X11 init via startx/xinit commands. It
  first sources `.xprofile` and then executes scripts in
  ~/.config/X11/xinitrc.d` directory.
- `.xprofile` - this file sets up X11 profile/environment. It sources scripts in
  `~/.config/X11/profile.d` directory contains X11 profile/environment specific
  files. It is sourced by `.xprofile`.
- `~/.config/X11/xinitrc.d` - directory contains X11 startup files for
  various programs. It is sourced by `.xinitrc`.
- `~/.local/share/wallpaper` directory is used by `nitrogen` to setup a random
  wallpaper. Symlink wallpaper files that you want to use to this directory.

## Authors

Copyright (c) 2015-2016 ek9 <dev@ek9.co> (https://ek9.co).

## License

Licensed under [MIT License](LICENSE).

[0]: https://github.com/ek9/x11-config
[1]: https://github.com/ek9/vcsh-dotfiles
[2]: https://i3wm.org/
[3]: https://github.com/thestinger/termite
[10]: https://github.com/ek9/dotfiles
[11]: https://github.com/ek9/x11-config/blob/master/.xinitrc
