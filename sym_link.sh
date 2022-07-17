#!/bin/bash

echo "Starting to symlink all dotfiles..."

# ZSH
ln -s ./dotfiles/.zshrc ~/.zshrc

# Regolith config
ln -s ./dotfiles/config /etc/regolith/i3/config
ln -s ./dotfiles/Xresources ~/.config/regolith/Xresources

# Ranger
ln -s ./dotfiles/rc.conf ~/.config/ranger/rc.conf
ln -s ./dotfiles/scope.sh ~/.config/ranger/scope.sh

# Vim
ln -s ./dotfiles/.vimrc ~/.vimrc

# Compton
ln -s ./dotfiles/compton.conf ~/.config/compton.conf

# Ranger
ln -s ./dotfiles/scope.sh ~/.config/ranger/scope.sh

# VSCodium
ln -s ./dotfiles/keybindings.json ~/.config/VSCodium/User/keybindings.json
ln -s ./dotfiles/settings.json ~/.config/VSCodium/User/settings.json
ln -s ./dotfiles/react-snippets.code-snippets ~/.config/VSCodium/User/snippets/react-snippets.code-snippets

# VSCode (like a normie)
ln -s ./dotfiles/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ./dotfiles/settings.json ~/.config/Code/User/settings.json
ln -s ./dotfiles/react-snippets.code-snippets ~/.config/Code/User/snippets/react-snippets.code-snippets

# Autokey Keybindings
ln -s ./dotfiles/Tlgrm.py ~/hotkeys/Tlgrm.py

# Wallpapers
echo "Copying wallpapers..."

mkdir ~/Pictures/wallpapers
cp -R ./dotfiles/wallpapers ~/Pictures/wallpapers

echo "Succesfully symlinked all dotfiles and copied wallpapers. Salu3, capo!"
