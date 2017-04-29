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
