" Leader mapping
let mapleader = "," " Leader is ','
let maplocaleader = ";"

" General Mapping {{{

" Exiting terminal mode
tnoremap <Esc> <C-\><C-n>
"
" Move per line in screen
map j gj
map k gk

" Folding
noremap  <Space> za
vnoremap <Space> zf
nnoremap <Space> za
onoremap <Space> za

" Stop Highlighitng
nnoremap <leader>noh :noh<CR>

" Save session (open session by nvim -S)
" nnoremap <leader>s :mksession<CR>

" Easy navigation
noremap <leader>ag <esc>:Ag<space>
noremap <leader>aw <esc>:Ag <c-r><c-w>
noremap <leader>ah <esc>:Ag<up><cr>

" Save MarkUp file to PDF
nnoremap <leader>law :!pandoc % -o %:t:r.pdf -V geometry:margin=1in<C-R>

" Vim tabs
nnoremap <leader>tn :tabnew<Space>
nnoremap <leader>tf :tabfirst<CR>
nnoremap <leader>pre :tabprevious<CR>
nnoremap <leader>nex :tabnext<CR>
nnoremap <leader>tb :tablast<CR>

" Move Split Screen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Split to Terminal
nnoremap <leader>st :split \| terminal<CR>

" Run Python
nnoremap <leader>rc :call RunCode<CR>
nnoremap <leader>re :split \| term ipython -i %<CR>
" nnoremap <leader>cc :w <CR> :!gcc % -o %< && ./%< <CR>

" Spell checking
nnoremap <leader>sc :setlocal spell!<CR>

" nerw
nnoremap <leader>ex :Explore<CR>
nnoremap <leader>tex :Texplore<CR>
nnoremap <leader>vex :Vexplore<CR>

" }}}
" Visualizers {{{

nnoremap <F5> :UndotreeToggle<cr>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

" }}}
" Linter {{{

" Quick Navigation between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ALE quickfix with Prettier
autocmd Filetype python nmap <leader>e <Plug>(ale_fix)

" }}}
" FZF mapping {{{

nnoremap <leader>h :History<CR>
nnoremap <leader>H :split \| History<CR>
nnoremap <leader>rh :History/<CR>
nnoremap <leader>ch :History:<CR>
nnoremap <leader>gh :GHistory<CR>

nnoremap <leader>f :Files ~/
nnoremap <leader>F :Files<CR>
nnoremap <leader>sF :split \| Files

nnoremap <leader>gf :GFiles<CR>

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>B :split \| Buffers<CR>

nnoremap <leader>c :Colors<CR>

nnoremap <leader>l :BLines<CR>
nnoremap <leader>L :Lines<CR>

" }}}
" Slime {{{

xnoremap <leader>s <Plug>SlimeRegionSend

" }}}
" Semshi {{{

nmap <silent> <leader>rr :Semshi rename<CR>

nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>

" nmap <silent> <leader>c :Semshi goto class next<CR>
" nmap <silent> <leader>C :Semshi goto class prev<CR>

" nmap <silent> <leader>f :Semshi goto function next<CR>
" nmap <silent> <leader>F :Semshi goto function prev<CR>

nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>

" }}}
" C {{{

nnoremap <F4> :make!<cr>

" }}}
" Jupyter {{{

autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
autocmd Filetype ipynb nmap <silent><Leader>nt :VimpyterStartNteract<CR>

" }}}
" vim:foldmethod=marker:foldlevel=0
