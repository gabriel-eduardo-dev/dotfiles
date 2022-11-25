require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	-- Themes
	use {
		'morhetz/gruvbox',
		'elvessousa/sobrio',
		'joshdick/onedark.vim',
		'tikhomirov/vim-glsl', -- Highlight for glsl files
		'norcalli/nvim-colorizer.lua',
		"lukas-reineke/indent-blankline.nvim",
		'Shatur/neovim-ayu',
		'NTBBloodbath/doom-one.nvim',
		'Mofiqul/vscode.nvim',
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
	use 'tpope/vim-surround'
	use "windwp/nvim-ts-autotag"
	use 'p00f/nvim-ts-rainbow'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
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
end)
