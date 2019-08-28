" General {{{

" Get Path of Directory holding Buffer
command Path execute "echo expand('%:p:h')"

" }}}
" WordProcessor {{{

func! WordProcessor()
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()

" }}} 
" Run code {{{

func! RunCode()
	if &filetype == 'python'
		execute '!python3 %'
	else
		execute '!'. &filetype. ' %'
	endif
endfunc

" }}}
" Make JSON Array {{{

com! JSONify execute '%/s/$/,/g | '

"}}}
" vim:foldmethod=marker:foldlevel=0
