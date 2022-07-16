#!/bin/bash

files=(

	~/.zshrc

	# Regolith config
	/etc/regolith/i3/config
	~/.config/regolith/Xresources

	# Wallpaper
	/usr/share/backgrounds/irungapaper.jpg

	# Ranger
	~/.config/ranger/rc.conf

	# Vim
	~/.vimrc

    # Compton
    ~/.config/compton.conf

	# VSCodium (outdated)
	# ~/.config/VSCodium/User/keybindings.json
	# ~/.config/VSCodium/User/settings.json
	# ~/.config/VSCodium/User/snippets/react-snippets.code-snippets

	# VSCode (like a normie)
	~/.config/Code/User/keybindings.json
	~/.config/Code/User/settings.json
	~/.config/Code/User/snippets/react-snippets.code-snippets

	# Autokey Keybindings
    ~/hotkeys/Tlgrm.py

)

for n in ${files[@]}
do
	echo "Copying $n..."
	cp $n ./dotfiles
done

echo "Also copying wallpapers"
cp -r ~/Pictures/wallpapers ./dotfiles

echo "Succesfully copied all your dotfiles, capo! salu3"
