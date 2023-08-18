local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', 'Er',    api.fs.rename_basename,                opts('Help'))
	vim.keymap.set('n', 'e',     "k",                                   opts('Up'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
	on_attach = my_on_attach,
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},

}
