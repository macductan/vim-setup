return {
  -- Automatically set tabstop and shiftwidth
  { "tpope/vim-sleuth",
    config = function()
      -- Set tabstop=2 for new files
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
        pattern = "*",
        callback = function()
          if vim.fn.line("$") == 1 and vim.fn.getline(1) == "" then
            vim.bo.tabstop = 2
            vim.bo.shiftwidth = 2
            vim.bo.softtabstop = 2
          end
        end,
      })
    end 
  },
}
