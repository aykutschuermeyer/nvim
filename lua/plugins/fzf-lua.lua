return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    fzf_colors = {
      ["gutter"] = { "bg", "Normal" },
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
      "<leader>gb",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "Grep current buffer",
    },
    {
      "<leader><leader>",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>gg",
      function()
        require("fzf-lua").git_status()
      end,
      desc = "Show git status with differences",
    },
  },
}
