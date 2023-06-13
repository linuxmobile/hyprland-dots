#!/bin/bash

TMPPCK=$(hyprpicker -a -n)
TMPPST=$(wl-paste)
CMD=$(echo "$TMPPST")
TMP=/tmp/xcolor_$CMD.png

hyprpick() {
  $TMPPCK
}

check_dependencies() {
    ! command -v hyprpicker &>/dev/null &&
        notify-send -u critical -a "Color Picker" xcolor-pick "gpick needs to be installed" && exit 1

    ! command -v magick &>/dev/null &&
        notify-send -u critical -a "Color Picker" xcolor-pick "imagemagick needs to be installed" && exit 1
}

main() {
    convert -size 120x120 xc:"$CMD" "$TMP"
    printf %s "$CMD" | wl-paste 

    notify-send -a "Color Picker" -i "$TMP" xcolor-pick "$CMD"
}

check_dependencies
hyprpick
main
