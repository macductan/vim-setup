return {
  {
    "p00f/cphelper.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = { "python" },
    config = function()
      vim.g["cph#lang"] = "python"
    end,
    keys = {
      {
        "<leader>cpr",
        function()
          if vim.bo.filetype == "python" then
            vim.cmd(":CphReceive")
          else
            vim.notify("This command is only available in Python files", vim.log.levels.WARN)
          end
        end,
        desc = "CphReceive",
      },
      {
        "<leader>cpa",
        function()
          if vim.bo.filetype == "python" then
            vim.cmd(":CphTest")
          else
            vim.notify("This command is only available in Python files", vim.log.levels.WARN)
          end
        end,
        desc = "CphTest All",
      },
      {
        "<leader>cpt",
        function()
          if vim.bo.filetype == "python" then
            local number = vim.fn.input("Test number: ")
            if number ~= "" then
              vim.cmd(":CphTest " .. number)
            else
              vim.cmd(":CphTest")
            end
          else
            vim.notify("This command is only available in Python files", vim.log.levels.WARN)
          end
        end,
        desc = "CphTest",
      },
      {
        "<leader>cpe",
        function()
          if vim.bo.filetype == "python" then
            local number = vim.fn.input("Edit number: ")
            if number ~= "" then
              vim.cmd(":CphEdit " .. number)
            else
              vim.cmd(":CphEdit")
            end
          else
            vim.notify("This command is only available in Python files", vim.log.levels.WARN)
          end
        end,
        desc = "CphEdit",
      },
    },
  },
}
