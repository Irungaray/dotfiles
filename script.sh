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


read -p "Want to git pull first? [Y/n] " DO_A_GIT_PULL

if [[ $DO_A_GIT_PULL = "n" || $DO_A_GIT_PULL = "N"  ]]; then

	echo "Okay, not pulling!"

else

	command git pull

	echo " "
	echo "Exiting script in case the remote contains newer refs."
    echo "Please run it again, capo."

    exit 0

fi


for n in ${files[@]}
do
	echo "Copying $n..."
	cp $n ./dotfiles
done


echo "Also copying wallpapers"
cp -r ~/Pictures/wallpapers ./dotfiles


echo "Succesfully copied all your dotfiles, capo!"
echo " "


read -p "Want to git push? [Y/n] " DO_A_GIT_PUSH

if [[ $DO_A_GIT_PUSH = "n" || $DO_A_GIT_PUSH = "N"  ]]; then

	echo "Okay, not pushing!"

else

	command git push

	echo " "
	echo "Exiting script in case the remote contains newer refs."
    echo "Please run it again, capo."

fi
