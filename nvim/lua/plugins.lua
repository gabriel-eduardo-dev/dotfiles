require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	-- Themes
	use {
		'luisiacc/gruvbox-baby',
		'ellisonleao/gruvbox.nvim',
		'joshdick/onedark.vim',
		"lukas-reineke/indent-blankline.nvim",
	}
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	-- Git
	use {
		'mhinz/vim-signify',
		'tpope/vim-fugitive',
		'tpope/vim-rhubarb',
		'junegunn/gv.vim'
	}
	use "Djancyp/better-comments.nvim"
	use 'tpope/vim-surround'
	use "windwp/nvim-ts-autotag"
	use 'p00f/nvim-ts-rainbow'
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
	}
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use 'nvim-lualine/lualine.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'}
		}
	}
	-- Snipts
	use {
		'L3MON4D3/LuaSnip',
		'rafamadriz/friendly-snippets',
		'hrsh7th/cmp-vsnip',
		'hrsh7th/vim-vsnip',
		}
	-- Lsp
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	}
	-- Cmp
	use {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
		'saadparwaiz1/cmp_luasnip'
	}
	use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons'}
end)
