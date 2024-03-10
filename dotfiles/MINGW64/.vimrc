" map leader key to comma
let mapleader = " "
set novisualbell
set nocompatible
set wildmenu
set path+=**
set number
set relativenumber
set expandtab
set shiftwidth=2
set tabstop=2
syntax enable
set mouse=a


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

set background=dark

" Map leader to ctrl -v because of WSL default mappings
nnoremap <leader>v <C-v>
