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
makepkg -si
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
  firefox \
  # blueman \
  # bluez \
  ; do
    yay -S --noconfirm $package
    clear
done

# systemctl enable bluetooth

# Install Configs
mkdir ~/wallpapers
sudo cp -rf ~/Dotfiles/wallpapers/* ~/wallpapers/
wal -i ~/wallpapers/pywallpaper.jpg
pywalfox install

sudo cp -rf ~/Dotfiles/.config/* ~/.config/
sudo cp ~/Dotfiles/.bashrc ~/.bashrc

git config --global user.email "adrien.bouvais.pro@gmail.com"
git config --global user.name "adrien"
ssh-keygen -t rsa -b 4096 -C "adrien.bouvais.pro@gmail.com" -f ~/.ssh/id_rsa -N ""

cp /run/media/adrien/ARCH_202504/ssh_keys/id_rsa ~/.ssh/
cp /run/media/adrien/ARCH_202504/ssh_keys/id_rsa.pub ~/.ssh/

hyperctl reload
echo "Dont forget to add Pywalfox extension to Firefox https://addons.mozilla.org/en-US/firefox/addon/pywalfox/"
echo "Then run 'pywalfox update'"
