filetype on 
filetype indent on 
syntax enable 

autocmd BufNewFile *.cpp :0r ~/.vim/cpp 
autocmd BufNewFile *.cpp :w!
map <F8> :!g++ -g % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
map <F2> :w <CR>
map <F12> :!gdb ./%:r <CR>

set number 
set laststatus=2

set backspace=indent,eol,start

set ignorecase
set smartcase 

set mouse+=a

set shortmess+=I

set nocompatible 
set autoindent 
set encoding=utf-8


"set the runtime path to incclude Vundle and initialize 
set rtp+=~/.config/nvim/bundle/Vundle.vim 

call vundle#begin()

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'liuchengxu/space-vim-theme'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on 

if (has("termguiccolors"))
	set termguicolors
endif 
set background=dark 
colorscheme space_vim_theme

let g:airline_theme='bubblegum'

"highlight current line in active window 

augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline 
	autocmd WinLeave * setlocal nocursorline 
augroup END 

