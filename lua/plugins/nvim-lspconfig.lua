return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "j-hui/fidget.nvim",
    "Saghen/blink.cmp",
  },
  config = function()
    require("mason").setup({})
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
      callback = function(event)
        vim.keymap.set("n", "gd", require("fzf-lua").lsp_definitions, {desc="Goto definition"})
        vim.keymap.set("n", "gr", require("fzf-lua").lsp_references, {desc="Goto references"})
        vim.keymap.set("n", "gI", require("fzf-lua").lsp_implementations, {desc="Goto implementation"})
        vim.keymap.set("n", "<leader>D", require("fzf-lua").lsp_typedefs, {desc="Type definition"})
        vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {desc="Rename"})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc="Code action"})
        vim.keymap.set("n", "gD", vim.lsp.buf.code_action, {desc="Goto declaration"})
      end,
    })

    vim.diagnostic.config({
      severity_sort = true,
      float = { border = "rounded", source = "if_many" },
      underline = { severity = vim.diagnostic.severity.HINT},
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E ",
          [vim.diagnostic.severity.WARN] = "W ",
          [vim.diagnostic.severity.INFO] = "I ",
          [vim.diagnostic.severity.HINT] = "H ",
        },
      },
    })

    local original_capabilities = vim.lsp.protocol.make_client_capabilities()
    local capabilities = require("blink.cmp").get_lsp_capabilities(original_capabilities)

    local servers = {
      lua_ls = {},
      rust_analyzer = {},
      stylua = {},
    }
    local ensure_installed = vim.tbl_keys(servers or {})
    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

    require("mason-lspconfig").setup({
      ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
