#!/bin/bash
echo "Install script activated"

sleep 1

sudo pacman -S amd-ucode mesa lib32-mesa xf86-video-amdgpu amdvlk xorg-server xorg-apps i3-wm i3blocks i3status xss-lock i3lock nano neovim jdk-openjdk thunar firewalld firefox base-devel alacritty neofetch xdg-user-dirs sysstat pulsemixer rofi rofi-power-menu picom 

sudo xdg-user-dirs-update

sudo pacman -Rns xdg-user-dirs 

sudo systemctl enable firewalld

mkdir ~/.confing/i3

mkdir ~/.confing/i3blocks

mkdir ~/.confing/i3blocks/scripts

mkdir ~/.confing/picom

mkdir ~/.confing/alacritty