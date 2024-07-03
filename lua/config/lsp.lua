require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" },
})

require("lspconfig")["rust_analyzer"].setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

require("rust-tools").setup({
  server = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
})
