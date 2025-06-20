return {
  "mistweaverco/kulala.nvim",
  keys = {
    {
      "<leader>Re",
      function()
        local environments = { "local", "staging", "production" }
        vim.ui.select(environments, {
          prompt = "Chọn môi trường:",
        }, function(choice)
          if choice then
            require("kulala").set_selected_env(choice)
            vim.notify("Đã chọn môi trường: " .. choice)
          end
        end)
      end,
      desc = "Chọn môi trường",
      ft = "http",
    },
  },
}
