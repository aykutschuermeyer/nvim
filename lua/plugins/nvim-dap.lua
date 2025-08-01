return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "igorlfs/nvim-dap-view",
      ---@module 'dap-view'
      ---@type dapview.Config
      opts = {},
      keys = {
        {
          "<leader>DD",
          "<cmd>DapViewToggle<cr>",
          desc = "Debug toggle view",
        },
      },
    },
  },
  keys = {
    {
      "<f3>",
      function()
        require("dap").clear_breakpoints()
      end,
      desc = "Debug clear breakpoints",
    },
    {
      "<f4>",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Debug toggle breakpoint",
    },
    {
      "<f5>",
      function()
        require("dap").continue()
      end,
      desc = "Debug continue",
    },
    {
      "<f6>",
      function()
        require("dap").restart()
      end,
      desc = "Debug restart",
    },
    {
      "<f7>",
      function()
        require("dap").step_into()
      end,
      desc = "Debug step into",
    },
    {
      "<f8>",
      function()
        require("dap").step_over()
      end,
      desc = "Debug step over",
    },
    {
      "<f9>",
      function()
        require("dap").down()
      end,
      desc = "Debug go down the call stack",
    },
    {
      "<f10>",
      function()
        require("dap").up()
      end,
      desc = "Debug go up the call stack",
    },
  },
  config = function()
    local dap = require "dap"
    local dapview = require "dap-view"

    -- Autostart Dap View
    dap.listeners.before.attach.dapview_config = function()
      dapview.open()
    end
    dap.listeners.before.launch.dapview_config = function()
      dapview.open()
    end
    dap.listeners.before.event_terminated.dapview_config = function()
      dapview.close()
    end
    dap.listeners.before.event_exited.dapview_config = function()
      dapview.close()
    end

    -- Node.js adapter configuration
    dap.adapters.node2 = {
      type = "executable",
      command = "node",
      args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
    }

    -- Alternative: use vscode-js-debug (more modern, recommended)
    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = {
          os.getenv "HOME" .. "/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
          "${port}",
        },
      },
    }

    -- TypeScript/JavaScript configurations
    dap.configurations.typescript = {
      {
        name = "Launch file",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        protocol = "inspector",
        console = "integratedTerminal",
        -- Resolve TypeScript files
        resolveSourceMapLocations = { "${workspaceFolder}/**", "!**/node_modules/**" },
        -- Skip node_modules
        skipFiles = { "<node_internals>/**" },
        -- For TypeScript, use ts-node
        runtimeArgs = { "-r", "ts-node/register" },
      },
      {
        name = "Launch with ts-node",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
        runtimeExecutable = "npx",
        runtimeArgs = { "ts-node", "${file}" },
        sourceMaps = true,
        skipFiles = { "<node_internals>/**" },
      },
      {
        name = "Launch npm script",
        type = "pwa-node",
        request = "launch",
        cwd = "${workspaceFolder}",
        runtimeExecutable = "npm",
        runtimeArgs = { "run", "${input:npmScript}" },
        sourceMaps = true,
        skipFiles = { "<node_internals>/**" },
      },
      {
        name = "Attach to process",
        type = "pwa-node",
        request = "attach",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**" },
      },
      {
        name = "Debug Jest Tests",
        type = "pwa-node",
        request = "launch",
        -- jest debug command
        runtimeExecutable = "node",
        runtimeArgs = { "--inspect-brk", "${workspaceFolder}/node_modules/.bin/jest", "--runInBand" },
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**" },
      },
      {
        name = "Debug Mocha Tests",
        type = "pwa-node",
        request = "launch",
        program = "${workspaceFolder}/node_modules/mocha/bin/_mocha",
        args = { "--require", "ts-node/register", "${workspaceFolder}/test/**/*.ts" },
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**" },
      },
    }

    dap.configurations.javascript = dap.configurations.typescript
  end,
}
