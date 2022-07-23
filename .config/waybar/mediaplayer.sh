#!/bin/sh
nix-shell -p 'python3.withPackages (p: [p.pygobject3])' -p gobject-introspection -p playerctl --run "python ~/.config/waybar/mediaplayer.py" --impure
