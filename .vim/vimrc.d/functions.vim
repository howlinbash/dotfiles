function ToggleWrap()
  if (&wrap == 0)
    set nowrap
    set nolinebreak
    set list
    "set textwidth=0
    "set wrapmargin=0
  else
    set wrap
    set linebreak
    set nolist
    "set textwidth=0
    "set wrapmargin=0
  endif
endfunction

" fold markdown files by heading
function MarkdownLevel()
  let h = matchstr(getline(v:lnum), '^#\+')

  if empty(h)
    return "="
  elseif len(h) > 1
    let f = len(h) - 1
    return ">" . f
  else
    return "="
  endif
endfunction

" Toggle line numbers
function ToggleNumbers()
  if (&number == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunction

" Toggle Text Width line breaks
function ToggleTextWidth()
  if (&tw == 0)
    set tw=80
  else
    set tw=0
  endif
endfunction

"" RANGER

" RangerVSplit
function RangerVSplit()
  execute 'vsplit ./'
  execute 'Ranger'
endfunction

" RangerSplit
function RangerSplit()
  execute 'split ./'
  execute 'Ranger'
endfunction

" Toggle Spell checker
function ToggleSpell()
  if (&spell == 0)
    set spell spelllang=en_gb
  else
    set nospell
  endif
endfunction

" Toggle Python Folding
function ToggleFold()
  if (&foldmethod == 'indent')
    setlocal foldmethod=manual
    setlocal foldopen
    setlocal nofoldenable
  else
    setlocal foldenable
    setlocal foldmethod=indent
    setlocal foldclose=all
  endif
endfunction

" Markdown Underline
function! UnderlineHeading(level)
  if a:level == 1
    normal! yypVr=
  elseif a:level == 2
    normal! yypVr-
  else
    normal! I###<space>
  endif
endfunction

" Split screen vertically or horizontally based on current window width
function! GetSplitDirection()
    if winwidth(0) < 120
        return ''
    else
        return 'v'
    endif
endfunction

" Dynamic Split
function! DynamicSplit(path)
    let axis = GetSplitDirection()
    exec ':'.axis.'sp ' . a:path
endfunction
