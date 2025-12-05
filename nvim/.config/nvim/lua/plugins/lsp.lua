return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
        },
        gopls = {
          settings = {
            gopls = {
              hints = {
                parameterNames = false,
              },
              analyses = {
                ST1000 = false,
              },
            },
          },
        },
      },
    },
  },
  {},
}
