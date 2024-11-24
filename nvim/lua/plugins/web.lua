return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      ruby_lsp = {},
      emmet_language_server = {},
      html = {},
      solargraph = {},
      tsserver = {},
      eslint = {},
      cssls = { settings = { css = { lint = { unknownAtRules = "ignore" } } } },
    },
  },
}
