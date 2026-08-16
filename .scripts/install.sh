#!/usr/bin/sh

# Essentials
echo "Installing essential packages..."
sudo pacman -S --needed git stow

# Terminal Enhancements
echo "Installing terminal enhancement packages..."
sudo pacman -S --needed ohmybash bat fzf eza less fastfetch fd

# Desktop Environment
echo "Installing desktop envirnonment packages..."
sudo pacman -S --needed hypridle hyprpaper hyprlock hyprpicker grimblast sddm swaync adwaita-dark brightnessctl gwenview qt6ct breeze breeze-icons

# Development Environment
echo "Installing development environment packages..."
sudo pacman -S --needed neovim luarocks lua lua51 tree-sitter-cli
