return {
  -- Automatically set tabstop and shiftwidth
  { "tpope/vim-sleuth",
    config = function()
      -- Set tabstop=2 for new files
      vim.api.nvim_create_autocmd("BufNewFile", {
        pattern = "*",
        callback = function()
          vim.bo.tabstop = 2
          vim.bo.shiftwidth = 2
          vim.bo.softtabstop = 2
        end,
      })
    end 
  },
}
