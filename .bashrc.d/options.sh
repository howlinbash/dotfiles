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
alias ls='ls --color=auto'

## Dev Paths
export PATH=~/.local/bin:"$PATH"
source /usr/share/nvm/init-nvm.sh
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

export EDITOR=/usr/bin/nvim
shopt -s dotglob # cp dotfiles as well

eval `keychain --agents ssh --eval id_rsa_git`

mcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
