set number 
syntax on 

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'

Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

Plug 'sbdchd/neoformat'
Plug 'ycm-core/YouCompleteMe'
Plug 'sickill/vim-monokai'
Plug 'overcache/NeoSolarized'
Plug 'LucHermitte/lh-cpp'
Plug 'vim-syntastic/syntastic'
Plug 'wincent/command-t'

Plug 'miyakogi/conoline.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ervandew/supertab'
call plug#end()

hi HighlightedyankRegion cterm=reverse gui=reverse 

"ADDED delay for duration time to 1000 ms 
let g:highlightedyank_highlight_duration =1000

set hidden 

"intuitve backspace 
set backspace=indent,eol,start 

colorscheme onedark 

" syntax themes and styles 
set background=dark 

" setting airline theme to match onedark 
let g:airline_theme='onedark'




"Enable alignment 
let g:neoformat_basic_format_align=1

"eNABLE TAB TO SPACE Sconversion 
let g:neoformat_basic_format_retab=1

"Enable trimming of trailling whitespace 
let g:neoformat_basic_format_trim=1 


set mouse=a
filetype plugin indent on 
set autoindent 

"Splitting panes 
set splitbelow 
set splitright 

set showmatch 


set cursorline 
hi cursorline cterm=none term=none 

autocmd WinEnter * setlocal cursorline 
autocmd WinLeave * setlocal nocursorline 
highlight CursorLine guibg=#303000 

set clipboard^=unnamed,unnamedplus 


"some comp specific settings 
"
filetype on 

autocmd BufNewFile *.cpp :Or ~/AppData/Local/nvim/cpp

autocmd BufNewFile *.cpp : w!

map <F8>: !g++ -g % && ./a.out <CR>

map <F5>: !g++ -g % <CR>

map <F2>: w <CR>

map <F12>: !gdb ./a.out <CR>



