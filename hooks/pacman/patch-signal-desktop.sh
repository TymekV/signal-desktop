#!/bin/bash
FLAVOR=mocha
TEMP=$(mktemp -d)
SIGNAL_DIR="/usr/lib/signal-desktop/resources"
asar e "${SIGNAL_DIR}/app.asar" ${TEMP}
cp "/usr/local/lib/pacman/signal-themes/catppuccin-${FLAVOR}.css" "${TEMP}/stylesheets/catppuccin-${FLAVOR}.css"
sed -i "1i @import \"catppuccin-${FLAVOR}.css\";" "${TEMP}/stylesheets/manifest.css"
sudo asar p ${TEMP} "${SIGNAL_DIR}/app.asar"
