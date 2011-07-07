" cmdline-insertdatetime..vim:
" Load Once:
if &cp || exists("g:loaded_cmdline_insertdatetime")
    finish
endif
let g:loaded_cmdline_insertdatetime = 1
let s:keepcpo = &cpo
set cpo&vim
" ---------------------------------------------------------------------

cnoremap <expr> <C-X>dt strftime('%Y%m%d')
cnoremap <expr> <C-X>ts strftime('%Y%m%d%H%M')

" ---------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo

