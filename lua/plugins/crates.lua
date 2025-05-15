return {
  "saecki/crates.nvim",
  ft = {"toml"},
  config = function()
    require("crates").setup({
      completo = {
        cmp = {
          enabled = true
        },
      },
    })
    require("cmp").setup.buffer({
      sources = {{ name = "crates" }}
    })
  end,
}
