return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>ff", 
      function() require("fzf-lua").files() end,
      desc="Find files in current directory",
    },
    {
      "<leader>fc", 
      function() require("fzf-lua").files({cwd=vim.fn.stdpath("config")}) end,
      desc="Find files in config directory",
    },
    {
      "<leader>gf",
      function() require("fzf-lua").live_grep() end,
      desc="Grep files in current directory",
    },
    {
      "<leader>fb",
      function() require("fzf-lua").buffers() end,
      desc="Find existing buffers",
    },
    {
      "<leader>gb",
      function() require("fzf-lua").lgrep_curbuf() end,
      desc="Grep current buffer",
    },
  }
}

