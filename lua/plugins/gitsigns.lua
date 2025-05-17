return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  keys = {
    {
      "<leader>dd",
      function()
        vim.cmd "Gitsigns preview_hunk"
      end,
      desc = "Show git difference for hunk",
    },
    {
      "<leader>dr",
      function()
        vim.cmd "Gitsigns reset_hunk"
      end,
      desc = "Rollback hunk",
    },
    {
      "<leader>db",
      function()
        vim.cmd "Gitsigns diffthis"
      end,
      desc = "Show git difference for buffer",
    },
  },
}
