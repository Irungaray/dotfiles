#!/bin/bash

echo "Starting to symlink all dotfiles..."

# ZSH
ln -s -f ~/dotfiles/dotfiles/.zshrc ~/.zshrc

# Regolith config
ln -s -f ~/dotfiles/dotfiles/config /etc/regolith/i3/config
ln -s -f ~/dotfiles/dotfiles/Xresources ~/.config/regolith/Xresources

# Ranger
ln -s -f ~/dotfiles/dotfiles/rc.conf ~/.config/ranger/rc.conf
ln -s -f ~/dotfiles/dotfiles/scope.sh ~/.config/ranger/scope.sh

# Vim
ln -s -f ~/dotfiles/dotfiles/.vimrc ~/.vimrc

# Compton
ln -s -f ~/dotfiles/dotfiles/compton.conf ~/.config/compton.conf

# VSCodium
ln -s -f ~/dotfiles/dotfiles/keybindings.json ~/.config/VSCodium/User/keybindings.json
ln -s -f ~/dotfiles/dotfiles/settings.json ~/.config/VSCodium/User/settings.json
ln -s -f ~/dotfiles/dotfiles/react-snippets.code-snippets ~/.config/VSCodium/User/snippets/react-snippets.code-snippets

# VSCode (like a normie)
ln -s -f ~/dotfiles/dotfiles/keybindings.json ~/.config/Code/User/keybindings.json
ln -s -f ~/dotfiles/dotfiles/settings.json ~/.config/Code/User/settings.json
ln -s -f ~/dotfiles/dotfiles/react-snippets.code-snippets ~/.config/Code/User/snippets/react-snippets.code-snippets

# Autokey Keybindings
ln -s -f ~/dotfiles/Tlgrm.py ~/hotkeys/Tlgrm.py

# Wallpapers
echo "Copying wallpapers..."

mkdir ~/Pictures/wallpapers
cp -R ~/dotfiles/dotfiles/wallpapers ~/Pictures/wallpapers

echo "Succesfully symlinked all dotfiles and copied wallpapers. Salu3, capo!"
