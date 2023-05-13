#!/bin/bash

case "$(printf 'Shutdown\nReboot\nLock\nLogout' | rofi -dmenu -p 'Choose')" in

    'Shutdown') sudo poweroff ;;
    'Reboot') sudo reboot ;;
    'Lock') slock ;;
    'Logout') i3-msg exit ;;
    *) exit 1 ;;
esac
