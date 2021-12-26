# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ed/.oh-my-zsh"

#ZSH_THEME="hyperzsh"
ZSH_THEME="half-life"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# --------------------------------------------------------------
# Add wisely, as too many plugins slow down shell startup.
# --------------------------------------------------------------
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# If you need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --------------------------------------------------------------
# PATH Related settings
# --------------------------------------------------------------
# sets the out the box path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

#export PATH="$PATH:/Users/ed/.dotnet/tools"
#export PATH="$PATH:/Users/ed/.flutter/flutter/bin"

# adds golang settings to path
export GO111MODULE=auto
export PATH=$HOME/go/bin:$PATH

# protobuf settings
export PATH=$PATH:/usr/local/protobuf/bin

# local mongoDB installations
export PATH=$PATH:/usr/local/Cellar/mongodb-community@4.2/4.2.17/bin

# editor update
export EDITOR=nvim
alias vi=vim

# --------------------------------------------------------------
# user aliases
# --------------------------------------------------------------
alias xx='clear'
alias lrt='ls -lrt'
alias www='cd ~/.elesq/code/js'
alias yoo='cd ~/.elesq/yootils'
alias zzz='source ~/.zshrc'


# --------------------------------------------------------------
# git aliases
# --------------------------------------------------------------
alias gh='git push --all origin -ff'
alias gp='git pull origin main --rebase'
alias gb='git checkout -b'
alias gd='git checkout develop'
alias gf='git add .'
alias gg='git commit -m'
alias gmm='git checkout main && git merge'
alias ss='git status'

# --------------------------------------------------------------
# CLI tools
# --------------------------------------------------------------
alias testrep='go test -coverprofile=coverage.out && go tool cover -html=coverage.out'

# javascript web apps
alias vwa='~/.elesq/yootils/scripts/create-vanilla-web-app.sh'
alias cra='npx create-react-app'
alias csa='~/.elesq/yootils/scripts/create-svelte-app.sh'
alias cwa='~/.elesq/yootils/scripts/create-webpack-app.sh'
alias cpa='~/.elesq/yootils/scripts/create-parcel-app.sh'
alias cja='~/.elesq/yootils/scripts/create-react-jest-babel-app.sh'

# testing / automation clis
alias pup='~/.elesq/yootils/scripts/create-puppeteer-project-cli.sh'

# typescript web apps
alias tra='~/.elesq/yootils/scripts/create-typescript-react-app.sh'
alias tsa='~/.elesq/yootils/scripts/create-typescript-cli.sh'

# --------------------------------------------------------------
# utility script aliases
# --------------------------------------------------------------
alias bb='~/.elesq/yootils/scripts/brewup.sh'
alias cc='~/.elesq/yootils/scripts/copycat.sh'
alias kk='~/.elesq/yootils/scripts/porter.sh'
alias npl='~/.elesq/yootils/scripts/npl.sh'
alias gupd='~/.elesq/yootils/scripts/gupd.sh'
alias gout='~/.elesq/yootils/scripts/gout.sh'
alias mgo='~/.elesq/yootils/scripts/shellmongo.sh'
alias pgs='~/.elesq/yootils/scripts/shellpostgres.sh'
alias ppp='~/.elesq/yootils/scripts/add-prettier-config-file.sh'
alias cli='~/.elesq/yootils/scripts/show-clis.sh'

# --------------------------------------------------------------
# containerised services alias
# --------------------------------------------------------------
# docker prune
alias prune="docker container prune"

# Message broker
alias docrabbit='docker run -d --hostname rabbitmq-host --name rabbitmq-server -p 5672:5672 -p 15672:15672 rabbitmq:3'

# Database Engines
alias docmysql="docker run --restart always --name mysql --net dev-net -v /Users/ed/data/mysql:/var/lib/mysql -p 3306:3306 -d -e MYSQL_USER=web@localhost -e MYSQL_PASSWORD=pass -e MYSQL_ROOT_PASSWORD=pass mysql"
alias docpg10='docker run --name postgres-local -p 5432:5432 -v ~/data/postgres10:/var/lib/postgresql/data -e POSTGRES_USER=web -e POSTGRES_PASSWORD=pass -d postgres:10.8'
alias docpg13='docker run --name pg13 -p 5432:5432 -v ~/data/postgres13:/var/lib/postgresql/data -e POSTGRES_USER=web -e POSTGRES_PASSWORD=pass -d postgres:13.4-alpine'
alias docmongo='docker run -d --name mongodb -v ~/data/mongo:/data/db -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=pass -p 27017:27017 mongo:4.2.0'

# DB shells
alias mysqlroot="docker exec -it mysql mysql -u root -p"
alias mysqluser="docker exec -it mysql mysql -u web -p"
alias mongouser='docker exec -it mongodb bash'

# --------------------------------------------------------------
# development project settings in the environment
# --------------------------------------------------------------
# set these outside of the version
# stored on github

# --------------------------------------------------------------
# add node commands installed to path
# --------------------------------------------------------------
export PATH=./node_modules/.bin:$PATH

# --------------------------------------------------------------
# package version managers
# --------------------------------------------------------------
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
#source $(brew --prefix nvm)/nvm.sh[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

cat << endOfBanner

   __                 __           __      _______ _______ _______
  |  |.-----.---.-.--|  |.-----.--|  |    |__     |     __|   |   |
  |  ||  _  |  _  |  _  ||  -__|  _  |    |     __|__     |       |__ __ __
  |__||_____|___._|_____||_____|_____|    |_______|_______|___|___|__|__|__|

endOfBanner
