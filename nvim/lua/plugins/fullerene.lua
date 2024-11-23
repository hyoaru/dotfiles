return {
  {
    "steguiosaur/fullerene.nvim",
    config = function()
      require("fullerene").setup({
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
