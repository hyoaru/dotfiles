return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require ("mason-lspconfig").setup({
        ensure_installed = {"lua_ls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
      -- vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }


}
