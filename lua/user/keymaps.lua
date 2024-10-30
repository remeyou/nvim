-- keymap config
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- define leader key, default is \, here is space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- keymap list
local list = {
    { '<leader>d', '"+d' },
    { '<leader>D', '"+D' },
    { '<leader>y', '"+y' },
    { '<leader>Y', '"+Y' },
    { '<leader>p', '"+p' },
    { '<leader>P', '"+P' },
    { '\\',        ':',  { noremap = true } },
}
for i, v in ipairs(list) do
    map('n', v[1], v[2], v[3] and v[3] or opts)
    map('v', v[1], v[2], v[3] and v[3] or opts)
end

-- gbprod/yanky.nvim
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
