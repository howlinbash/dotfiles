

# MY DOTFILES

alias vim='nvim'

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
alias box='cd ~/sandbox'
alias cork='cd ~/corkboard'
alias dl='cd ~/Downloads'
alias play='cd ~/cupboard/sandpit'
alias src='cd ~/src'
alias tmp='cd ~/tmp'
alias usb='cd /media'
alias baby='cd ~/life/src/baby'

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
alias pmgg='sudo pacman -Qs'
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
# alias gclh='bash -xc '\''git clone gh:$0'\'''
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
alias gmf='git merge --no-ff'
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
alias dgmf='dot merge --no-ff'
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
alias dgig="vim ~/.dot/info/exclude"

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
alias pgmf='pubdot merge --no-ff'
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
alias pgig="vim ~/.public-dots/info/exclude"

## Custom
alias ali='vim ~/.bash_aliases'
alias gali='alias | grep'
alias vu='chromium'
alias wcl='wc -l'
alias wcc='wc -c'
alias wcb='wc -b'
alias xc='xclip -sel c'
alias xcv='xclip -sel clip <'
alias xcp='xclip -o >'
alias v='vim'
alias hx="history 2 | cut -c 8- | head -n -1 | xclip -sel c"
alias hxv="history 6 | cut -c 8- | head -n -1 | xclip -sel c"
alias hxvv="history 11 | cut -c 8- | head -n -1 | xclip -sel c"

## Notes
alias fs='cat ~/.notes/my-fs.md'
alias cheat='vim ~/.notes/cheatsheet.md'
alias hacks='vim ~/.notes/hacks.md'
alias todo='vim ~/.notes/todo.md'
alias life='vim ~/.notes/life.md'
alias zen='vim ~/.notes/zen.md'

## Unsorted
alias mutt='cd ~/mail/attachments && mutt'
alias l='less'
alias g='grep -i'
alias diff='colordiff'
alias mark='vim ~/.cdg_paths'
alias amark='pwd >> ~/.cdg_paths'
alias ashf='vim ~/.bashrc.d/functions.sh'
alias exe='chmod +x'
alias scrap='vim ~/tmp/scrap.md'
alias gpu='optirun -b none nvidia-settings -c :8 &'
alias shot='gnome-screenshot -a'
alias tube='cd ~/Downloads/mps && youtube-dl -f m4a'
alias dirs='dirs -v'
alias bbcr='cd ~/Downloads/mps && get_iplayer --type=radio'
alias pdf='evince'
alias bright='sudo tee /sys/class/backlight/intel_backlight/brightness <<< '
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rc='recode UTF-8'
alias rct='file -bi'
alias pll='/home/howlin/.gem/ruby/2.4.0/bin/ppl'
alias wl='cat >> ~/.notes/worklog'
alias vpn='wg-quick@wg0-client.service'
alias clock='tty-clock'
alias diary='vim ~/life/diary.md'
alias job='vim ~/job/notes/job_hunt_notes.md'
alias disk='udiskie -2 &'

## Maybe
# alias irc=''
# docker
# grep
# find
# ps
# rsync
# tree
# src/* (npl, manual...)
