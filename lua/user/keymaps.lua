-- keymap config
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- define leader key, default is \, here is space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- keymap list
map("n", "<leader>d", '"+d', opts)
map("n", "<leader>y", '"+y', opts)
map("n", "<leader>p", '"+p', opts)
map("n", "<leader>P", '"+P', opts)
map("n", "<leader>n", '*', opts)
map("n", "<leader>N", '#', opts)
map("n", "<leader>h", '^', opts)
map("n", "<leader>j", '5j', opts)
map("n", "<leader>k", '5k', opts)
map("n", "<leader>l", '$', opts)