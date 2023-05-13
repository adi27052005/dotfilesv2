#!/bin/bash


case "$(printf 'Polybar\nPicom\nAlacritty\ni3wm' | rofi -dmenu -p "Choose" )" in

    'Polybar') 
        case "$(printf 'Reload\nConfig' | rofi -dmenu -p "Choose")" in
        
        'Reload') 
            $HOME/.config/polybar/launch.sh ;;
        'Config')
            alacritty -e nvim $HOME/.config/polybar/;;

        *) exit 1 ;;

        esac ;;

    'Picom')
        case "$(printf 'Config' | rofi -dmenu -p "Choose")" in
        
        'Config')
            alacritty -e nvim $HOME/.config/picom.conf ;;

        *) exit 1 ;;

        esac ;;

    'Alacritty')
        case "$(printf 'Open\nConfig' | rofi -dmenu -p "Choose")" in
        
        'Open')
            alacritty ;;

        'Config')
            alacritty -e nvim $HOME/.config/alacritty/alacritty.yml ;;

        *) exit 1 ;;

        esac ;;

    'i3wm')
        case "$(printf 'Config\nQuit' | rofi -dmenu -p "Choose")" in
        
        'Config')
            alacritty -e nvim $HOME/.config/i3/config ;;

        'Quit')
            i3-msg exit ;;

        *) exit 1 ;;

        esac ;;



    *) exit 1 ;;

esac
