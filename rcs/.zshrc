# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="intheloop"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Xcode6-Beta2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin"

export LC_ALL='ja_JP.UTF-8'

# export MANPATH="/usr/local/man:$MANPATH"

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

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/Mizuki/gae/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
source '/Users/Mizuki/gae/google-cloud-sdk/completion.zsh.inc'

#MacVim Path
#PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-darwin

#nvm Path
#source ~/.nvm/nvm.sh

# #Auto start tmux
# if [ -z "$TMUX" -a -z "$STY" ]; then
#     if type tmuxx >/dev/null 2>&1; then
#         tmuxx
#     elif type tmux >/dev/null 2>&1; then
#         if tmux has-session && tmux list-sessions | egrep -q '.*]$'; then
#             # デタッチ済みセッションが存在する
#             tmux attach && echo "tmux attached session "
#         else
#             tmux new-session && echo "tmux created new session"
#         fi
#     elif type screen >/dev/null 2>&1; then
#         screen -rx || screen -D -RR
#     fi
# fi

#php55 Path
#export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export PATH=/usr/local/sbin:$PATH
#rbenv PATH
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

#set GOROOT
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#set postgreSQL PATH
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# set path to nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# about TeX
export PATH="/usr/local/texlive/2015/bin/x86_64-darwin/:$PATH"
