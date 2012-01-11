"   vimrc from $HOME

let loaded_matchparen = 1 

set nocompatible                " Use Vim defaults (much better!)
set bs=2                        " allow backspacing over everything in insert mode
set viminfo='20,\"50            " read/write a .viminfo file, don't store more than 50 lines of registers
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
set directory=/var/tmp          " swap file
set magic

map Q gq
map  g G
map ; :

syntax on                       " enable syntax highlighting
set scrolloff=2
set noshowmatch

set t_ti= t_te=					" Do not clear screen by vim exit

" Apply settings only for gVim

if has("gui_running")
    set mouse=a
else
    "xterm mouse with middleclick paste
    nnoremap <MiddleMouse> i<MiddleMouse>
    vnoremap <MiddleMouse> s<MiddleMouse>
    set mouse=v
endif

set nobackup
set nowritebackup
filetype indent on
filetype plugin on              " Enable filetype detection
filetype plugin indent on       " automatically do language-dependent indenting
"let loaded_vimspell = 1        " disable spell
"let loaded_xmledit = 1			" disable xml plugin
let c_comment_strings=0

" set textwidth=80              " set word wrap

" Following three lines set text wrapping
"
"set wrap                
"set textwidth=0    
"set lbr

" tabs and indenting

" set expandtab                 " insert spaces instead of tab chars
set tabstop=4                   " a n-space tab width
set shiftwidth=4                " allows the use of < and > for VISUAL indenting
set softtabstop=4               " counts n spaces when DELETE or BCKSPCE is used
" set autoindent                " auto indents next new line
set nosmartindent               " intelligent indenting -- DEPRECATED by cindent
set nocindent                   " set C style indenting off

" searching
"
set hlsearch
"set nohlsearch                  " highlight all search results
set incsearch                   " increment search
set ignorecase                  " case-insensitive search
set smartcase                   " upper-case sensitive search
set showcmd                     " display incomplete commands

" set t_kb=<BS>
set backspace=indent,eol,start
"fixdel

" When editing a file, always jump to the last known cursor position.

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

:autocmd  FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

"set t_Co=256					" Enable 256 colors in vim

"colorscheme pablo
"colorscheme john
"colorscheme ron
colorscheme john_adrian

"au BufRead /tmp/mutt-* set tw=72
