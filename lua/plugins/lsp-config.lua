-- plugins/lsp-config.lua
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "clangd", "ts_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
}
