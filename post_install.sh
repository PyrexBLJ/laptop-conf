#! /bin/bash

cd ~

sudo pacman -S --needed ttf-jetbrains-mono-nerd power-profiles-daemon flatpak base-devel kitty thunar ark nsxiv xwayland-satellite git

sudo groupadd input

sudo usermod -a -G input $USER

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ~/.config

mkdir -v fuzzel kitty niri waybar systemd systemd/user

cp -r ~/Downloads/laptop-conf/.config ~/.config

systemctl --user daemon-reload
systemctl --user add-wants niri.service swaybg.service

killall waybar && waybar & disown

flatpak install floorp discord gpu_screen_recorder

yay -S visual-studio-code-bin
