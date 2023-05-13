#!/bin/bash

zenity --text="Select Wallpaper" --file-selection | xargs nitrogen --set-zoom-fill && notify-send "Wallpaper set successfully" || notify-send "Wallpaper did not apply! Script Failed!"
