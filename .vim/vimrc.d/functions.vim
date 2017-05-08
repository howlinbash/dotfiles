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
