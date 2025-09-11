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
  { "nyoom-engineering/oxocarbon.nvim" },
  { "EdenEast/nightfox.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  { "datsfilipe/vesper.nvim" },
  {
    "bettervim/yugen.nvim",
    config = function()
      vim.cmd.colorscheme("yugen")
    end,
  },
  {
    "killitar/obscure.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
