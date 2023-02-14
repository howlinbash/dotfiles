
mcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

# Setup cdg function
# ------------------
unalias cdg 2> /dev/null
cdg() {
   local dest_dir=$(cdscuts_glob_echo | fzf )
   if [[ $dest_dir != '' ]]; then
      cd "$dest_dir"
   fi
}
export -f cdg > /dev/null

# Create log book
function log() {
  today=$(date '+%Y-%m-%d')
  logs="/home/howlin/log/"
  new_log="${logs}${today}.md"
  last_log="${logs}`ls --group-directories-first ${logs} | tail -1`"
  if [ ! -f $new_log ]; then
      cat $last_log > $new_log
      sed -i "1c${today}" $new_log
      sed -i "2c\=\=\=\=\=\=\=\=\=\=" $new_log
  fi
  vim $new_log
}

function fj() {
    sed -e "s/\$1/$1/" smr.md | head -c -1 | xclip -sel c 
}

function fjfjf() {
    cwd=$(pwd)
    cd /home/howlin/src/howlinbash
	bundle exec jekyll build
	docker stop dev-server
	docker run -d --rm --name dev-server -p 80:80 -v "$(pwd)/web:/usr/share/nginx/html" howlinbash/dev
	cd $pwd
}
