#!/bin/bash

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
  echo "Nvim directory created."
fi

yes | cp -rf ./nvim/* ~/.config/nvim
cp tmux.conf ~/.tmux.conf

echo "Changes applied successfully"
