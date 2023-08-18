-- Utilities for creating configurations
local util = require "formatter.util"
local defaults = require("formatter.defaults")

local php_storm_formatter = function ()
	 -- Full specification of configurations is down below and in Vim help
	 -- files
	 return {
			exe = "phpstorm",
			args = {
				 "format",
				 "-s ~/repos/iserv/phpstorm.xml",
			},
			stdin = false,
			ignore_exitcode = true,
	 }
end

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
	 -- Enable or disable logging
	 logging = true,
	 -- Set the log level
	 log_level = vim.log.levels.WARN,
	 -- All formatter configurations are opt-in
	 filetype = {
			php = { php_storm_formatter, require("formatter.filetypes.php").php_cs_fixer },
			js = { require("formatter.filetypes.javascript").prettierd },
			json = { require("formatter.filetypes.json").prettierd },
			html = { php_storm_formatter },
			-- twig = { function ()
				 -- return defaults.prettier("html")
			-- end
			-- },
			--twig = { php_storm_formatter },
			["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
	 }
}
