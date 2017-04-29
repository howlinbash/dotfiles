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
