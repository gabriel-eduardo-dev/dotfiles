-- Plugins
require ('plugins')

-- Load Keybinds
require ('mappings')

-- Treesitter
require('treesitter')

-- LSP
require('mylsp')

-- Ntree
require('nvimtree')

-- ToggleTerm
require('toggle-term')

-- BufferLine
require("bufferline").setup{}

-- Telescope
require('telescop')

-- Todo comments
require('todo_comments')

-- Legacy vim script
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])

