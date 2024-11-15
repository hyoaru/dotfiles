return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require('nvim-autopairs').setup({
        check_ts = true,
        enable_check_bracket_line = true,
      })
    end
  }
}
