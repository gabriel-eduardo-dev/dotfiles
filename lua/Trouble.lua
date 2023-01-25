require("trouble").setup {

}
-- Lua
vim.keymap.set("n", "çx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
