


let mapleader = "\<space>"
nnoremap <Space> <Nop>


"" BASICS

map <Leader>w <esc>:w<CR>|         " write
map <Leader>q <esc>:q<CR>|         " quit
map <Leader>wq <esc>:wq<CR>|       " write and quit

"" VIEWS

map <Leader>sv :vsplit |           " split vertically
map <Leader>sh :split |            " split horizontally
map <Leader>fh :10winc <<CR>|      " pull split left
map <Leader>fj :10winc +<CR>|      " push split down
map <Leader>fk :10winc -<CR>|      " pull split up
map <Leader>fl :10winc ><CR>|      " push split right
map <Leader>fs :tab split<CR>|     " go fullscreen (open in new tab)
map <Leader>fsb :tabc<CR>|         " close fullscreen (close tab)
map <Leader>ww <C-w>w|             " move to next window
map <Leader>wh <C-w>h|             " move to left window
map <Leader>wj <C-w>j|             " move to window below
map <Leader>wk <C-w>k|             " move to window above
map <Leader>wl <C-w>l|             " move to right window
map <Leader>wr <C-w>r|             " rotate windows
map <Leader>wt <C-w>t|             " move to first window
map <Leader>wb <C-w>b|             " move to last window
map <Leader>fm :Vexplore<CR>|      " Open netrw file manager


"" FORMATTING

map <Leader>ls A<CR>- |                           " append list sibling
map <Leader>lc A<CR><tab>- |                      " append list child
map <Leader>lp A<CR><backspace>- |                " append list parent
nnoremap <leader>c A <esc>30i <esc>r#31<bar>dw$|  " append # on 31|
nnoremap <leader>cc A <esc>10i <esc>r#$|          " append # 10| from line end
nnoremap <leader>mu1 :call UnderlineHeading(1)<CR>|    " Underline current line
nnoremap <leader>mu2 :call UnderlineHeading(2)<CR>|    " Underline current line
nnoremap <leader>mu3 :call UnderlineHeading(3)<CR>|    " Underline current line


"" SHORTCUTS

map <Leader>e :edit|                    " edit
map <Leader>sp :set paste<CR><esc>|     " set paste
map <Leader>80 :set colorcolumn=80<CR>| " draw column on 80|
map <Leader>08 :set colorcolumn&<CR>|   " remove colum on 80|


"" VISUAL

map <Leader>v} <C-V>}k:norm |           " visually block paragraph up for command
map <Leader>v{ <C-V>{j:norm |           " visually block paragraph down for command
map <Leader>v}. <C-V>}k:norm .<CR>|     " visually block paragraph up for command
map <Leader>v{. <C-V>{j:norm .<CR>|     " visually block paragraph up for command
map <Leader>v}@ <C-V>}k:norm @@<CR>|    " visually block paragraph down for command
map <Leader>v{@ <C-V>{j:norm @@<CR>|    " visually block paragraph down for command


"" FUNCTIONS

map <Leader>wrap :call ToggleWrap()<CR>|          " wrap text
" map! <Leader>wrap ^[:call ToggleWrap()<CR>|       " unwrap text
set listchars=tab:>-,trail:-                      " mark whitespace
nnoremap <Leader>wsv :set list!<CR>|              " toggle whitespace markings
map <Leader>wsr :%s/\s\+$//<CR>|                  " remove trailing whitespace
map <CR> o<Esc>|                                  " Intuitive enter key
map <Leader>o O<Esc>|                             " Push current line down 1
map <Leader>do :setlocal foldmethod=indent<CR>|   " todo folding
map <Leader>date :r! date -I<CR>kJA|              " append date to line
map <Leader>syn :SyntasticCheck<CR>|              " turn syntastic checker on
map <Leader>spn :call ToggleNumbers()<CR>|        " Toggle line numbers
map <Leader>tw :call ToggleTextWidth()<CR>|       " Toggle Hard break text on column 80
map <Leader>spel :call ToggleSpell()<CR>|         " Toggle Spell Checker
map <Leader>fold :call ToggleFold()<CR>|          " Toggle folding for python


"" BUFFERS

map <Leader>bu :buffers<CR>|            " show buffers
map <Leader>bd :b#<bar>bd#<CR>|         " delete buffer
map <Leader>bp :bp<CR>|                 " previous buffer
map <Leader>bn :bn<CR>|                 " next buffer


"" LOG

map <Leader>log :vsp ~/log/`date -I`.md<CR>|      " Open today's log in current session
map <Leader>hlog :sp ~/log/`date -I`.md<CR>|      " H-Open today's log in current session


"" RANGER

map <leader>rr :Ranger<CR>
map <leader>rv :call RangerVSplit()<CR>
map <leader>rh :call RangerSplit()<CR>


"" NVIM

tnoremap <C-j><C-j> <C-\><C-n>               " exit terminal
map <leader>te :vsp term://bash<CR>|         " open terminal in vsplit
map <leader>hte :sp term://bash<CR>|         " open terminal in split


"" PLUGINS

" nmap <Leader>k <Plug>VimwikiIndex
nmap <Leader>kt <Plug>VimwikiTabIndex
nmap <Leader>kv <Plug>VimwikiVSplitLink
nmap <Leader>kh <Plug>VimwikiSplitLink
nmap <Leader>fz :FZF<CR>
" map <Leader>fm :NERDTreeToggle<CR>:normal O\<CR>| " Open NerdTree expanded
" map <Leader>fm :NERDTreeToggle<CR>:normal O\<CR>| " Open NerdTree expanded
" let g:user_emmet_leader_key='<Leader>xp'
nmap <Leader>xp <C-Y>,


"" UNSORTED
nmap <Leader>how :vsp ~/src/manual/index.md<CR>| " Open The Howlin Manual
nmap <Leader>bash :norm ccFrom: Howlin Bash <howlinbash@posteo.de><CR>|



"" TODOS
nmap <Leader>todo :call DynamicSplit('/home/howlin/.todo/boards/index.todo')<CR>
nmap <Leader>pivi :call DynamicSplit('/home/howlin/pivigo/todo/boards/index.todo')<CR>
nmap <Leader>bug :call DynamicSplit('/home/howlin/.todo/boards/bugs.todo')<CR>
nmap <Leader>fart :call DynamicSplit('/home/howlin/.todo/boards/farts.todo')<CR>
nmap <Leader>mlk :call DynamicSplit('/home/howlin/.todo/boards/milk.todo')<CR>
nmap <Leader>social :call DynamicSplit('/home/howlin/.todo/boards/social.todo')<CR>
nmap <Leader>flow :call DynamicSplit('/home/howlin/.todo/boards/flow.todo')<CR>
nmap <Leader>dream :call DynamicSplit('/home/howlin/.todo/boards/dream.todo')<CR>
nmap <Leader>live :call DynamicSplit('/home/howlin/.todo/boards/live.todo')<CR>
nmap <Leader>solve :call DynamicSplit('/home/howlin/.todo/boards/solve.todo')<CR>
nmap <Leader>hunt :call DynamicSplit('/home/howlin/.todo/boards/hunt.todo')<CR>
nmap <Leader>blog :call DynamicSplit('/home/howlin/.todo/boards/blog.todo')<CR>
nmap <Leader>mycv :call DynamicSplit('/home/howlin/.todo/boards/mycv.todo')<CR>
nmap <Leader>aim :call DynamicSplit('/home/howlin/.todo/boards/aim.todo')<CR>
nmap <Leader>low :call DynamicSplit('/home/howlin/.todo/boards/low.todo')<CR>
nmap <Leader>learn :call DynamicSplit('/home/howlin/.todo/boards/learn.todo')<CR>
nmap <Leader>home :call DynamicSplit('/home/howlin/.todo/boards/home.todo')<CR>
nmap <Leader>baby :call DynamicSplit('/home/howlin/.todo/boards/baby.todo')<CR>
nmap <Leader>reetta :call DynamicSplit('/home/howlin/.todo/boards/reetta.todo')<CR>
nmap <Leader>today :call DynamicSplit('/home/howlin/.todo/boards/today.todo')<CR>
nmap <Leader>ktv :call DynamicSplit('/home/howlin/.todo/boards/ktv.todo')<CR>
nmap <Leader>sxsj :call DynamicSplit('/home/howlin/.todo/boards/sxsj.todo')<CR>
nmap <Leader>meet :call DynamicSplit('/home/howlin/.todo/boards/meetups.todo')<CR>
nmap <Leader>japp :call DynamicSplit('/home/howlin/.todo/boards/applications.todo')<CR>
nmap <Leader>shop :call DynamicSplit('/home/howlin/.todo/boards/shop.todo')<CR>
nmap <Leader>worry :call DynamicSplit('/home/howlin/.todo/boards/worries.todo')<CR>
nmap <Leader>proud :call DynamicSplit('/home/howlin/.todo/boards/proud.todo')<CR>
nmap <Leader>cook :call DynamicSplit('/home/howlin/.todo/boards/cook.todo')<CR>
nmap <Leader>kan :call DynamicSplit('/home/howlin/.todo/boards/kanban.todo')<CR>
nmap <Leader>sched :call DynamicSplit('/home/howlin/.todo/boards/schedule.todo')<CR>
nmap <Leader>review :call DynamicSplit('/home/howlin/.todo/boards/review.todo')<CR>
nmap <Leader>pivigo :call DynamicSplit('/home/howlin/.todo/boards/pivigo.todo')<CR>
