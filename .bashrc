#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use extended glob
shopt -s extglob

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/google-chrome
EDITOR=/usr/bin/vim

alias activate='source .env/bin/activate'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
alias xclip='xclip -selection c'

export PATH="$PATH:$HOME/.local/bin:/usr/local/texlive/2017/bin/x86_64-linux"
set -o vi

# bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.config/bash-git-prompt/gitprompt.sh
