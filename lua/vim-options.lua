vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
-- Personal keymaps
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('n', '<leader>bd', ':Neotree toggle<CR> <bar> :bd<CR> <bar> :bn<CR> <bar> :Neotree toggle<CR>')
vim.keymap.set('n', '<leader>l', ':Lazy<CR>')
vim.keymap.set('n', '<leader>m', ':Mason<CR>')
vim.keymap.set('n', '<leader>qq', ':qa<CR>')
