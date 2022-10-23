local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = { "c", "lua", "cpp", "java", "bash" },
	sync_install = true,

	highlight = {
		enable = true,
	},
	indent = {
		enable = false,
	}
}

vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
