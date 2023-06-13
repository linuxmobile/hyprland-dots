#!/usr/bin/env bash
# wrappedhl
# Launch Hyprland with a simple wrapper

cd ~

# Variables
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

# Execute Hyprland
if [ -f /usr/local/bin/Hyprland ]; then
   exec /usr/local/bin/Hyprland >/dev/null 2>&1 
elif [ -f /usr/bin/Hyprland ]; then
   exec /usr/bin/Hyprland >/dev/null 2>&1 
fi
