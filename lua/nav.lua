require("navigator").setup({
  code_action = { enable = false },
  icons = {
    code_action_icon = " ",
    diagnostics_head = "  ",
    diagnostics_head_severity_1 = " ",
    diagnostics_head_severity_2 = " ",
  },
  mason = true,
  lsp = {
    disable_lsp = { "rust_analyzer" },
  },
})
