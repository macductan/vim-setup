-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"

vim.opt.wrap = true

-- Di chuyển giữa các dòng
vim.opt.whichwrap:append("<,>,h,l")

vim.g.copilot_filetypes = {
  ["*"] = true,
  python = false,
}

vim.g.autoformat = false
