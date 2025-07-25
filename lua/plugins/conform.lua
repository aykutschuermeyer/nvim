return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      rust = { "rustfmt" },
      lua = { "stylua" },
      python = { "ruff_organize_imports", "ruff_format" },
      cpp = { "clang-format" },
      typescript = { "prettierd", "prettier" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
