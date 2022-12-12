-- Function to load keymaps 

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Disable arrow keys

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Remap Esc to 'çj'

map('n', 'çj', '<Esc>')
map('i', 'çj', '<Esc>')
map('v', 'çj', '<Esc>')
map('c', 'çj', '<Esc>')

-- Save

map('n', 'çs', '<Esc> :w <CR>')

-- Remap exit to çq

map('n', 'çq', '<Esc> :wq <CR>')

-- Clear search highlighting to ç\

map('n', '<leader>ç', ':nohl <CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Nvim tree

map('n', 'çn', ':NvimTreeToggle <CR>')

-- Better switch windows

map('n', 'çf', ':bp <CR>')
map('n', 'çl', ':bn <CR>')
