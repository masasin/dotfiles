#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use extended glob
shopt -s extglob

PS1='[\u@\h \W]\$ '

if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

# Autocomplete
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
