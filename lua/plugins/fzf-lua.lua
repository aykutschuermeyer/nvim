return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
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
  },
}
