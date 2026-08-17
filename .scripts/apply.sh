#!/usr/bin/sh

rm -Rf ~/.config/hypr/./*

# Symlinks
echo "Stowing configurations..."
stow bash hypr kitty nvim rofi tmux waybar system qt6ct kdeglobals color-schemes zathura

# Desktop Environment
echo "Applying desktop environment configurations..."
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
git clone --branch v1.12.0 --depth 1 https://github.com/stepanzubkov/where-is-my-sddm-theme.git /tmp/sddm-theme &&
  sudo mv /tmp/sddm-theme/where_is_my_sddm_theme /usr/share/sddm/themes/ &&
  cat ~/dotfiles/sddm/theme.conf | sudo tee /usr/share/sddm/themes/where_is_my_sddm_theme/theme.conf &&
  cat ~/dotfiles/sddm/sddm.conf | sudo tee /etc/sddm.conf &&
  rm -Rf /tmp/sddm-theme

# Development Environment
git config --global core.editor "vim"
