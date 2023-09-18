return {
    'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},
},
    

    config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
          -- see :help lsp-zero-keybindings
          -- to learn the available actions
          lsp.default_keymaps({buffer = bufnr})
        end)


          local lspconfig = require('lspconfig')

          -- Bash: bashls
          lspconfig.bashls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- CSS: cssls
          lspconfig.cssls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            css = {
              lint = { unknownAtRules = "ignore" },
            },
          })

          -- HTML: html
          lspconfig.html.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- JSON: jsonls
          lspconfig.jsonls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- Lua: lua_ls
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
              Lua = {
                runtime = { version = "LuaJIT" },
                diagnostics = { globals = { "vim" } },
                telemetry = { enable = false },
              },
            },
          })

          -- Markdown: marksman
          lspconfig.marksman.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- Python: pyright
          lspconfig.pyright.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- Rust: rust_analyzer
          lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          -- TypeScript: tsserver
          lspconfig.tsserver.setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

        lsp.setup()
        end,
  }



        -- (Optional) Configure lua language server for neovim

