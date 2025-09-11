return {
  {
    "steguiosaur/fullerene.nvim",
    config = function()
      require("fullerene").setup({
        terminal_colors = true,
        styles = {
          booleans = { italic = true, bold = true },
        },
        integrations = {
          hop = true,
          telescope = false,
        },
      })
    end,
  },
}
