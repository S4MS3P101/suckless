syntax on

set number relativenumber
set laststatus=2
set noshowmode
set noshowcmd 
set noruler
set shortmess+=F
set cursorline
set hlsearch
set mouse=a
set bg=dark
let ayucolor="dark"
colorscheme ayu

let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ }

" Plugins

call plug#begin()

Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'

call plug#end()

