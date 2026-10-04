return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    picker = { enabled = true, layout = { fullscreen = true } },
  },
  keys = {
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find files in current directory",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files { cwd = vim.fn.stdpath "config" }
      end,
      desc = "Find files in config directory",
    },
    {
      "<leader>gf",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep files in current directory",
    },
    {
      "<leader>gg",
      function()
        Snacks.picker.git_status()
      end,
      desc = "Show git status with differences",
    },
    {
      "<leader><leader>",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Find buffers",
    },
  },
}
