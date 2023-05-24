set nocompatible
set backupdir=~/.vim/backup//  "backup dir to .vim folder
set directory=~/.vim/swap//    "swap dir to .vim folder
set undodir=~/.vim/undo//      "undo dir to .vim folder
set timeoutlen=500

if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif


call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
call plug#end()

"mapping
nmap <F2> :NERDTreeToggle<CR>
let mapleader = ","
nnoremap <leader>v <C-v>


set path+=**
set hlsearch
set showmatch
set number
set relativenumber
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set fileencoding=utf-8
