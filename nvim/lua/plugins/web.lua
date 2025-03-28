return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      tailwindcss = {},
      ruby_lsp = {},
      emmet_language_server = {},
      html = {},
      tsserver = {},
      eslint = {},
      cssls = { settings = { css = { lint = { unknownAtRules = "ignore" } } } },
    },
  },
}
