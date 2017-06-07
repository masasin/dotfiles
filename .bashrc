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
function activate()
{
    directory=${2:-~/.virtualenvs}
    source $directory/$1/bin/activate
}

export GITHUB_TOKEN="9336f5eb7fdd9c064f51261749839d983e56acb7"
