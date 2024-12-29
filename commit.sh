#!/bin/bash

yes | cp -rf ./nvim/* ~/.config/nvim
cp tmux.conf ~/.tmux.conf

echo "Changes applied successfully"
