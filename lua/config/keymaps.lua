-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("t", "<C-w>", [[<C-\><C-n><C-w>]], { noremap = true, silent = true })

-- Di chuyển con trỏ giữa dòng trên và dưới
vim.api.nvim_set_keymap(
  "i", -- insert mode
  "<Left>",
  [[col('.') == 1 ? '<Esc>kA' : '<Left>']],
  { noremap = true, expr = true, silent = true }
)
vim.api.nvim_set_keymap(
  "i", -- insert mode
  "<Right>",
  [[col('.') == col('$') ? '<Esc>jI' : '<Right>']],
  { noremap = true, expr = true, silent = true }
)
