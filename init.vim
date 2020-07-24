
call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
"Color theme begins 
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'kaicataldo/material.vim'
"color theme ends 
Plug 'valloric/youcompleteme'
Plug 'bfrg/vim-cpp-modern'

"SOme more things for c/cpp dev 
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

"Plugins for rust highlighting 
Plug 'rust-lang/rust.vim'


call plug#end()

set number

"Enable alignment 
let g:neoformat_basic_format_align=1


"Enable ab to sapces conversion 
let g:neoformat_basic_format_retab=1

"Enable trimming of trailing whitespace 
let g:neoformat_basic_format_trim=1


"disable autocompletion cause we use deoplate for completion 
let g:jedi#completions_enabled=0

"open the goto function in split not another buffer 
let g:jedi#use_splits_not_buffers="right"


"for some color schemes the yanked values are not seen 
hi HighlightedyankRegion cterm=reverse gui=reverse

" increasing the highlight duration 
let g:highlightedyank_highlight_duration = 1000

"Colorscheme for the editor
syntax on 

"let g:material_terminal_italics=1 
"let g:material_theme_style='dark'

colorscheme onedark

"COlorscheme for airline 
let g:airline_theme= 'onedark'


filetype plugin indent on 
" other things that we dont require 
"
" 1. Disable startup text 
set shortmess+=I

 "adding some tabs and spaces convention 
set expandtab 
 "this will make it go 2 spaces when hitting tab 
 
 "show existing tab with 2 spaces width 
set tabstop=2
set softtabstop=2

 "when indenting with '>' ,use 2 spaces width 
set shiftwidth=2
 "mouse mode 
set mouse+=a

 

"highlight current line but only in current window

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

"for true colors display
if (has('termguicolors'))
  set termguicolors
endif

"other styles are default, palenight ,ocean ,lighter
 



"automatic vim formatting settings 
"autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format


