# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    # if [ -f "$HOME/.bashrc" ]; then
	# . "$HOME/.bashrc"
    # fi
# fi

alias ls='ls --color=auto'
BROWSER=/usr/bin/google-chrome

# Emacs Daemon
ALTERNATE_EDITOR=''
EDITOR='emacsclient -t'
VISUAL='emacsclient -c -a emacs'
alias emax='emacsclient -t'
alias emacsc='emacsclient -c -a emacs'

alias activate='source .env/bin/activate'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
alias xclip='xclip -selection c'

export PATH="$PATH:$HOME/.local/bin:/usr/local/texlive/2017/bin/x86_64-linux"
set -o vi

# bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
source $HOME/.config/bash-git-prompt/gitprompt.sh
