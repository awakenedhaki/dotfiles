" Deoplete {{{

"let g:deoplete#enable_at_startup = 1

" }}}
" Jedi {{{

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

let g:jedi#popup_on_dot = 0

" }}}
" Deoplete Jedi {{{

"let g:deoplete#sources#jedi#show_docstring = 1

" }}}
" NERDTree mapping and config {{{

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeHighlightCursorline=1
let NERDTreeShowLineNumbers=0
let g:NERDTreeGitStatusNodeColorization = 1

let NERDTreeIgnore = [
      \ '^\~$[[dir]]',
      \ '^\.git$[[dir]]',
      \ '^\.o$[[file]]',
      \ '^\.pyc$[[file]]',
      \ '^\.DS_Store$[[file]]',
      \ ]

" Open NERDTree when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" }}}
" Devicons {{{

let g:webdevicons_enable = 1
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_enable_nerdtree=1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 0
let g:webdevicons_enable_startify = 1

" }}}
" NERDTree Custom Highlighting {{{

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange

" }}}
" UndoTree {{{

let g:undotree_WindowLayout = 4

" }}}
" ALE config {{{

let g:ale_sign_error = '✖'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_linters = {
      \ 'python': ['flake8', 'pylint'],
      \ 'LaTeX': ['alex', 'chktex'],
			\ 'java': ['checkstyle', 'javac', 'javalsp', 'pmd'],
			\ 'ruby': ['rubocop']
      \ }

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'python': ['autopep8', 'yapf'],
	  \ 'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace']
      \ }
let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 1

" Echo message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Setting javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" }}}
" LightLine config with Lightline-Ale {{{

let g:lightline = {
      \ 'colorscheme': 'archery',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'],
      \             [ 'readonly', 'fugitive', 'filename', 'modified', 'tagbar'] ],
      \   'right': [ [ 'linter_checking', 'linter_warnings', 'linter_errors', 'linter_ok' ], [ 'gitbranch' ], [ 'lineinfo' ], [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_expand': {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'gutentags': 'gutentags#statusline'
      \ },
      \ 'component': {
      \   'tagbar': '%{tagbar#currenttag("%s", "")}'
      \ },
			\ 'component_visibile_condition': {
			\   'modified': '&modified||!&modifiable',
		  \   'readonly': '&readonly',
		  \   'paste': '&paste',
		  \   'spell': '&spell'
			\ },
			\ 'separator': {
			\   'left': '',
			\   'right': ''
			\ },
			\ 'subseparator': {
			\    'left': '',
			\    'right': ''
			\ }
      \ }

let g:lightline.tabline = {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'close' ] ]
      \ }

" }}}
" Goyo & Limelight {{{

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 10

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^'
let g:limelight_eop = '$'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" }}}
" Notetaking {{{

let g:pandoc#after#modules#enabled=[ "ultisnips" ]
let g:pandoc#formatting#smart_autoformat_on_cursormoved=1

let g:tex_flavor = "latex"

" }}}
" Rainbow {{{

let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {'ctermfgs': ['blue', 'magenta', 'cyan', 'red']}

" }}}
" Slime {{{

let g:slime_target = 'neovim'

" }}}
" Startify {{{

"autocmd VimEnter * Startify | Goyo 80 | NERDTree | wincmd p

" }}}
" Pad {{{

let g:pad#dir='~/quick-notes/'

" }}}
" vim:foldmethod=marker:foldlevel=0
