" Python {{{

let g:python_host_prog='/usr/local/bin/python3'
let g:python3_host_prog='/usr/local/bin/python3'
let g:pymode_python = '/usr/local/bin/python3'

" Indenting (local to buffer, insert mode)
au BufRead *.py
    \ set tabstop=4      | " Defines number of spaces in a tab in a file
    \ set softtabstop=4  | " Defines number of spaces in a tab while editing
    \ set shiftwidth=4   | " Number of spaces to use for each step of autoindent
    \ set textwidth=79   | " Maximum length of text being inserted
    \ set expandtab      | " Use appropriate number of spaces instead of a true tab
    \ set autoindent     | " Copy indent from current line to next line
    \ set fileformat=unix |
	\ set colorcolumn=79 |
	\ highlight ColorColumn ctermbg=darkgrey

"}}}
" C {{{

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

au BufRead *.c
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set noexpandtab |
		\ set colorcolumn=110 |
		\ highlight ColorColumn ctermbg=darkgrey

set makeprg=make\ -C\ ../build\ -j9

" }}}
" R {{{

let R_app = "radian"
let R_cmd = "R"
let R_hl_term = 0
let R_args = []  " if you had set any
let R_bracketed_paste = 1

" }}}
" Snippets {{{

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"

" }}}
" vim:foldmethod=marker:foldlevel=0
