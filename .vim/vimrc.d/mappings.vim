


let mapleader = ","


"" BASICS

map <Leader>w <esc>:w<CR>|         " write
map <Leader>q <esc>:q<CR>|         " quit
map <Leader>qq <esc>:q!<CR>|       " force quit
map <Leader>wq <esc>:wq<CR>|       " write and quit
map <Leader>wqq <esc>:wq!<CR>|     " force write and quit

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


"" FORMATTING

map <Leader>ls A<CR>- |                           " append list sibling
map <Leader>lc A<CR><tab>- |                      " append list child
map <Leader>lp A<CR><backspace>- |                " append list parent
nnoremap <leader>c A <esc>30i <esc>r#31<bar>dw$|  " append # on 31|
nnoremap <leader>cc A <esc>10i <esc>r#$|          " append # 10| from line end


"" SHORTCUTS

map <Leader>e :edit|                    " edit
map <Leader>bu :buffers<CR>|            " show buffers
map <Leader>bd :b#<bar>bd#<CR>|         " delete buffer
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
map! <Leader>wrap ^[:call ToggleWrap()<CR>|       " unwrap text
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


"" RANGER

map <leader>rr :Ranger<CR>
map <leader>rv :call RangerVSplit()<CR>
map <leader>rh :call RangerSplit()<CR>
