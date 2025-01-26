
## Bash Settings
HISTSIZE=
HISTFILESIZE=
PROMPT_COMMAND="$PROMPT_COMMAND; history -a"
export HISTCONTROL=ignoreboth

## Cosmetics
export TERM=xterm-256color
# This makes the propt all pretty
PS1="┌─[\033[1;32m\u\[\033[0m\]][\033[0;32m\h\[\033[0m\]][\033[0;36m\w\[\033[0m\]] \n└─▪ "
export PS1
# PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto'

## Dev Paths
export PATH=~/.local/bin:"$PATH"
source /usr/share/nvm/init-nvm.sh
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
# export PATH=~/.node_modules/bin:"$PATH"
# export npm_config_prefix=~/.node_modules
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/pycode
# source /usr/bin/virtualenvwrapper.sh
# export PATH=~/.gem/ruby/2.4.0/bin:"$PATH"
# PATH="$HOME/.node_modules/bin:$PATH"
# export PATH=/usr/bin/core_perl:"$PATH"
# been getting some path errors check this on reboot
# export PATH=/home/howlin/.gem/ruby/2.4.0/bin:/home/howlin/.node_modules/bin:/home/howlin/bin:/usr/local/bin:/usr/local/sbin:/usr/bin
# Ruby exports
# export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# export GEM_HOME=$(ruby -e 'print Gem.user_dir')
# export GEM_HOME=$HOME/gems
# export PATH=$HOME/gems/bin:$PATH

export EDITOR=/usr/bin/nvim
shopt -s dotglob # cp dotfiles as well
# shopt -s dotglob # extended pattern matching?
