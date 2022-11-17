-- Plugins
require ('plugins')

-- Load Keybinds
require ('mappings')

-- Treesitter
require('treesitter')

-- Coc
require ('cocConf')

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

