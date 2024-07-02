-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- CUSTOM CHANGES TOM

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" },
})

-- config rust-analyzer with lspconfig
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
