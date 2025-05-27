return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup({})
      
      -- Add terminal mode mapping to make <C-\><C-n> work with <C-w>
      vim.api.nvim_set_keymap('t', '<C-w>', [[<C-\><C-n><C-w>]], {noremap = true, silent = true})
    end,
    keys = {
      {
        "<leader>tt",
        function()
          vim.cmd(":ToggleTerm direction=horizontal")
        end,
        desc = "ToggleTerm Horizontal",
      },
      {
        "<leader>tv",
        function()
          vim.cmd(":ToggleTerm direction=vertical")
        end,
        desc = "ToggleTerm Vertical",
      },
      {
        "<leader>tf",
        function()
          vim.cmd(":ToggleTerm direction=float")
        end,
        desc = "ToggleTerm Float",
      },
      {
        "<leader>tl",
        function()
          vim.cmd(":ToggleTerm direction=tab")
        end,
        desc = "ToggleTerm Tab",
      },
      {
        "<leader>ta",
        function()
          vim.cmd(":ToggleTermToggleAll")
        end,
        desc = "ToggleTerm All",
      },
      {
        "<leader>tn",
        function()
          local number = vim.fn.input("Term number: ")
          if number ~= "" then
            vim.cmd(":ToggleTerm " .. number)
          else
            vim.cmd(":ToggleTerm")
          end
        end,
        desc = "ToggleTerm Number",
      },
      
    }
  },
}
