local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = { "c", "lua", "cpp", "java", "bash", "html", "css", "javascript" },
	sync_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = false,
	},
	autotag = {
		enable = true,
	}
}

--vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

