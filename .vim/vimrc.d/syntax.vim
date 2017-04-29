
" Custom Syntax
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set shell=bash

" linters
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_checkers+=['jscs']
let g:syntastic_python_checkers=['pylint']
