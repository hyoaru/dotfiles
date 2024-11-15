return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = {
        disabled_filetypes = {'NvimTree', 'packer', 'startify', 'Dashboard'},
        globalstatus = true,
      }
    })
  end
}
