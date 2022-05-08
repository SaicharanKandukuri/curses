#!/bin/bash

source "src/get_tty_res.sh"

# NEW_COLORS_FILE is a env variable to set color pallete file to all newt apps
export NEWT_COLORS_FILE="src/colorpalette.prop"
whiptail \
    --title "Curses" \
    --cancel-button "Exit" \
    --msgbox "This is a message box.\n With forced ubuntu color pallete.\nMade by SaicharanKandukuri" \
    $BOX_HEIGHT $BOX_WIDTH
