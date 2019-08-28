" Plugins with vim-plug manager  {{{
call plug#begin('~/.local/share/nvim/plugged/')

source ~/.config/nvim/plugins/autocomplete.plugins
source ~/.config/nvim/plugins/colorschemes.plugins
source ~/.config/nvim/plugins/general.plugins
source ~/.config/nvim/plugins/git.plugins
source ~/.config/nvim/plugins/markup.plugins
source ~/.config/nvim/plugins/python.plugins
source ~/.config/nvim/plugins/visualizers.plugins

call plug#end()
" }}}
" Settings {{{

source ~/.config/nvim/settings/functions.vim
source ~/.config/nvim/settings/language.vim
source ~/.config/nvim/settings/mappings.vim
source ~/.config/nvim/settings/plugins.vim

" }}}
" Configurations {{{

syntax on
syntax enable
filetype plugin indent on " Loads plugins and indent files for specific filetypes

" Encoding (Set char internal representation & encoding of particular file)
let &termencoding = &encoding " &termencoding is encoding of incoming file
set encoding=utf-8            " Use UTF-8, Unicode Standard encoding (Shown in terminal)
set fileencoding=utf-8        " Use UTF-8. Unicode Standard encoding (Written to file)

" Window (local)
set number                         " Print line number infront of line
set cursorline                     " Highlight line of the cursor
set wrap                           " If line legnth > window size, continue line on next line

" General (global)
set rulerformat=%l\:%c         " Show cursor position - LINE : COLUMN
set scrolloff=10               " Number of lines above & below of cursor
set lazyredraw                 " Screen redrawn only when needed
set showcmd                    " Show command on last line of screen
set wildmenu                   " Enhanced command-line completion
set wildmode=list:longest,full " Complete longest common string, then each full match
set noshowmode                 " Don't show mode in last line
set noerrorbells               " No bells when error appears
set clipboard=unnamedplus      " Allows copy-paste from external programs
set shortmess+=c               " Shortens prompts caused by file messages
set modelines=1                " Numbers of lines to check for set commands
set noswapfile								 " No .swp files
set splitbelow                 " :split puts window below current
set splitright                 " :vsplit puts window to right
set autochdir
set mouse=a                    " enables scrolling with mouse

" Exiting (global)
set confirm " If unsaved changes, asks before quiting. Override with '!'

" Searching (global)
set hlsearch             " Highlight matches
set incsearch            " Show results as you type
set ignorecase smartcase " Ignore case in search parameter. Smart overrides ignorecase in caps


" Buffer (local)
" \ Buffer is file loaded in memory for editing
set modifiable " Allows buffers to be modified 

" TODO lines are highlighted
augroup myTodo
  autocmd!
  autocmd Syntax * syntax match myTodo /\v\_.<(TODO|FIXME).*/hs=s+1 containedin=.*Comment
augroup END

set tabstop=4      " Defines number of spaces in a tab in a file
set softtabstop=-1 " Defines number of spaces in a tab while editing
set autoindent     " Copy indent from current line to next line
set shiftwidth=0   " Number of spaces to use for each step of autoindent
set copyindent     " Copy structure of current line to new line

" Fold (local to window)
set foldenable        " enables folding
set foldlevelstart=99 " Sets folding for new window. '99': no folds in new window
set foldmethod=indent " Kind of folding used for window (fold delimitting)
set foldnestmax=3     " Maximum amount of nested folds allowed (sys limit = 20)

" }}}
" Miscellaneous {{{

" Highlight characters if line length >80
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" Colorscheme
"if (has("termguicolors"))
  "set termguicolors
"endif

"set background=dark           " Adjusted default color groups
"colorscheme gruvbox

" }}}
" vim:foldmethod=marker:foldlevel=0
