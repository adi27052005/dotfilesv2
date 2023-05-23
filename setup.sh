#!/bin/bash

# PACKAGES

paru -S xorg xorg-xinit vim firefox alacritty neovim-nightly-bin git nitrogen picom-pijulius-git neofetch polybar rofi zsh i3-wm i3status slock xclip scrot ttf-jetbrains-mono-nerd mpv ttf-daddytime-mono-nerd ttf-fira-sans lsd npm nodejs unzip zenity libnotify bluez bluez-utils dunst lxappearance-gtk3 btop cava gpick thunar imagemagick everforest-gtk-theme-git usbutils pipes.sh usbutils

# oh-my-zsh instalation
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# CLONING DOTS

mkdir .config
cd .config
git clone https://github.com/adi27052005/dotfiles
cd ~

# MOVING DOTS

cp -r $HOME/.config/dotfiles/* $HOME/.config/
mv $HOME/.config/tmux.conf $HOME/
rm -rf $HOME/.config/dotfiles

# EXECUTABLE SCRIPTS

chmod +x $HOME/.config/scripts/*
chmod +x $HOME/.config/polybar/launch.sh

# GPU

while true; do
read -p "Choose -> 1. Nvidia 2. Intel (1/2) : " gpu

case $gpu in
	"1") paru -S nvidia nvidia-utils nvidia-settings envycontrol ;
		break ;;
	"2") paru -S xf86-video-intel ;
		break ;;
	*) echo "Invalid" ;;
esac
done

# SSH

while true; do

read -p "Do you want ssh? (Y/n) : " ssh

case $ssh in
	[yY] ) paru -S openssh && systemctl enable sshd;
		break ;;
	 '') paru -S openssh && systemctl enable sshd;
		break ;;
	[nN] ) break ;;
	*) echo "Invalid" ;;
esac
done


printf "\nremember to add this line to the end of /etc/sudoers\nadi ALL=NOPASSWD: /sbin/reboot, /sbin/poweroff\n"
