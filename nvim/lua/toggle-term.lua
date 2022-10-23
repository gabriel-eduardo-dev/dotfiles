require("toggleterm").setup({
	size = 15,
	open_mapping =	[[çt]],
	terminal_mappings = true,
	start_in_insert = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell,
	shade_terminals = false,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})
