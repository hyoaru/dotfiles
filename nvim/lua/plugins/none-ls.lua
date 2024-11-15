return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- Ruby
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        -- JS/TS
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
