require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use 'elvessousa/sobrio'
	use 'nvim-treesitter/nvim-treesitter'
	use 'joshdick/onedark.vim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
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
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
	use "rafamadriz/friendly-snippets"
	use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'}
		}
	}
	use {
	    "folke/todo-comments.nvim",
	    requires = "nvim-lua/plenary.nvim",
		config = function()
	    end
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'sjl/badwolf'
	use 'tikhomirov/vim-glsl'
	use 'mfussenegger/nvim-jdtls'
end)
