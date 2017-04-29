
## Bash Settings
HISTSIZE=
HISTFILESIZE=


## Cosmetics
export TERM=xterm-256color
# This makes the propt all pretty
PS1="┌─[\033[1;32m\u\[\033[0m\]][\033[0;32m\h\[\033[0m\]][\033[0;36m\w\[\033[0m\]] \n└─▪ "
export PS1
# PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto'


## Dev Paths
export PATH=~/bin:"$PATH"
export PATH=~/.node_modules/bin:"$PATH"
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export npm_config_prefix=~/.node_modules
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/pycode
source /usr/bin/virtualenvwrapper.sh
#export PATH=~/.gem/ruby/2.4.0/bin:"$PATH"
#PATH="$HOME/.node_modules/bin:$PATH"


# extended pattern matching?
shopt -s extglob
