return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod" },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
  end,
}
