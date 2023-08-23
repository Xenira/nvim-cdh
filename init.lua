-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("keymaps")
require("plugins")
require("colorscheme")
require("lsp")
require("opts")
require("php")
require("tree")
require("rust_setup")
require("nav")

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Line numbers
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 3
vim.o.smartindent = true
vim.o.autoindent = true

require("nvim-cursorline").setup({
	cursorline = {
		enable = true,
		timeout = 1000,
		number = false,
	},
	cursorword = {
		enable = true,
		min_length = 3,
		hl = { underline = true },
	},
})
