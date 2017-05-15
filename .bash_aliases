

# MY DOTFILES


## Basics
alias c='clear'
alias h='history'
alias gh='history | grep'
alias rl='source ~/.bashrc'
alias s='sudo'
alias q='exit'

## Filesystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cpr='cp -r'
alias cpv='cp -rv'
alias md='mkdir -p'
alias rd='rm -rf'
alias naut='nautilus --browser'

## Bookmarks
alias box='cd /home/howlin/sandbox'
alias cork='cd /home/howlin/corkboard'
alias dl='cd /home/howlin/Downloads'
alias fs='cat /home/howlin/corkboard/my-fs.md'
alias play='cd /home/howlin/cupboard/sandpit'
alias src='cd /home/howlin/src'
alias tmp='cd /home/howlin/tmp'
alias usb='cd /media'
alias baby='cd /home/howlin/src/life-gits/baby'

## Templates
alias finds='echo "find . -iname \"*string*\""'

## List directory contents
alias ls='ls --color=auto'
alias l.='ls -d .*'
alias l1='ls -1'
alias l1.='ls -d1 .*'
alias ll='ls -l'
alias lla='ls -Alh'
alias ll.='ls -dl .*'
alias llt='ls -tAlh'
alias llr='ls -trAlh'
alias tr='tree'
alias trd='tree -d'
alias tri='tree -I'
alias trif='tree -if'
alias trr='tree --noreport'
alias tr2='tree -L 2'
alias tr3='tree -L 3'
alias tr4='tree -L 4'
alias tr5='tree -L 5'

## Package managers
alias agi='sudo apt-get install -y'
alias pmd='sudo pacman -Rs'
alias pmg='sudo pacman -Qe | grep'
alias pms='sudo pacman -S'
alias pmu='sudo pacman -Syu'

## git
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gbdd='git branch -D'
alias gbm='git branch -m'
alias gbv='git branch -vv'
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gcl='git clone'
alias gclr='git clone --recursive'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gdn='git diff --name-only'
alias gds='git diff --stat'
alias gla='git log --name-status --abbrev-commit --pretty=oneline -5'
alias glaa='git log --name-status --abbrev-commit --pretty=oneline'
alias glv='git log --stat --abbrev-commit --pretty=oneline -5'
alias glvv='git log --stat --abbrev-commit --pretty=oneline'
alias glb='git log --oneline --decorate --graph -10 --all'
alias glbb='git log --oneline --decorate --graph --all'
alias gls='git ls-tree --name-only master'
alias glsr='git ls-files'
alias gm='git merge'
alias go='git checkout'
alias gob='git checkout -b'
alias gr='git remote'
alias grs='git remote show'
alias gru="echo 'git remote set-url origin git@'"
alias grv='git remote -v'
alias gr='git remote'
alias gs='git status'
alias gss='git status -s'
alias gun='git reset HEAD'
# the below command needs double checking!
alias gx='git rm -r --cached'
alias gxx='git rm -r'
alias gzh='git reset HEAD~'
alias gza='git commit --amend'
alias grp="gss; echo ''; gbv; echo ''; glb"

### Private Dotfiles (git)
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
alias dga='dot add'
alias dgb='dot branch'
alias dgbd='dot branch -d'
alias dgbdd='dot branch -D'
alias dgbm='dot branch -m'
alias dgbv='dot branch -vv'
alias dgc='dot commit -m'
alias dgca='dot commit -a -m'
alias dgcl='dot clone'
alias gclr='dot clone --recursive'
alias dgd='dot diff'
alias dgdc='dot diff --cached'
alias dgdh='dot diff HEAD'
alias dgdn='dot diff --name-only'
alias dgds='dot diff --stat'
alias dgla='dot log --name-status --abbrev-commit --pretty=oneline -5'
alias dglaa='dot log --name-status --abbrev-commit --pretty=oneline'
alias dglv='dot log --stat --abbrev-commit --pretty=oneline -5'
alias dglvv='dot log --stat --abbrev-commit --pretty=oneline'
alias dglb='dot log --oneline --decorate --graph -10 --all'
alias dglbb='dot log --oneline --decorate --graph --all'
alias dgls='dot ls-tree --name-only master'
alias dglsr='dot ls-files'
alias dgm='dot merge'
alias dgo='dot checkout'
alias dgob='dot checkout -b'
alias dgr='dot remote'
alias dgrs='dot remote show'
alias dgru="echo 'dot remote set-url origin git@'"
alias dgrv='dot remote -v'
alias dgr='dot remote'
alias dgs='dot status'
alias dgss='dot status -s'
alias dgun='dot reset HEAD'
# the below command needs double checking!
alias dgx='dot rm -r --cached'
alias dgxx='dot rm -r'
alias dgzh='dot reset HEAD~'
alias dgza='dot commit --amend'
alias dgrp="dgss; echo ''; dgbv; echo ''; dglb"
#alias dgrp="dot status -s; echo ''; dot branch -vv; echo ''; dot log --oneline --decorate --graph -10 --all"

### Public Dotfiles (git)
alias pubdot='/usr/bin/git --git-dir=$HOME/.public-dots/ --work-tree=$HOME'
alias pga='pubdot add'
alias pgb='pubdot branch'
alias pgbd='pubdot branch -d'
alias pgbdd='pubdot branch -D'
alias pgbm='pubdot branch -m'
alias pgbv='pubdot branch -vv'
alias pgc='pubdot commit -m'
alias pgca='pubdot commit -a -m'
alias pgcl='pubdot clone'
alias pgclr='pubdot clone --recursive'
alias pgd='pubdot diff'
alias pgdc='pubdot diff --cached'
alias pgdh='pubdot diff HEAD'
alias pgdn='pubdot diff --name-only'
alias pgds='pubdot diff --stat'
alias pgla='pubdot log --name-status --abbrev-commit --pretty=oneline -5'
alias pglaa='pubdot log --name-status --abbrev-commit --pretty=oneline'
alias pglv='pubdot log --stat --abbrev-commit --pretty=oneline -5'
alias pglvv='pubdot log --stat --abbrev-commit --pretty=oneline'
alias pglb='pubdot log --oneline --decorate --graph -10 --all'
alias pglbb='pubdot log --oneline --decorate --graph --all'
alias pgls='pubdot ls-tree --name-only master'
alias pglsr='pubdot ls-files'
alias pgm='pubdot merge'
alias pgo='pubdot checkout'
alias pgob='pubdot checkout -b'
alias pgr='pubdot remote'
alias pgrs='pubdot remote show'
alias pgru="echo 'pubdot remote set-url origin git@'"
alias pgrv='pubdot remote -v'
alias pgr='pubdot remote'
alias pgs='pubdot status'
alias pgss='pubdot status -s'
alias pgun='pubdot reset HEAD'
# the pbelow command needs double checking!
alias pgx='pubdot rm -r --cached'
alias pgxx='pubdot rm -r'
alias pgzh='pubdot reset HEAD~'
alias pgza='pubdot commit --amend'
alias pgrp="pgss; echo ''; pgbv; echo ''; pglb"
#alias pgrp="public-dots status -s; echo ''; public-dots branch -vv; echo ''; public-dots log --oneline --decorate --graph -10 --all"

## Custom
alias ali='vim /home/howlin/.bash_aliases'
alias gali='alias | grep'
alias hcat='cat | head'
alias tcat='cat | tail'
alias vu='chromium'
alias wcl='wc -l'
alias wcc='wc -c'
alias wcb='wc -b'
alias xc='xclip -sel c'
alias xcv='xclip -sel clip <'
alias xcp='xclip -o >'
alias v='vim'
alias hx="history 1 | cut -c 8- | xclip -sel c"
alias hxv="history 5 | cut -c 8- | xclip -sel c"
alias hxvv="history 10 | cut -c 8- | xclip -sel c"
#alias hcat='cat \!:1 | head'

## Bookmarks
## TODO: turn this into proper bash program
alias b1='cd ~/src/jnl/3-jobs-doing/blog/'
alias b2='cd ~/src/myhyde/'
alias b3='cd ~/sandbox/howlin-io/'
alias b4='cd ~/sandbox/howlin-io/'
alias b5='cd ~/sandbox/howlin-io/'
alias b6='cd ~/sandbox/howlin-io/'
alias b7='cd ~/sandbox/howlin-io/'
alias b8='cd ~/sandbox/howlin-io/'
alias b9='cd ~/sandbox/howlin-io/'
alias b0='cd ~/src/jnl/levelup/'

## Unsorted
alias mutt='cd ~/Mail/attachments && mutt'
alias todo='vim ~/corkboard/todo.md'
alias life='vim ~/corkboard/life.md'
alias l='less'
alias g='grep -i'
alias diff='colordiff'
alias cheat='vim ~/corkboard/cheatsheet.md'
alias hacks='vim ~/corkboard/hacks.md'
alias mark='vim ~/.cdg_paths'
alias amark='pwd >> ~/.cdg_paths'
alias ashf='vim ~/.bashrc.d/functions.sh'
alias exe='chmod +x'

## Maybe
# alias irc=''
# docker
# grep
# find
# ps
# rsync
# tree
# src/* (npl, manual...)
