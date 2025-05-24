return {
  "copilotc-nvim/copilotchat.nvim",
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
      "<leader>pR",
      "<cmd>CopilotChatReset<cr>",
      mode = "n",
      desc = "CopilotChat clear buffer and chat history",
    },
    {
      "<leader>pe",
      "<cmd>CopilotChatExplain<cr>",
      mode = "v",
      desc = "CopilotChat explain selection",
    },
    {
      "<leader>pf",
      "<cmd>CopilotChatFix<cr>",
      mode = "v",
      desc = "CopilotChat fix selection",
    },
    {
      "<leader>pr",
      "<cmd>CopilotChatReview<cr>",
      mode = "v",
      desc = "CopilotChat review selection",
    },
    {
      "<leader>po",
      "<cmd>CopilotChatOptimize<cr>",
      mode = "v",
      desc = "CopilotChat optimize selection",
    },
    {
      "<leader>pd",
      "<cmd>CopilotChatDocs<cr>",
      mode = "v",
      desc = "CopilotChat document selection",
    },
    {
      "<leader>pt",
      "<cmd>CopilotChatTests<cr>",
      mode = "v",
      desc = "CopilotChat generate tests for selection",
    },
  },
}
