return {
  "github/copilot.vim",
  lazy = true,
  keys = {
    {
      "<leader>cc",
      "<cmd>Copilot<cr>",
      desc = "Copilot load",
    },
    {
      "<leader>ce",
      "<cmd>Copilot enable<cr>",
      desc = "Copilot enable inline suggestions",
    },
    {
      "<leader>cd",
      "<cmd>Copilot disable<cr>",
      desc = "Copilot disable inline suggestions",
    },
  },
}
