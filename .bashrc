#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

set -o vi

# Load all supplementary scripts
for config in "$HOME"/.bashrc.d/*.sh ; do
    source "$config"
done
unset -v config

# # Auto-start sway
# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#   exec sway
# fi

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

source /usr/share/nvm/init-nvm.sh
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source /usr/share/nvm/init-nvm.sh
# and node as this version in bashrc
