#!/bin/bash
echo "Install script activated"

sleep 1

cd

sudo pacman -S amd-ucode mesa neofetch noto-fonts p7zip lib32-mesa xf86-video-amdgpu amdvlk xorg-server xorg-apps i3-wm i3blocks i3status xss-lock i3lock nano ly neovim jdk-openjdk thunar firewalld firefox base-devel alacritty neofetch xdg-user-dirs sysstat pulsemixer rofi picom lxappearance feh code reflector

xdg-user-dirs-update

sudo pacman -Rns xdg-user-dirs 

sudo systemctl enable firewalld

sudo systemctl enable ly

mkdir ~/.config/i3

mkdir ~/.config/i3blocks

mkdir ~/.config/i3blocks/scripts

mkdir ~/.config/picom

mkdir ~/.config/alacritty

mkdir -p ~/.themes/Nordic

mkdir -p ~/Pictures/wallpapers

cd ~/.themes/Nordic

git clone https://github.com/EliverLara/Nordic.git

cd

sleep 1

mv /home/lukas/Arch/i3config/config /home/lukas/.config/i3/

mv /home/lukas/Arch/i3blocks/config /home/lukas/.config/i3blocks/

mv /home/lukas/Arch/picom/picom.conf /home/lukas/.config/picom/

mv /home/lukas/Arch/alacritty/alacritty.yml /home/lukas/.config/alacritty/

cd

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin/

makepkg -si

cd

rm -fr yay-bin/

yay

yay -S ttf-jetbrains-mono-nerd rofi-power-menu

echo "Script finished"