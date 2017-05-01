syn match ioSocket 'socket.io:socket'
syn match ioClient 'socket.io:client'
syn match ioServer 'socket.io:server'
syn match ioNamespace 'socket.io:namespace'
syn match ioParser 'socket.io-parser'
syn match ms1digit '+\dms'
syn match ms2digits '+\d\dms'
syn match ms3digits '+\d\d\dms'
syn match title "\v#.*$"
syn match user 'profjones'
syn match wd "\V~\.\*]"
syn match plusMinus '±'
syn match cross '✗'
syn match threeOhFor '304'
hi        ioSocket ctermfg=blue
hi        ioClient ctermfg=green
hi        ioServer ctermfg=cyan
hi        ioNamespace ctermfg=yellow
hi        ioParser ctermfg=cyan
hi        ms1digit ctermfg=blue
hi        ms2digits ctermfg=red
hi        ms3digits ctermfg=yellow
hi        title ctermfg=darkgrey
hi        user ctermfg=green
hi        wd ctermfg=cyan
hi        plusMinus ctermfg=green
hi        cross ctermfg=red
hi        threeOhFor ctermfg=cyan
