#!/bin/bash
mkdir -p /usr/local/lib/pacman
cp patch-signal-desktop.sh /usr/local/lib/pacman/patch-signal-desktop.sh
cp -r ../../themes/* /usr/local/lib/pacman/signal-themes/
cp 10-catppuccin-signal.hook /etc/pacman.d/hooks/10-catppuccin-signal.hook
