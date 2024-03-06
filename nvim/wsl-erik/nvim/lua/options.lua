vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = ' ' 

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>')
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>')
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>')
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<cr>')
vim.wo.number = true
vim.wo.relativenumber = true
vim.keymap.set('n', '<leader>v', '<C-v>')
vim.keymap.set('n', '<F3>', ':w<cr>')
vim.keymap.set('i', '<F3>', '<c-o>:w<cr>')
