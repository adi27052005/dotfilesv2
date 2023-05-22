#!/bin/bash

paru -S xorg xorg-xinit vim firefox alacritty neovim-nightly-bin git nitrogen picom-pijulius-git neofetch polybar rofi zsh i3-wm i3status slock xclip scrot ttf-jetbrains-mono-nerd mpv ttf-daddytime-mono-nerd ttf-fira-sans lsd npm nodejs unzip zenity libnotify bluez bluez-utils dunst lxappearance-gtk3 btop cava gpick thunar imagemagick everforest-gtk-theme-git usbutils pipes.sh usbutils

mkdir .config
cd .config
git clone https://github.com/adi27052005/dotfiles
cd ~

cp -r $HOME/.config/dotfiles/* $HOME/.config/
rm -rf $HOME/.config/dotfiles

chmod +x $HOME/.config/scripts/*
chmod +x $HOME/.config/polybar/launch.sh

case $(printf "Nvidia\nIntel" | rofi -dmenu -no-custom -i -p "Gpu") in
	"Nvidia") paru -S nvidia nvidia-utils nvidia-settings envycontrol ;;
	"Intel") paru -S xf86-video-intel


case $(printf "Yes\nNo" | rofi -dmenu -no-custom -i -p "openssh?:") in
	"Yes") paru -S openssh && systemctl enable sshd ;;
esac

printf "\nremember to add this line to the end of /etc/sudoers\nadi ALL=NOPASSWD: /sbin/reboot, /sbin/poweroff\n"
