return {
  "mfussenegger/nvim-dap",
  keys = {
    {
      "<f5>",
      function()
        require("dap").continue()
      end,
      desc = "Debug continue",
    },
    {
      "<f9>",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Debug toggle breakpoint",
    },
    {
      "<f10>",
      function()
        require("dap").step_over()
      end,
      desc = "Debug step over",
    },
    {
      "<f11>",
      function()
        require("dap").step_into()
      end,
      desc = "Debug step into",
    },
  },
  -- TODO: Configure debuggers
}
