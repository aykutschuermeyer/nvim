return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require "nvim-treesitter.configs"
    configs.setup {
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "lua",
        "query",
        "rust",
        "typescript",
        "vim",
        "vimdoc",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
