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
set nobackup nowritebackup
set noswapfile
let mapleader = " "

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

colorscheme gruvbox

set background=dark

nmap <F2> :NERDTreeToggle<CR>
" Map leader to ctrl -v because of WSL default mappings
nnoremap <leader>v <C-v>



if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif
