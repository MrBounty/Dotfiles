#!/bin/bash

# Install pacman packages
for package in \
  scrcpy \
  git \
  base-devel \
  lazygit \
  starship \
  ; do
    sudo pacman -S --noconfirm $package
    clear
done

git clone https://aur.archlinux.org/yay.git
cd yay
sudo makepkg -si
cd ~

# Install yay packages
for package in \
  python-pywal16 \
  python-pywalfox \
  swww waybar \
  myfetch \
  neovim \
  python-pywalfox \
  hypridle \
  hyprshot \
  hyprlock \
  pyprland \
  swaync \
  wlogout \
  nerd-fonts \
  htop \
  nvtop \
  yazi \
  discord \
  blueman \
  bluez \
  ; do
    yay -S --noconfirm $package
    clear
done

systemctl enable bluetooth

# Install Configs
wal -i ~/Dotfiles/wallpapers/pywallpaper.jpg
pywalfox install

sudo cp -rf ~/Dotfiles/.config/* /.config/

git config --global user.email "adrien.bouvais.pro@gmail.com"
git config --global user.name "adrien"
ssh-keygen -t rsa -b 4096 -C "adrien.bouvais.pro@gmail.com" -f ~/.ssh/id_rsa -N ""

echo "Dont forget to add Pywalfox extension to Firefox then run 'pywalfox update' https://addons.mozilla.org/en-US/firefox/addon/pywalfox/"
