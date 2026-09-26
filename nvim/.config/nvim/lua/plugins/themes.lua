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
  { "EdenEast/nightfox.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  { "datsfilipe/vesper.nvim" },
  { "bettervim/yugen.nvim" },
  {
    "killitar/obscure.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
