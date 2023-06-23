#!/bin/bash

xrandr --output $(xrandr | grep "connected primary" | cut -d " " -f1) --brightness $(printf "1.0\n0.9\n0.8\n0.7\n0.6\n0.5\n0.4\n0.3\n0.2\n0.1" | rofi -dmenu -p "Brightness")

# xbacklight -set $(printf "100\n90\n80\n70\n60\n50\n40\n30\n20\n10" | rofi -dmenu -p "Brightness") && notify-send "Brightness: $(xbacklight -get | cut -d "." -f1)" -t 1000

