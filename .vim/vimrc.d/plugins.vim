
" Package manager
call plug#begin('~/.vim/plugged')
" Plug 'SirVer/ultisnips'
" Plug 'epilande/vim-es2015-snippets'
" Plug 'epilande/vim-react-snippets'
" Plug 'neomake/neomake'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tommcdo/vim-lion'
Plug 'justinmk/vim-sneak'
Plug 'flowtype/vim-flow'
" Plug 'valloric/MatchTagAlways'
Plug 'prettier/prettier'
Plug 'sbdchd/neoformat'
Plug 'ajh17/VimCompletesMe'
Plug 'kien/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
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
