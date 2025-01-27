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
