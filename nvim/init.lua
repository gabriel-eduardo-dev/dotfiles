-- Plugins
require ('plugins')
-- Load Keybinds
require ('mappings')

-- Treesitter
require('treesitter')

-- lsp 
require("mason").setup();
require("mason-lspconfig").setup()
require("lsp/init")

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

require'colorizer'.setup()
require("bufferline").setup{}
require('better-comment').Setup()
