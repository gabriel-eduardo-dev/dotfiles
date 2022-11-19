-- Plugins
require ('plugins')

-- Load Keybinds
require ('mappings')

-- Treesitter
require('treesitter')

-- cmp
require('cmpConfig')

-- Ntree
require('nvimtree')

-- ToggleTerm
require('toggle-term')

-- Telescope
require('telescop')

-- Legacy vim script
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])

require 'colorizer'.setup()
require("mason").setup()
require("mason-lspconfig").setup()
