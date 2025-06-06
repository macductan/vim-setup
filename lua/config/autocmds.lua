-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.g.copilot_filetypes = {
  ["*"] = true,
  python = false,
}

vim.api.nvim_set_keymap("t", "<C-w>", [[<C-\><C-n><C-w>]], { noremap = true, silent = true })

vim.opt.wrap = true

-- Set the title of the Neovim window based on the first non-option argument
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.opt.title = true
    local args = vim.v.argv
    local title = "nvim"
    for i = 2, #args do
      local arg = args[i]
      if not arg:match("^%-") then
        title = "nvim " .. vim.fn.fnamemodify(arg, ":p")
        break
      end
    end
    vim.opt.titlestring = title
  end,
})
