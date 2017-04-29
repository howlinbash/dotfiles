set nocompatible              " A possibly redundant safety measure 

set t_Co=256
set background=dark
colorscheme Tomorrow-Night
syntax on
set number                    " line numbers on 
set numberwidth=5             " We are good up to 99999 lines
set laststatus=2              " always show the status line
set statusline=%F             " Full path & filename
set statusline+=%m            " FLAG: modified [+]; not 'modifiable' [-].
set statusline+=%r            " FLAG: readonly
set statusline+=%h            " FLAG: help buffer
set statusline+=%w            " FLAG: preview window
set statusline+=%=            " Align remaining options to the right
set statusline+=\ \ \ \       " central divider
set statusline+=[%{&ff}]      " file format (mac, dos, unix)
set statusline+=%y            " filetype 
set statusline+=[%L]          " file line count
set statusline+=[%p%%]        " percentage through file
set statusline+=[%04l,%04v]   " coordinates - currrent line, column (ruler)
set showcmd                   " show the command being typed
set report=0                  " tell us when anything is changed via :...

set lazyredraw                " redraw screen on macro completion (speed setting)
set backspace=indent,eol,start     " Make backspace behave as assumed
"set novisualbell              " don't blink cursor
set splitright                " open vsplit to right
set splitbelow                " open hsplit below
set relativenumber            " relative line numbers on 
set incsearch                 " search whilst typing query
set showmatch                 " show matching brackets
set matchtime=3               " blink between matching braces (tenths/sec)
set scrolloff=2               " Keep 2 lines (top/bottom) for scope
"set sidescrolloff=10          " Keep 5 lines at the size (DKWTD!)

filetype plugin indent on     " customise by filetype in .vim/after/ftplugin
set expandtab                 " Insert mode: Tab key inserts (softtabstap) spaces
set softtabstop=4             " Insert mode: how many spaces Tab represents
set shiftwidth=4              " How many columns >> & << move
set tabstop=4                 " How many columns a tab counts for

"Package manager https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Enable ctags
command! MakeTags !ctags -R .
set tags=./tags,tags;$HOME
