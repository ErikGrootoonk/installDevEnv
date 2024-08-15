set nocompatible
syntax on
let mapleader=" "
set timeoutlen=500
set number
set relativenumber
set encoding=utf-8
set wrap
set path+=**
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set copyindent
set expandtab
set noshiftround
set mouse=a
set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase
set wildmenu
set noswapfile
set updatetime=300      " decrease update time
set hidden
set ttyfast
set laststatus=2
filetype on
set showcmd
set background=dark
nnoremap <F2> :NERDTreeToggle <CR>
nnoremap <F3> :bel term <CR>

"  Navigate vim panes better
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

nnoremap <leader>h :nohlsearch<cr>
nnoremap <leader>v <C-v>
nnoremap <F4> :w<cr>
inoremap <F4> <c-o>:w<cr>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
call plug#end()


if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif
