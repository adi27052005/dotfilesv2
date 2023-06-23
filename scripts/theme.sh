#!/bin/bash

case $(printf "Dracula\nEverforest" | rofi -dmenu -i -no-custom -p " Theme") in 
    "Dracula") sed -i 's/a7c080/bd93f9/g' $HOME/.config/i3/config ;
        sed -i 's/vim.cmd.colorscheme "everforest"/vim.cmd.colorscheme "dracula"/g' $HOME/.config/nvim/init.lua ;
        sed -i 's/background: "#1e2326"/background: "#282a36"/g' $HOME/.config/alacritty/alacritty.yml ;
        sed -i 's/foreground: "#d3c6aa"/foreground: "#f8f8f2"/g' $HOME/.config/alacritty/alacritty.yml ;
        nitrogen --set-zoom-fill $HOME/Downloads/dracula.png ;
        sed -i 's/#1e2326/#282a36/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/#d3c6aa/#f8f8f2/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/#a7c080/#bd93f9/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/a7c080/bd93f9/g' $HOME/.config/polybar/modules.ini ;
        sed -i 's/a7c080/bd93f9/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/1e2326/282a36/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/d3c6aa/f8f8f2/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/gtk-theme-name=Everforest-Dark-Border/gtk-theme-name=Dracula/g' $HOME/.config/gtk-3.0/settings.ini;
        echo "Dracula" > theme.txt
        i3-msg restart ;
        ;;

    "Everforest") sed -i 's/bd93f9/a7c080/g' $HOME/.config/i3/config 
        sed -i 's/vim.cmd.colorscheme "dracula"/vim.cmd.colorscheme "everforest"/g' $HOME/.config/nvim/init.lua ;
        sed -i 's/background: "#282a36"/background: "#1e2326"/g' $HOME/.config/alacritty/alacritty.yml ;
        sed -i 's/foreground: "#f8f8f2"/foreground: "#d3c6aa"/g' $HOME/.config/alacritty/alacritty.yml ;
        nitrogen --set-zoom-fill $HOME/Downloads/everforest.jpg ;
        sed -i 's/#282a36/#1e2326/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/#f8f8f2/#d3c6aa/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/#bd93f9/#a7c080/g' $HOME/.config/polybar/colors.ini ;
        sed -i 's/bd93f9/a7c080/g' $HOME/.config/polybar/modules.ini ;
        sed -i 's/bd93f9/a7c080/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/282a36/1e2326/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/f8f8f2/d3c6aa/g' $HOME/.config/rofi/nord.rasi ;
        sed -i 's/gtk-theme-name=Dracula/gtk-theme-name=Everforest-Dark-Border/g' $HOME/.config/gtk-3.0/settings.ini;
        echo "Everforest" > theme.txt
        i3-msg restart ;
        ;; 
    
esac
