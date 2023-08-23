local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(client, bufnr)
			require("navigator.lspclient.mapping").setup({ client = client, bufnr = bufnr })
			require("navigator.dochighlight").documentHighlight(bufnr)
			require("navigator.codeAction").code_action_prompt(bufnr)

			-- Hover actions
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})
