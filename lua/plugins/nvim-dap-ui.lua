return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    local dap, dapui = require "dap", require "dapui"
    dapui.setup()

    -- Open dap-ui automatically on launch/attach
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

    vim.keymap.set("n", "<leader>ux", function()
      dapui.close()
    end, { desc = "Close DAP UI" })
  end,
}
