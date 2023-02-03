local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

require('telescope').setup{
  defaults = {
		vimgrep_arguments = {
		  'rg',
		  '--color=never',
		  '--no-heading',
		  '--with-filename',
		  '--line-number',
		  '--column',
		  '--smart-case',
		  '--ignore-file',
		  '.gitignore'
		},
		file_ignore_patterns = {
			"node_modules",
			'.obj',
			'.class',
			'.exe',
			'.out',
			'.bin',
			'.form',
			'.img',
			'.jpg',
			'.png',
			'.jar',
			'.gif',
			'LICENSE'
		},
	}
}
