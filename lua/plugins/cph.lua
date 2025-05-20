return {
  {
    "p00f/cphelper.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = { "python" },
    config = function()
      vim.g["cph#lang"] = "python"
    end,
  },
}
