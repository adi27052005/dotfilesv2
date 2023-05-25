#!/bin/bash

case "$(printf '󰐥 Shutdown\n Reboot\n Lock\n󱅟 Logout' | rofi -dmenu -no-custom -p 'Choose 󰧂')" in

    '󰐥 Shutdown') sudo poweroff ;;
    ' Reboot') sudo reboot ;;
    ' Lock') slock ;;
    '󱅟 Logout') i3-msg exit ;;
    *) exit 1 ;;
esac
