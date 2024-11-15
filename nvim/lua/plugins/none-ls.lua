return {
  "nvimtools/none-ls.nvim",
  lazy = false,
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.erb_format,
        null_ls.builtins.diagnostics.erb_lint,
        --null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.cmd("set softtabstop=2")
    vim.cmd("set shiftwidth=2")
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
