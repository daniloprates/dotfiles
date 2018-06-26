# Path to your oh-my-zsh installation.
export ZSH=/Users/danilo/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime nix)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Applications/MAMP/bin/php/php5.5.10/bin:/usr/local/git/bin:/mongodb/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias g="git"
alias s="sudo"
alias ni="npm install"
alias nif="npm info"
alias np="npm publish"
# alias nr="npm run"
alias ns="npm start"
alias nt="npm test"
alias nu="npm run test:up"
alias nw="npm run watch"
alias cfgg="subl ~/.gitconfig"
alias cfgz="subl ~/.zshrc"
alias z="subl ~/.zshrc"
alias zshc="subl ~/.zshrc"
alias zshu=". ~/.zshrc"
alias u=". ~/.zshrc"
alias glg="git log --all --decorate --oneline"
alias gcflct="git diff --name-only --diff-filter=U"
alias gcft="git diff --name-only --diff-filter=U"
alias gac="git add -A && git commit -m"
alias gs="git status"
# alias d="cd /d"
alias ups="git branch --set-upstream-to"
alias gpo="git push -u origin"
alias reset="git reset --hard"

alias yr="yarn run"
alias ys="yarn start"
alias yt="yarn test"
alias ya="yarn add"
alias yi="yarn add"
alias y="yarn"

alias dlb="git branch -d"
alias dlbf="git branch -F"
alias drb="git push origin --delete"

alias LR="~/Dropbox/LR/"
alias LRA="~/Dropbox/LR/Audios/"

alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

alias rmd="rm -rf "

alias cn="/Users/danilo/pCloud\ Drive/dev/BarDog/Scripts/commit_new.sh"

# alias nodesass="npm rebuild node-sass"

alias dp="~/sh-scripts/deploy.sh"

# IOHK
alias devrun="cd ~/iohk/daedalus && export CARDANO_TLS_PATH=/Users/danilo/iohk/daedalus/tls/ && yarn run dev"
alias devc="nvm current && cd ~/iohk/daedalus && rm -r ./node_modules/.cache"
alias dev="echo 'development env' && export NETWORK=development && devrun"
alias testnet="echo 'testnet env' && export NETWORK=testnet && devrun"
alias mainnet="echo 'mainnet env' && export NETWORK=mainnet && devrun"
alias staging="echo 'staging env' && export NETWORK=staging && devrun"
alias i="cd ~/iohk"
alias a="cd ~/iohk/daedalus"
alias d="cd ~/iohk/daedalus"
alias c1="cd ~/iohk/cardano-sl && tmux new-session -s cardano"
alias c2="WALLET_CLIENT_AUTH_DISABLE=1 ./scripts/launch/demo-with-wallet-api.sh"
alias c2old="./scripts/launch/demo-with-wallet-api.sh"
alias cx="tmux kill-session -t cardano"
# alias npm8="cd ~/iohk/daedalus && nvm use 8 && npm rebuild node-sass --force"
alias c="cd ~/iohk/cardano-sl"
alias st="cd ~/iohk/daedalus && npm run storybook"
alias str="cd ~/iohk/react-polymorph && npm run storybook"
alias dlog="tail -f ~/Library/Application\ Support/Daedalus/Logs/pub/Daedalus.log"
alias test="export CARDANO_TLS_PATH=/Users/danilo/iohk/daedalus/tls/ && npm test"
alias t="export CARDANO_TLS_PATH=/Users/danilo/iohk/daedalus/tls/ && npm run cucumber -- "
alias tw="export CARDANO_TLS_PATH=/Users/danilo/iohk/daedalus/tls/ && npm run test:watch"
alias flow="yarn run flow:test"


function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

function bc {

  if [ -n "$1" ]; then
    branch=$(git branch | grep $1)
  else
    echo 'Usage: bc {string}'
  fi

  if [ ! -z "$branch" ]; then
    # for br in $branch;
    #   do echo "Branch: ${br}";
    # done
    # echo $branch
    git checkout ${branch// /}
  else
    echo 'No branch found'
  fi

}

function cm {
  echo "[DDW-${1}] ${2}"
}


export NVM_DIR="/Users/danilo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danilo/Downloads/gc/path.zsh.inc' ]; then source '/Users/danilo/Downloads/gc/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/danilo/Downloads/gc/completion.zsh.inc' ]; then source '/Users/danilo/Downloads/gc/completion.zsh.inc'; fi



# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix