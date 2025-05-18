return {
  "CopilotC-Nvim/copilotchat.nvim",
  dependencies = {
    { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  lazy = true,
  build = "make tiktoken", -- Only on MacOS or Linux
  opts = {},
  keys = {
    {
      "<leader>cc",
      "<cmd>CopilotChatToggle<cr>",
      mode = "n",
      desc = "Toggle Copilot chat",
    },
    {
      "<leader>cs",
      "<cmd>CopilotChatStop<cr>",
      mode = "n",
      desc = "Stop Copilot chat",
    },
    {
      "<leader>cr",
      "<cmd>CopilotChatReset<cr>",
      mode = "n",
      desc = "Reset Copilot chat",
    },
  },
}
