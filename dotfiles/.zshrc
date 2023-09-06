# Paths
export ZSH="/home/irunga/.oh-my-zsh"
export i3_PATH="/home/irunga/Documents"
export NODE_ENV=dev

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

# Aliases
    # Misc
      alias minecraft="cd ~/Downloads/TLauncher && java -jar TLauncher.jar && exit"
      alias ne="nautilus . && exit"
      alias duh="du -h --max-depth=1 | sort -h"
      alias rcg="node ~/bin/atomic-maker.js"
      alias aliases="cat ~/.zshrc | grep -w alias"
      alias cl="cal -3 && printf '\nDates of interest:\n\n' && calendar | grep -w `date '+%d'`"
      alias glog="cd ~/bin && ./gym-logger.sh"
      alias dir="ls -R | grep -v "node_modules" | grep ":$" | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'"
      alias rn=". ranger"
      alias bp="bpytop"
      alias mep="nvm use node && node ~/Documents/Projects/mep-tracker/main.js"

    # System
      alias src="source ~/.zshrc"
      alias z="vim ~/.zshrc"
      alias x="cd ~/.config/regolith && vim Xresources"
      alias windows="sudo vim /etc/regolith/i3/config"
      alias c3="cd && sudo vim /etc/regolith/i3/config"
      alias cc="vim  ~/.config/compton.conf"
      alias android="cd ~/Documents/AiCore/android-studio/bin/ && ./studio.sh"
      #alias loc="find . -name '*.php' | sed 's/.*/"&"/' | xargs  wc -l"

    # Code
      alias c="codium ."
      alias ce="codium . && exit && exit"
      alias n="npm"
      alias nr="npm run"
      alias nrd="npm run dev"

    # git
      alias gac="git add . && git commit -m"
      alias dog="git log --all --decorate --oneline --graph"
      alias ammend_commit="git add . && git commit --amend --no-edit"
      alias stash="git stash -u"
      alias list="git stash list"
      alias pop="git stash pop"
      alias drop="git stash drop"
      alias push="git push"
      alias commit="git commit -m"
      alias remove_remote="git push origin -d"
      alias undo_commit="git reset HEAD^"
      alias g="git"
      alias checkout="git checkout"
      alias undo_reset="git reset HEAD@{1}"
      alias push="git push"
      alias pull="git pull"
      alias sw="switch"
      alias status="git status"
      alias log="git --no-pager log --oneline -n 10"

    # AiCore
      alias db="sudo dbeaver-ce"
      alias nru="npm run update:libs && npm run start:dev"
      alias nrc="npm run update:core && npm run start:dev"
      alias nrs="npm run start:dev"
      alias nrl="npm run update:libs"
      alias nre="npm run update:env"

      alias pidkill="pkill -9"

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
    function pushup () {
    	git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
    }

    function find_file() {
        find . -type d \( -path ./node_modules -o -path ./.git \) -prune -o -name "$1" -print
    }

    function add() {
	    my_file=$(find_file "$1") \
        && git add $my_file \
	    && echo "Added $my_file"
    }

    # Calculator. Not working :(
    function c () {
        echo $(( ${1} ))
    }

    function untar() {
        tar xzvf "$1"
    }

    # Recursively replace string in curr dir (escaped chars must be inside '')
    function replace() {
        grep -rl $1 . | xargs sed -i "s/$1/$2/g"
    }

    # Recursively replace extension in curr dir
    function replace_ext() {
       echo 'To do'
       # find ./ -depth -name "*.js" -exec sh -c 'mv "$1" "${1%.js}.jsx"' _ {} \;
    }

    # Switch to previous branch or specified branch
    function switch() {
        if [ $# -eq 0 ];
	        then git switch -
	        else git switch $1
	    fi
    }

# Paths
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # export DENO_INSTALL="/home/irunga/.deno"
    # export PATH="$DENO_INSTALL/bin:$PATH"
    # /home/irunga/.deno/bin/deno --help

source /home/irunga/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
