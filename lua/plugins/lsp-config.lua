return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lspconfig = require("lspconfig")

    -- TypeScript Language Server (tsserver)
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })

    -- Lua Language Server (lua_ls)
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          formatting = {
            enable = true,
          },
        },
      },
    })

    lspconfig.stylua.setup({
      capabilities = capabilities,
    })

    -- Python Language Server (pyright)
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    -- Emmet Language Server
    lspconfig.emmet_language_server.setup({
      capabilities = capabilities,
    })

    -- Prettier
    lspconfig.prettier.setup({
      capabilities = capabilities,
      filetypes = {"javascript", "typescript", "css", "less", "scss"},
      settings = {
        ["prettier.configure"] = {
          printSettings = true,
          semi = false,
          singleQuote = true,
        },
      },
    })

    -- Astro Language Server
    lspconfig.astro.setup({
      capabilities = capabilities,
    })

    -- Go Land Language Server (gopls)
    lspconfig.gopls.setup({
      capabilities = capabilities,
    })

    -- JSON Language Server (jsonls)
    lspconfig.jsonls.setup({
      capabilities = capabilities,
    })

    -- Rust Analyzer
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        rust = {
          completionRanking = {
            "semantic",
            "keyword",
          },
        },
      },
    })

    -- Volar Language Server (volar)
    lspconfig.volar.setup({
      capabilities = capabilities,
    })

    -- ESLint Language Server
    lspconfig.eslint.setup({
      capabilities = capabilities,
    })

    -- Angular Language Service (angularls)
    lspconfig.angularls.setup({
      capabilities = capabilities,
    })

    -- Tailwind CSS Language Server (tailwindcss)
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })

    -- Svelte Language Server
    lspconfig.svelte.setup({
      capabilities = capabilities,
    })

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
