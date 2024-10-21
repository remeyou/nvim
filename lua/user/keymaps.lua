-- keymap config
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- define leader key, default is \, here is space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- keymap list
map('n', '<leader>d', '"+d', opts)
map('n', '<leader>D', '"+D', opts)
map('n', '<leader>y', '"+y', opts)
map('n', '<leader>Y', '"+Y', opts)
map('n', '<leader>p', '"+p', opts)
map('n', '<leader>P', '"+P', opts)
map('n', '\\', ':', { noremap = true })

-- gbprod/yanky.nvim
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
