#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# fim - Open selected file in Vim
fim() {
  local file
  file=$(fzf --query="$1") && vim "$file"
}

# fh - repeat history
fh() {
  eval $(history | fzf +s | sed 's/ *[0-9]* *//')
}

# fkil - kill process
fkil() {
  ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9}
}

milk() {
  local site
  local www
  www='/home/howlin/job/meetups/smr/links/www/'
  site=$(find "$www" -maxdepth 1 -type f 2> /dev/null | fzf +m -i --with-nth=9.. --delimiter="\/") && firefox "$site"
}

hel() {
  local site
  local www
  www='/home/howlin/helsinki/links/'
  site=$(find "$www" -maxdepth 1 -type f 2> /dev/null | fzf +m -i --with-nth=6.. --delimiter="\/") && firefox "$site"
}

milky() {
  local csv
  csv='/home/howlin/job/meetups/smr/smr.csv'
  cat $csv | column -t -s ',' -H 1 | fzf
}

