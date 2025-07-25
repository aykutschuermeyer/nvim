return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    {
      "igorlfs/nvim-dap-view",
      ---@module 'dap-view'
      ---@type dapview.Config
      opts = {},
      keys = {
        {
          "<leader>DD",
          "<cmd>DapViewToggle<cr>",
          desc = "Debug toggle view",
        },
      },
    },
  },
  opts = {
    fzf_colors = {
      ["gutter"] = { "bg", "Normal" },
    },
    winopts = {
      fullscreen = true,
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files in current directory",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files { cwd = vim.fn.stdpath "config" }
      end,
      desc = "Find files in config directory",
    },
    {
      "<leader>gf",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Grep files in current directory",
    },
    {
      "<leader>gg",
      function()
        require("fzf-lua").git_status()
      end,
      desc = "Show git status with differences",
    },
    {
      "<leader><leader>",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find buffers",
    },
  },
}
