return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate", -- auto-update Mason registry
  config = function()
    require("mason").setup()
  end,
}
