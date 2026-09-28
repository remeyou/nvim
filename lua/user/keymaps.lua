-- define leader key, default is \, here is space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.timeoutlen = 300

-- keymap list
-- vim.keymap.set({ "n", "x" }, "<leader>d", '"+d')
-- vim.keymap.set({ "n", "x" }, "<leader>D", '"+D')
-- vim.keymap.set({ "n", "x" }, "<leader>y", '"+y')
-- vim.keymap.set({ "n", "x" }, "<leader>Y", '"+Y')
-- vim.keymap.set({ "n", "x" }, "<leader>p", '"+p')
-- vim.keymap.set({ "n", "x" }, "<leader>P", '"+P')
vim.keymap.set({ "n", "x" }, "\\", ":")

vim.keymap.set({ "n", "x" }, "(", "?(<CR>vi)")
vim.keymap.set({ "n", "x" }, ")", "vi)")
vim.keymap.set({ "n", "x" }, "{", "?{<CR>vi}")
vim.keymap.set({ "n", "x" }, "}", "vi}")
vim.keymap.set({ "n", "x" }, "[", "?[<CR>vi]")
vim.keymap.set({ "n", "x" }, "]", "vi]")
vim.keymap.set({ "n", "x" }, "<", "?<<CR>vi>")
vim.keymap.set({ "n", "x" }, ">", "vi>")
vim.keymap.set({ "n", "x" }, "'", "vi'")
vim.keymap.set({ "n", "x" }, '"', 'vi"')

vim.keymap.set({ "n", "x" }, "<c-k>", "{k^")
vim.keymap.set({ "n", "x" }, "<c-j>", "}j^")
vim.keymap.set({ "n", "x" }, "<c-h>", "^")
vim.keymap.set({ "n", "x" }, "<c-l>", "$")
vim.keymap.set({ "n", "x" }, "<c-m>", "`")
vim.keymap.set({ "n", "x" }, "gj", "J")

-- gbprod/yanky.nvim
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
vim.keymap.set({ "n", "x" }, "y", "<Plug>(YankyYank)")
vim.keymap.set("n", "K", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "J", "<Plug>(YankyNextEntry)")
