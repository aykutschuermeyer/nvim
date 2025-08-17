return {
  "mrcjkb/rustaceanvim",
  version = "^6", -- Recommended
  lazy = false, -- This plugin is already lazy
  ft = "rust",
  config = function()
    local extension_path = vim.fn.expand "~/.local/share/nvim/mason/packages/codelldb/extension/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
    local cfg = require "rustaceanvim.config"
    vim.g.rustaceanvim = {
      dap = {
        adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
      },
      server = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = false,
          },
        },
      },
    }
  end,
}
