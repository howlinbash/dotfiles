set tags=/home/Cybs/vimTags/Fulltags
syntax on
set number
set background=dark
set backspace=indent,eol,start
set nocompatible

set incsearch " move while searching

set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines
                 " betweens rows
"set list " we do what to show tabs, to ensure we get them
          " out of my files
"set listchars=tab:>-,trail:- " show tabs and trailing 
set matchtime=5 " how many tenths of a second to blink
                 " matching brackets for
set novisualbell " don't blink
set numberwidth=5 " We are good up to 99999 lines
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set t_Co=256

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
filetype plugin indent on "customise by filetype in .vim/after/ftplugin
"set sw=2
"set smartindent

"colo Morning
colo Tomorrow-Night
au BufNewFile,BufRead *.cpp set syntax=cpp11
nmap <CR> o<Esc>
"nmap <CR><CR> O<Esc>

"custom syntax highlight toggle. 
"call SyntaxRange#Include('@begin=c@', '@end=c@', 'c', 'NonText')
call SyntaxRange#Include('@begin=js@', '@end=js@', 'javascript', 'NonText')

"let &t_8f="\e[38;2;%ld;%ld;%ldm"
"let &t_8b="\e[48;2;%ld;%ld;%ldm"
"set guicolors

nmap ,d :b#<bar>bd#<CR>

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

"Package manager https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" "syntastic setup
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" "jscs config
" set shell=bash
" call pathogen#infect()
" let g:syntastic_javascript_checkers=['jscs']

set splitright
set relativenumber
command! MakeTags !ctags -R .

" hello
