require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use 'elvessousa/sobrio'
	use 'nvim-treesitter/nvim-treesitter'
	use 'joshdick/onedark.vim'
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
	use "rafamadriz/friendly-snippets"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'}
		}
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'tikhomirov/vim-glsl'
	use {'neoclide/coc.nvim', branch = 'release'}
end)
