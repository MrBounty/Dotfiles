#!/bin/bash

# Install pacman packages
for package in \
  scrcpy \
  lazygit \
  ; do
    sudo pacman -S $package
    clear
done

# Install yay packages
for package in \
  python-pywal16 \
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
    yay -S $package
    clear
done

systemctl enable bluetooth

# Install Configs
wal -i ~/Dotfiles/wallpapers/pywallpaper.jpg

sudo cp -a ~/Dotfiles/.config/hypr/wallpaper.sh   ~/.config/hypr/wallpaper.sh
sudo cp -a ~/Dotfiles/.config/wofi/config1        ~/.config/wofi/
sudo cp -a ~/Dotfiles/.config/wofi/style1.css     ~/.config/wofi/
sudo cp -a ~/Dotfiles/.config/hypr/hyprlock.conf  ~/.config/hypr/

sudo cp -a ~/Dotfiles/.config/waybar  ~/.config/
sudo cp -a ~/Dotfiles/.config/wofi    ~/.config/
sudo cp -a ~/Dotfiles/.config/wlogout ~/.config/
sudo cp -a ~/Dotfiles/.config/wal     ~/.config/
sudo cp -a ~/Dotfiles/.config/nvim    ~/.config/
sudo cp -a ~/Dotfiles/.config/swayn   ~/.config/

sudo cp -a ~/Dotfiles/wallpapers ~/
sudo cp -a ~/Dotfiles/.bashrc ~/

git config --global user.email "adrien.bouvais.pro@gmail.com"
git config --global user.name "adrien"
ssh-keygen -t rsa -b 4096 -C "adrien.bouvais.pro@gmail.com" -f ~/.ssh/id_rsa -N ""
