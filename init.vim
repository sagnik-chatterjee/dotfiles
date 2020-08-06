"Default 
 
set mouse=a
set number 
set autoindent 
set hlsearch "highlights search 


"plugins begin 

call plug#begin('')
Plug 'aonemd/kuroi.vim'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/indentpython.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax on 
"Color related options 
set background=dark 
"colorscheme kuroi
colorscheme kuroi

let g:airline_theme='zenburn'
"setting up true colors 
set termguicolors

"setting up cursorline 
set cursorline 

"for status line 
set laststatus=2
set statusline=%=%m\ %c\ %P\ %f
"for hiding the below insert status line 

" for proper python indentation 
au BufNewFile,BufRead *.py 
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab 
	\ set autoindent 
	\ set fileformat=unix


