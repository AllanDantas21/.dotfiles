#!/bin/bash

# get the windows username
WIN_USER=WIN-USER

# script to setup the environment for development

# create the destination directory, if it doesn't exist
mkdir -p /mnt/c/Users/$WIN_USER/appdata/roaming/alacritty

# setup alacritty configs
ln -s ~/dotfiles/alacritty/alacritty.toml /mnt/c/Users/$WIN_USER/appdata/roaming/alacritty/alacritty.toml
