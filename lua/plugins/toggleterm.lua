return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
    keys = {
      {
        "<leader>m",
        desc = "ToggleTerm",
      },
      {
        "<leader>mt",
        function()
          vim.cmd(":ToggleTerm direction=horizontal")
        end,
        desc = "ToggleTerm Horizontal",
      },
      {
        "<leader>mv",
        function()
          vim.cmd(":ToggleTerm direction=vertical")
        end,
        desc = "ToggleTerm Vertical",
      },
      {
        "<leader>mf",
        function()
          vim.cmd(":ToggleTerm direction=float")
        end,
        desc = "ToggleTerm Float",
      },
      {
        "<leader>ml",
        function()
          vim.cmd(":ToggleTerm direction=tab")
        end,
        desc = "ToggleTerm Tab",
      },
      {
        "<leader>ma",
        function()
          vim.cmd(":ToggleTermToggleAll")
        end,
        desc = "ToggleTerm All",
      },
      {
        "<leader>mn",
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
