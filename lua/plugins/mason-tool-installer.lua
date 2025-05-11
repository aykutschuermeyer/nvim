return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- language servers
        "lua-language-server",
        "rust-analyzer",

        -- formatters
        "stylua",

        -- debuggers
        "codelldb"
      },
    },
  },
}
