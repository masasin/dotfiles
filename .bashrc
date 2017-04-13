#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> BEGIN ADDED BY CNCHI INSTALLER
BROWSER=/usr/bin/google-chrome
EDITOR=/usr/bin/vim
# <<< END ADDED BY CNCHI INSTALLER

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
