# Path to your oh-my-zsh installation.
export ZSH="/home/irunga/.oh-my-zsh"

# Theme to load & theme config
    if [ ! -e  ".git" ]; then
        ZSH_THEME="robbyrussell"
    else
        ZSH_THEME="spaceship"
    fi

    SPACESHIP_GIT_SYMBOL="↪ "
    SPACESHIP_PROMPT_ADD_NEWLINE=false
    SPACESHIP_PACKAGE_SHOW=true
    SPACESHIP_PACKAGE_PREFIX=""

# Which plugins would you like to load?
    plugins=(
        git
        zsh-autosuggestions
    )

source $ZSH/oh-my-zsh.sh

# User configuration
    # export MANPATH="/usr/local/man:$MANPATH"

# Aliases
    alias minecraft="cd ~/Downloads/TLauncher && java -jar TLauncher.jar && exit"
    alias c="codium ."
    alias ce="codium . && exit && exit"
    alias ne="nautilus . && exit"
    alias gac="git add . && git commit -m"
    alias n="npm"
    alias nr="npm run"
    alias nrd="npm run dev"
    alias duh="du -h --max-depth=1 | sort -h"
    alias rcg="node ~/bin/atomic-maker.js"
    alias z="vim ~/.zshrc"
    alias aliases="cat ~/.zshrc | grep -w alias"
    alias cl="cal -3 && printf '\nDates of interest:\n\n' && calendar | grep -w `date '+%d'`"
    alias glog="bash ~/bin/gym-logger.sh"
    alias dog="git log --all --decorate --oneline --graph"
    alias rn=". ranger"
    alias dir="ls -R | grep -v "node_modules" | grep ":$" | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'"
    alias src="source ~/.zshrc"
    alias bp="bpytop"
    alias x="cd ~/.config/regolith && vim Xresources"
    alias windows="sudo vim /etc/regolith/i3/config"
    alias ammend_commit="git add . && git commit --amend --no-edit"
    alias stash="git stash"
    alias list="git stash list"
    alias pop="git stash pop"
    alias drop="git stash drop"
    alias push="git push"
    alias c3="cd && sudo vim /etc/regolith/i3/config"
    alias cc="vim  ~/.config/compton.conf"

# Functions
    # Git clone & cd into
    function gccd(){
        g clone "$1" && cd $(basename $_ .git)
    }

    # Git clone, cd into & open VSC instance
    function gcce(){
        g clone "$1" && cd $(basename $_ .git) && codium . && exit
    }

    # Search ZSH's history
    function search() {
        grep -w "$1" ~/.zsh_history
    }

    # Push to upstream origin
    function push_upstream () {
    	git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
    }

    # Calculator. Not working :(
    function c () {
        echo $(( ${1} ))
    }

# Paths
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # export DENO_INSTALL="/home/irunga/.deno"
    # export PATH="$DENO_INSTALL/bin:$PATH"
    # /home/irunga/.deno/bin/deno --help
