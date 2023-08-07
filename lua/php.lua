-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    php = {
      function()
        -- Full specification of configurations is down below and in Vim help
        -- files
        return {
          exe = "phpstorm",
          args = {
            "format",
            "-s ~/repos/iserv/IServ.xml",
          },
          stdin = false,
	  ignore_exitcode = true,
        }
      end
    },
  }
}
