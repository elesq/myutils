# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Pa    th to your oh-my-zsh installation.
export ZSH="/Users/ed/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#688183"

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

# adds homebrew first in the list
export PATH="/opt/homebrew/bin/:$PATH"

# adds golang settings to path
#export GO111MODULE=auto
#export PATH=$HOME/go/bin:$PATH

# local mongoDB installations
#export PATH=$PATH:/usr/local/Cellar/mongodb-community@4.2/4.2.17/bin

# editor update
export EDITOR=nvim
alias vi=vim

# --------------------------------------------------------------
# user aliases
# --------------------------------------------------------------
alias xx='clear'
alias lrt='ls -lrt'
alias zzz='source ~/.zshrc'

# --------------------------------------------------------------
# place aliases
# --------------------------------------------------------------
alias qa='cd ~/.elesq/code/qa'
alias rrr='cd ~/.elesq/code/current'
alias www='cd ~/.elesq/code/web'
alias yoo='cd ~/.elesq/yootils'

# --------------------------------------------------------------
# node aliases
# --------------------------------------------------------------
alias ni='node inspect'

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
alias 3ts='~/.elesq/yootils/scripts/create-three-ts-app.sh'
alias tddsv='~/.elesq/yootils/scripts/create-svelte-tdd-project-cli.sh'

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
# nginx for laravel
# --------------------------------------------------------------
alias startnginx='brew services start nginx'
alias stopnginx='brew services stop nginx'

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
alias docmongo='docker run -d --name mongodb -v ~/data/mongo:/data/db -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=pass -p 27017:27017 mongo:4.4.0'

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
# go development settings
# --------------------------------------------------------------
export PATH="/usr/local/go/bin:$PATH"

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

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# export PATH=$HOME/.pyenv/shims:$PATH

# if command -v pyenv &>/dev/null; then
#     eval "$(pyenv init -)"
# fi
# if command -v pyenv-virtualenv &>/dev/null; then
#     eval "$(pyenv virtualenv-init -)"
# fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
#         . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
#     else
#         export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# conda config --set auto_activate_base false
# <<< conda initialize <<<
