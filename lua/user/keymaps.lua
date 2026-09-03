-- define leader key, default is \, here is space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.timeoutlen = 300

-- keymap list
-- { "<leader>d", '"+d' }
-- { "<leader>D", '"+D' }
-- { "<leader>y", '"+y' }
-- { "<leader>Y", '"+Y' }
-- { "<leader>p", '"+p' }
-- { "<leader>P", '"+P' }
vim.keymap.set({ "n", "x" }, "\\", ":")
vim.keymap.set({ "n", "x" }, "(", "?(<CR>vi)")
vim.keymap.set({ "n", "x" }, ")", "vi)")
vim.keymap.set({ "n", "x" }, "{", "?{<CR>vi}")
vim.keymap.set({ "n", "x" }, "}", "vi}")
vim.keymap.set({ "n", "x" }, "[[", "{")
vim.keymap.set({ "n", "x" }, "]]", "}")
vim.keymap.set({ "n", "x" }, "[", "?[<CR>vi]")
vim.keymap.set({ "n", "x" }, "]", "vi]")
vim.keymap.set({ "n", "x" }, "<", "?<<CR>vi>")
vim.keymap.set({ "n", "x" }, ">", "vi>")
vim.keymap.set({ "n", "x" }, "'", "vi'")
vim.keymap.set({ "n", "x" }, '"', 'vi"')
vim.keymap.set({ "n", "x" }, "M", "`")

-- gbprod/yanky.nvim
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
