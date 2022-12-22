require("bufferline").setup{

	options = {
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
		diagnostics = "nvim_lsp",
	}
}
