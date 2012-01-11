
" set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 13
" set guifont=Luxi\ Mono\ Bold\ 14
set guifont=Luxi\ Mono\ Bold\ 12
set showtabline=2

" Make command line two lines high
" set ch=2

" I like highlighting strings inside C comments
let c_comment_strings=1

" Switch on syntax highlighting.
syntax on

" Switch on search pattern highlighting.
set hlsearch

" Hide the mouse pointer while typing
set mouse=a
set mousehide

" Set nice colors
" Constants are not underlined but have a slightly lighter background

" highlight Normal   guibg=grey90
"highlight Normal   guibg=LightYellow
"highlight Cursor   guibg=Green guifg=NONE
"highlight NonText  guibg=grey80
"highlight Constant gui=NONE guibg=grey95
"highlight Special  gui=NONE guibg=grey95

"hi statusline   term=NONE cterm=NONE ctermfg=yellow ctermbg=red
"hi statuslineNC term=NONE cterm=NONE ctermfg=black  ctermbg=white  
"" hi search  ctermfg=white ctermbg=Green     guifg=white guibg=white
"hi comment ctermbg=black ctermfg=cyan    

" read/write a .viminfo file, don't store more than 100 lines of registers

set viminfo='20,\"100

" always display a status line at the bottom of window
" set laststatus=2

" default tabstop of 4 spaces
" set ts=4 
" default shiftwidth of 4 spaces
" set sw=4 
" allow tilde (~) to act as an operator -- ~w, etc.

win 110 30

map <C-t>  :tabnew<CR>
map <A-1>  :tabnext 1<CR>
map <A-2>  :tabnext 2<CR>
map <A-3>  :tabnext 3<CR>
map <C-w>  :tabclose<CR>

"colorscheme default
"colorscheme murphy
"colorscheme ron
colorscheme john_adrian
