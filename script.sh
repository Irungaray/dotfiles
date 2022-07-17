#!/bin/bash

files=(

	~/.zshrc

	# Regolith config
	/etc/regolith/i3/config
	~/.config/regolith/Xresources

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
	echo " "

else

    echo "Pulling..."
	command git pull --quiet

	echo " "
	echo "Exiting script in case the remote contains newer refs."
    echo "Please run it again, capo."

    exit 0

fi


# Here is where the magic happens
for n in ${files[@]}
do
	echo "Copying $n..."
	cp $n ./dotfiles
done


echo "Also copying wallpapers..."
cp -r ~/Pictures/wallpapers ./dotfiles

echo " "
echo "Succesfully copied all your dotfiles, capo!"
echo " "


read -p "Want to git push? [Y/n] " DO_A_GIT_PUSH

if [[ $DO_A_GIT_PUSH = "n" || $DO_A_GIT_PUSH = "N"  ]]; then

	echo "Okay, not pushing!"
    echo " "
    echo "Terrible script capo, salu3."

    exit 0

else

    read -p "Please write the commit's message: " COMMIT_MESSAGE
    command git add ./dotfiles
    command git commit -m "$COMMIT_MESSAGE"
	command git push

	echo " "
    echo "Terrible script capo, salu3."

fi
