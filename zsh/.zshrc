# ----------------------------------------------------------------------------- 
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -----------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# -----------------------------------------------------------------------------
# Path to your oh-my-zsh installation. Configure the theme and root for OMZ. 
export ZSH="/Users/ed/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


# -----------------------------------------------------------------------------
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# ----------------------------------------------------------------------------- 
# Add wisely, as too many plugins slow down shell startup.
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

# ----------------------------------------------------------------------------- 
# tmux settings 
export XDG_CONFIG_HOME="$HOME/.config"


# ----------------------------------------------------------------------------- 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ----------------------------------------------------------------------------- 
# PATH Related settings (out the box setting)
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# ----------------------------------------------------------------------------- 
# adds homebrew first in the list
export PATH="/opt/homebrew/bin/:$PATH"


# ----------------------------------------------------------------------------- 
# rust settings
export PATH="$HOME/.cargo/bin:$PATH"

# ----------------------------------------------------------------------------- 
# apache maven settings
export PATH=$PATH:/opt/apache-maven/bin

# ----------------------------------------------------------------------------- 
# go development settings
export PATH="/usr/local/go/bin:$PATH"

# ----------------------------------------------------------------------------- 
# local DB settings
# mongoDB installations
# export PATH=$PATH:/usr/local/Cellar/mongodb-community@4.2/4.2.17/bin
export PATH=${PATH}:/usr/local/mysql/bin


# ----------------------------------------------------------------------------- 
# add node commands installed to path
export PATH=./node_modules/.bin:$PATH

# ----------------------------------------------------------------------------- 
# add android emulator to path
export PATH="/Users/ed/Library/Android/sdk/emulator:$PATH"

# ----------------------------------------------------------------------------- 
# haskell setup
[ -f "/Users/ed/.ghcup/env" ] && source "/Users/ed/.ghcup/env" # ghcup-env

# ----------------------------------------------------------------------------- 
# opam configuration for ocaml 
[[ ! -r /Users/ed/.opam/opam-init/init.zsh ]] || source /Users/ed/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


# ----------------------------------------------------------------------------- 
# package version managers
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
#source $(brew --prefix nvm)/nvm.sh[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi

# ----------------------------------------------------------------------------- 
# pyenv settings for python versions 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$HOME/.pyenv/shims:$PATH

if command -v pyenv &>/dev/null; then
    eval "$(pyenv init -)"
fi
if command -v pyenv-virtualenv &>/dev/null; then
    eval "$(pyenv virtualenv-init -)"
fi

# ----------------------------------------------------------------------------- 
# language servers
# export PATH=$PATH:$HOME/.config/lsp/lua-language-server/bin

# ----------------------------------------------------------------------------- 
# conda (anaconda distribution settings)
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ----------------------------------------------------------------------------- 
# source the aliases
. ~/.alias

# ----------------------------------------------------------------------------- 
# unset the annoying autocorrect
unsetopt correct_all

# ----------------------------------------------------------------------------- 
# iterm pointer update
printf "\033]22;arrow\a"

# ----------------------------------------------------------------------------- 
# SDKMAN - THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/ed/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/ed/Library/Application Support/Herd/bin/":$PATH

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ed/.lmstudio/bin"
