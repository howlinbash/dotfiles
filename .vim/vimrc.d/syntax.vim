
" Custom Syntax
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
"au BufNewFile,BufRead *.ts setlocal filetype=typescript

" " syntastic setup
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" syntastic settings
" The first setting syntastic_mode_map is my favourite setting
" It keeps syntastic off by default to be enabled by the Toggle :-)
" let g:syntastic_mode_map = { 'mode': 'passive' }
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntasticToggleMode = 0
" set shell=bash

" linters
" let g:syntastic_javascript_checkers=['jshint']
"let g:syntastic_typescript_checkers=['tslint']
" let g:syntastic_javascript_checkers=['eslint']
"let g:syntastic_debug=3

"autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jshint']

"let g:syntastic_javascript_checkers+=['jscs']
" let g:syntastic_python_checkers=['pylint']

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
