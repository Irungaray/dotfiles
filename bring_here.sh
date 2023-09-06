#!/bin/bash

printf "Starting to bring here all dotfiles...\n\n"

# ZSH
cp ~/.zshrc ~/dotfiles/dotfiles/.zshrc

# Regolith config
cp /etc/regolith/i3/config ~/dotfiles/dotfiles/config
cp ~/.config/regolith/Xresources ~/dotfiles/dotfiles/Xresources

# Ranger
cp ~/.config/ranger/rc.conf ~/dotfiles/dotfiles/rc.conf
cp ~/.config/ranger/scope.sh ~/dotfiles/dotfiles/scope.sh

# Vim
cp ~/.vimrc ~/dotfiles/dotfiles/.vimrc

# Compton
cp ~/.config/compton.conf ~/dotfiles/dotfiles/compton.conf

# Ranger
cp ~/.config/ranger/scope.sh ~/dotfiles/dotfiles/scope.sh

# VSCodium
cp ~/.config/VSCodium/User/keybindings.json ~/dotfiles/dotfiles/keybindings.json
cp ~/.config/VSCodium/User/settings.json ~/dotfiles/dotfiles/settings.json
cp ~/.config/VSCodium/User/snippets/react-snippets.code-snippets ~/dotfiles/dotfiles/react-snippets.code-snippets

# VSCode (like a normie)
cp ~/.config/Code/User/keybindings.json ~/dotfiles/dotfiles/keybindings.json
cp ~/.config/Code/User/settings.json ~/dotfiles/dotfiles/settings.json
cp ~/.config/Code/User/snippets/react-snippets.code-snippets ~/dotfiles/dotfiles/react-snippets.code-snippets

# Autokey Keybindings
cp ~/hotkeys/Tlgrm.py ~/dotfiles/dotfiles/Tlgrm.py

# Wallpapers
cp -R ~/Pictures/wallpapers ~/dotfiles/dotfiles/wallpapers
