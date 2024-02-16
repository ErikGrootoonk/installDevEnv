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
call plug#end()

colorscheme gruvbox

set background=dark

