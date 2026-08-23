#!/usr/bin/sh

# Essentials
echo "Installing essential packages..."
sudo pacman -S --needed base-devel git stow
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd ../ && rm -Rf paru

# Terminal Enhancements
echo "Installing terminal enhancement packages..."
sudo pacman -S --needed ohmybash bat fzf eza less fastfetch fd

# Desktop Environment
echo "Installing desktop envirnonment packages..."
sudo pacman -S --needed \
  hypridle \
  hyprpaper \
  hyprlock \
  hyprpicker \
  hyprsunset \
  grimblast \
  sddm \
  swaync \
  adwaita-dark \
  brightnessctl \
  gwenview \
  qt6ct \
  breeze \
  breeze-icons \
  zathura \
  zathura-pdf-mupdf \
  okular \
  gnome-keyring

paru -S grimblast

# Development Environment
echo "Installing development environment packages..."
sudo pacman -S --needed neovim luarocks lua lua51 tree-sitter-cli aws-vault

sudo pacman -S docker docker-compose
sudo systemctl enable --now docker.service
sudo usermod -aG docker $USER

paru -S bruno-bin
