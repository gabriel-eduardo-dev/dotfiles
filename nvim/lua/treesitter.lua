local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = { "c", "lua", "cpp", "java", "bash", "html", "css", "javascript" },
	sync_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		disable = { "cpp", "javascript", "java", "vim", "lua", "c" }, -- list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
	indent = {
		enable = false,
	},
	autotag = {
		enable = true,
	}
}

vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

