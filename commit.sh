#!/bin/bash

rm -Rf ~/.config/nvim
cp -R ./nvim ~/.config/nvim
cp tmux.conf ~/.tmux.conf

echo "Changes applied successfully"
