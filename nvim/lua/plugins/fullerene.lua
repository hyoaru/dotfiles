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
        highlight_overrides = {
          Comment = { bg = "#ff0000" }
        }
      })
    end
  }
}
