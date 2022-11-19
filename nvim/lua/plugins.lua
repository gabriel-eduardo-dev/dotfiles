require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	-- Themes
	use {
		use 'morhetz/gruvbox',
		use 'elvessousa/sobrio',
		use 'joshdick/onedark.vim',
		use 'tikhomirov/vim-glsl', -- Highlight for glsl files
		use 'norcalli/nvim-colorizer.lua',
		use "lukas-reineke/indent-blankline.nvim",
	}
	use 'nvim-treesitter/nvim-treesitter'
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'}
		}
	}
	-- Lsp
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	-- Autocomplete
	use {
		use 'hrsh7th/cmp-nvim-lsp',
		use 'hrsh7th/cmp-buffer',
		use 'hrsh7th/cmp-path',
		use 'hrsh7th/cmp-cmdline',
		use 'hrsh7th/nvim-cmp',
	}
	-- Snipts
	use {
		use 'L3MON4D3/LuaSnip',
		use 'saadparwaiz1/cmp_luasnip',
		use "rafamadriz/friendly-snippets",
		use 'hrsh7th/vim-vsnip',
		use 'hrsh7th/vim-vsnip-integ',
	}
end)
