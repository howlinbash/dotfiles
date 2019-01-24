
" Package manager
call plug#begin('~/.vim/plugged')
" Plug 'SirVer/ultisnips'
" Plug 'epilande/vim-es2015-snippets'
" Plug 'epilande/vim-react-snippets'
" Plug 'neomake/neomake'
Plug 'jeetsukumaran/vim-indentwise'
" Plug 'pseewald/vim-anyfold'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'tommcdo/vim-lion'
Plug 'justinmk/vim-sneak'
Plug 'flowtype/vim-flow'
" Plug 'valloric/MatchTagAlways'
Plug 'prettier/prettier'
Plug 'sbdchd/neoformat'
" Plug 'ajh17/VimCompletesMe'
" Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript'
" Plug 'Shougo/deoplete.nvim'
" Plug 'scrooloose/nerdtree'
call plug#end()

"" plugin specific settings

" vim-javascript settings
" let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" MatchTagAlways settings
nnoremap <leader>% :MtaJumpToOtherTag<cr>
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \}

" " vim-anyfold
" let anyfold_activate=1
" set foldlevel=10

" " NerdTree
" autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd v

" VimWiki
" let g:vimwiki_list = [{'path': '~/my_site/',
                     " \ 'syntax': 'markdown', 'ext': '.md'}]
let wiki_1 = {}
let wiki_1.path = '~/src/manual/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.nested_syntaxes = {'javascript': 'javascript', 
                            \ 'jsx': 'jsx', 
                            \ 'python': 'python', 
                            \ 'bash': 'bash'}
" let wiki_1.html_template = '~/public_html/template.tpl'
" let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let wiki_2 = {}
let wiki_2.path = '~/books/wiki/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]
" prevent vimwiki from changing filetype of non-vimwiki markdown files
let g:vimwiki_global_ext = 0
