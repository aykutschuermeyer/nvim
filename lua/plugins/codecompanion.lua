return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
    },
  },
  keys = {
    {
      "<leader>cc",
      "<cmd>CodeCompanionChat toggle<cr>",
      mode = "n",
      desc = "CodeCompanion toggle chat",
    },
  },
}
