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

	# VSCodium
	/home/irunga/.config/VSCodium/User/keybindings.json
	/home/irunga/.config/VSCodium/User/settings.json
	/home/irunga/.config/VSCodium/User/snippets/react-snippets.code-snippets

	# VSCode (like a normie)
	/home/irunga/.config/Code/User/keybindings.json
	/home/irunga/.config/Code/User/settings.json
	/home/irunga/.config/Code/User/snippets/react-snippets.code-snippets

	# Left: keybindings

)

for n in ${files[@]}
do
	echo "Copying $n..."
	cp $n ./dotfiles
done

echo "Succesfully copied all your dotfiles, capo! salu3"
