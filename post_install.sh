#! /bin/bash

sudo pacman -S ttf-jetbrains-mono-nerd power-profiles-daemon flatpak base-devel -y

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cp -r ~/Downloads/laptop-conf/.config ~/.config

systemctl --user daemon-reload
systemctl --user add-wants niri.service swaybg.service

killall waybar && waybar & disown

flatpak install floorp discord gpu_screen_recorder

yay -S visual-studio-code-bin
