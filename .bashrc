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
