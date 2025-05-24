return {
  "CopilotC-Nvim/copilotchat.nvim",
  dependencies = {
    { "github/copilot.vim" },
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  lazy = true,
  build = "make tiktoken",
  opts = {},
  keys = {
    {
      "<leader>pp",
      "<cmd>CopilotChatToggle<cr>",
      mode = "n",
      desc = "CopilotChat toggle chat",
    },
    {
      "<leader>pc",
      "<cmd>CopilotChatStop<cr>",
      mode = "n",
      desc = "CopilotChat stop chat",
    },
    {
      "<leader>pr",
      "<cmd>CopilotChatReset<cr>",
      mode = "n",
      desc = "CopilotChat clear buffer and chat history",
    },
  },
}
