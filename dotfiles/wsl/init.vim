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
set termguicolors
set splitbelow
set splitright
set ignorecase
" scrolloff = 999
set virtualedit = "block"
set inccommand = "split"
let mapleader = " "

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme gruvbox

set background=dark

nmap <F2> :NERDTreeToggle<CR>
" Map leader to ctrl -v because of WSL default mappings
nnoremap <leader>v <C-v>
" Map leader to b for looking up buffers and choose one
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif
