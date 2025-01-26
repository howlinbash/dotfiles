

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
alias b='cd -'
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
alias share='cd /mnt/shared'

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
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcam='git commit -a -m'
alias gcl='git clone'
# alias gclh='bash -xc '\''git clone gh:$0'\'''
alias gclr='git clone --recursive'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gdn='git diff --name-only'
alias gds='git diff --stat'
alias glnap='git log --name-status --abbrev-commit --pretty=oneline -5'
alias glnapp='git log --name-status --abbrev-commit --pretty=oneline'
alias glsap='git log --stat --abbrev-commit --pretty=oneline -5'
alias glsapp='git log --stat --abbrev-commit --pretty=oneline'
alias glgoa='git log --graph --oneline --all -10'
alias glgoaa='git log --graph --oneline --all'
alias gls='git ls-tree --name-only master'
alias glsr='git ls-files'
alias gm='git merge'
alias gmf='git merge --no-ff --no-edit'
alias go='git checkout'
alias gob='git checkout -b'
alias gr='git remote'
alias grs='git remote show'
alias gru='echo "git remote set-url origin git@"'
alias grv='git remote -v'
alias gr='git reset'
alias grh='git reset HEAD~'
alias gs='git status'
alias gss='git status -s'
alias gun='git reset HEAD'
# the below command needs double checking!
alias gx='git rm -r --cached'
alias gxx='git rm -r'
alias gza='git commit --amend'
alias grp='gss; echo ''; gbv; echo ''; glb'

## Custom
alias ali='$EDITOR ~/.bash_aliases'
alias gali='alias | grep'
alias wcl='wc -l'
alias wcc='wc -c'
alias wcb='wc -b'
alias xc='xclip -sel c'
alias xcv='xclip -sel clip <'
alias xcp='xclip -o >'
alias v='$EDITOR'
alias hx='history 2 | cut -c 8- | head -n -1 | xclip -sel c'
alias hxv='history 6 | cut -c 8- | head -n -1 | xclip -sel c'
alias hxvv='history 11 | cut -c 8- | head -n -1 | xclip -sel c'

## Unsorted
alias l='less'
alias g='grep -i'
alias diff='colordiff'
alias exe='chmod +x'
alias gpu='optirun -b none nvidia-settings -c :8 &'
alias shot='gnome-screenshot -a'
alias tube='cd ~/Downloads/mps && youtube-dl -f m4a'
alias dirs='dirs -v'
alias pdf='evince'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rc='recode UTF-8'
alias rct='file -bi'
alias appw='calcurse -r7 --format-apt="%S-%E\t%m\n"'
alias appf='calcurse -r14 --format-apt="%S-%E\t%m\n"'
alias appm='calcurse -r31 --format-apt="%S-%E\t%m\n"'
alias tars='tar -zcvf'
alias i3c='$EDITOR ~/.config/i3/config'
alias yt='youtube-dl'
alias vimdiff='nvim -d'

## Todos
alias todos="cat $HOME/.todo/boards/* | ag '^\d' | sort"
alias pivis="cat $HOME/pivigo/todo/boards/* | ag '^\d' | sort"

alias pm='sudo pacman'
alias listapps='comm -23 <(pacman -Qqt | sort) <(pacman -Qqg base | sort)'
alias pdfjoin="pdfjam --fitpaper true --rotateoversize true --suffix joined "
alias run="npx esrun"
alias secret="openssl rand -base64 32"
