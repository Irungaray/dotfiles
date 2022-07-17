#!/bin/bash

# Curl
sudo apt install apt-transport-https curl

# Git
sudo apt install git

# Vim
sudo apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ZSH
sudo apt install zsh
chsh -s $(which zsh)

# Oh My Zsh! & Plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
nvm install 12.13.1
nvm alias default 12.13.1

# Regolith stuff
sudo apt install i3xrocks-temp
sudo apt install regolith-look-nord
regolith-look refresh

# Telegram
sudo snap install telegram-desktop

# Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Chrome
cd ~/Downloads
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
cd ~

# VSCodium & VSCode
snap install codium --classic
sudo snap install code --classic

# bPyTop
sudo snap install bpytop

# Compton
sudo apt update && sudo apt install compton

# Ranger
sudo apt install ranger
cd ~/Downloads
curl -L -O https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Arimo/Regular/complete/Arimo%20Regular%20Nerd%20Font%20Complete.ttf
cd ~
sudo apt install w3m w3m-img
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
sudo apt-get install highlight

# Nitrogen
sudo apt install nitrogen

# Autokey
sudo apt install autokey-gt

# GitHub Desktop
cd ~/Downloads
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.8.1-linux2/GitHubDesktop-linux-2.8.1-linux2.deb
sudo dpkg -i GitHubDesktop-linux-2.8.1-linux2.deb
rm GitHubDesktop-linux-2.8.1-linux2.deb
cd ~

# DBeaver & pSQL drivers
cd ~/Downloads
curl -L -O https://dbeaver.io/files/22.0.3/dbeaver-ce_22.0.3_amd64.deb
sudo dpkg -i dbeaver-ce_22.0.3_amd64.deb
rm dbeaver-ce_22.0.3_amd64.deb
cd ~

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-13
    # Then:
        # sudo -u postgres psql
        # psql -U postgres -h localhost
