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

-- Trouble 
require('Trouble')

-- Legacy vim script
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])

require('Bufferline')

require('Lualine')
require('better-comment').Setup()
require("ibl").setup()

-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 1
-- Enable transparent mode
vim.g.gruvbox_baby_transparent_mode = 1
vim.cmd[[colorscheme gruvbox-baby]]
