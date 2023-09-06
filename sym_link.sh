#!/bin/bash

echo "Starting to symlink all dotfiles..."

# ZSH
ln -s -f ~/dotfiles/.zshrc ~/.zshrc

# Regolith config
ln -s -f ~/dotfiles/config /etc/regolith/i3/config
ln -s -f ~/dotfiles/Xresources ~/.config/regolith/Xresources

# Ranger
ln -s -f ~/dotfiles/rc.conf ~/.config/ranger/rc.conf
ln -s -f ~/dotfiles/scope.sh ~/.config/ranger/scope.sh

# Vim
ln -s -f ~/dotfiles/.vimrc ~/.vimrc

# Compton
ln -s -f ~/dotfiles/compton.conf ~/.config/compton.conf

# Ranger
ln -s -f ~/dotfiles/scope.sh ~/.config/ranger/scope.sh

# VSCodium
ln -s -f ~/dotfiles/keybindings.json ~/.config/VSCodium/User/keybindings.json
ln -s -f ~/dotfiles/settings.json ~/.config/VSCodium/User/settings.json
ln -s -f ~/dotfiles/react-snippets.code-snippets ~/.config/VSCodium/User/snippets/react-snippets.code-snippets

# VSCode (like a normie)
ln -s -f ~/dotfiles/keybindings.json ~/.config/Code/User/keybindings.json
ln -s -f ~/dotfiles/settings.json ~/.config/Code/User/settings.json
ln -s -f ~/dotfiles/react-snippets.code-snippets ~/.config/Code/User/snippets/react-snippets.code-snippets

# Autokey Keybindings
ln -s -f ~/dotfiles/Tlgrm.py ~/hotkeys/Tlgrm.py

# Wallpapers
echo "Copying wallpapers..."

mkdir ~/Pictures/wallpapers
cp -R ./dotfiles/wallpapers ~/Pictures/wallpapers

echo "Succesfully symlinked all dotfiles and copied wallpapers. Salu3, capo!"
