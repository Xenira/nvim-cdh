local opts = {noremap = true, silent = true}

local term_opts = {silent = true}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = '/'
vim.g.maplocalleader = '/'

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Inssert key is changed to l/L
keymap("n", "l", "i", opts)
keymap("n", "L", "I", opts)
keymap("n", "F", "E", opts)
keymap("n", "f", "e", opts)

-- Navigation
keymap("n", "m", "h", opts)
keymap("n", "n", "j", opts)
keymap("n", "e", "k", opts)
keymap("n", "i", "l", opts)
keymap("n", "N", "5j", opts)
keymap("n", "E", "5k", opts)

-- Search
keymap("n", "k", "n", opts)

-- Insert --
-- Press jk/ne fast to exit insert mode 
keymap("i", "nk", "<ESC>", opts)

-- Visual --
-- Navigation
keymap("v", "m", "h", opts)
keymap("v", "n", "j", opts)
keymap("v", "e", "k", opts)
keymap("v", "i", "l", opts)
keymap("v", "N", "5j", opts)
keymap("v", "E", "5k", opts)

-- Search
keymap("n", "k", "n", opts)

-- Tools --
-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- UI --
-- Barbar
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Autocomplete --
-- CodeActionMenu
keymap('n', '<leader>a', '<Cmd>CodeActionMenu<CR>', opts)
keymap('v', '<leader>a', '<Cmd>CodeActionMenu<CR>', opts)
