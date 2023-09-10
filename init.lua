-- Load user custom keymaps
require('user.keymaps')

-- CONSTANTS
-- MacOS '~/.config/nvim'
local NVIM_PATH = '~/AppData/Local/nvim'

-- vim register sync to OS clipboard
-- vim.opt.clipboard=unnamedplus

-- Ignore case sensitive when search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- lazy.nvim configurations
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(
	{
		'tpope/vim-surround',
		'tpope/vim-repeat',
		'brglng/vim-im-select',
		{
			"folke/flash.nvim",
			event = "VeryLazy",
			-- @type Flash.Config
			opts = {},
			-- stylua: ignore
			keys = {
				{ "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
				{
					"S",
					mode = { "n", "o", "x" },
					function() require("flash").treesitter() end,
					desc =
					"Flash Treesitter"
				},
				{
					"r",
					mode = "o",
					function() require("flash").remote() end,
					desc =
					"Remote Flash"
				},
				{
					"R",
					mode = { "o", "x" },
					function() require("flash").treesitter_search() end,
					desc =
					"Treesitter Search"
				},
				{
					"<c-s>",
					mode = { "c" },
					function() require("flash").toggle() end,
					desc =
					"Toggle Flash Search"
				},
			},
		},
		{
			"andymass/vim-matchup",
			setup = function()
				vim.g.matchup_matchparen_offscreen = { method = "popup" }
			end,
		},
	},
	{
		ui = {
			icons = {
				cmd = "⌘",
				config = "🛠",
				event = "📅",
				ft = "📂",
				init = "⚙",
				keys = "🗝",
				plugin = "🔌",
				runtime = "💻",
				source = "📄",
				start = "🚀",
				task = "📌",
				lazy = "💤 ",
			},
		},
	}
)

-- Conditional load config
if vim.g.vscode then
	-- vscode-neovim extension configurations
	vim.cmd('source ' .. NVIM_PATH .. '/vim/vscode-tab-commands.vim')
else
	-- Neovim configurations
	vim.opt.number = true
	vim.opt.relativenumber = true
end
