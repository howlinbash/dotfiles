#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
#export TERM=xterm-256color

# This makes the propt all pretty
PS1="┌─[\033[1;32m\u\[\033[0m\]][\033[0;32m\h\[\033[0m\]][\033[0;36m\w\[\033[0m\]] \n└─▪ "
export PS1

# Add my bins to the path
export PATH=~/bin:"$PATH"
export PATH=~/.node_modules/bin:"$PATH"
#PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

HISTSIZE=
HISTFILESIZE=

shopt -s extglob
