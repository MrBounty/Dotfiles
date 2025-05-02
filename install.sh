#!/bin/bash

# Install pacman packages
for package in \
  scrcpy \
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
  ; do
    yay -S --noconfirm $package
    clear
done

# Install Configs
sudo cp -rf ~/Dotfiles/.config/* ~/.config/
sudo cp ~/Dotfiles/.bashrc ~/.bashrc

git config --global user.email "adrien.bouvais.pro@gmail.com"
git config --global user.name "adrien"
ssh-keygen -t rsa -b 4096 -C "adrien.bouvais.pro@gmail.com" -f ~/.ssh/id_rsa -N ""

# Wallpaper
mkdir ~/wallpapers
sudo cp -rf ~/Dotfiles/wallpapers/* ~/wallpapers/
wal -i ~/wallpapers/pywallpaper.jpg
pywalfox install

swww img ~/.config/pywallpaper.jpg --transition-type any --transition-fps 60 --transition-duration .5
wal -i ~/.config/pywallpaper.jpg -n --cols16
swaync-client --reload-css
cat ~/.cache/wal/colors-kitty.conf > ~/.config/kitty/current-theme.conf
pywalfox update
hyprctl reload

echo "Dont forget to add Pywalfox extension to Firefox https://addons.mozilla.org/en-US/firefox/addon/pywalfox/"
echo "Then run 'pywalfox update'"
