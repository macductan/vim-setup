return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local config = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch with tsx",
          runtimeExecutable = "tsx",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }

      dap.configurations.javascript = config
      dap.configurations.typescript = config
    end,
  },
}
