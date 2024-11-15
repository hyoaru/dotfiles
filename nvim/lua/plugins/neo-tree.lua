return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>b', ":Neotree toggle <CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '<C-n>', ":Neotree filesystem reveal left <CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '<C-n>f', function()
      vim.cmd(":Neotree focus")
      vim.opt.relativenumber = true
    end, { noremap = true, silent = true })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "neo-tree",
      callback = function()
        vim.opt.relativenumber = true
      end,
    })

    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      window = {
        width = 30,
        mapping = {
          ["<CR>"] = "open",
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
        follow_current_file = {
          enabled = true,
        },
        group_empty_dirs = true,
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.opt.relativenumber = true
          end,
        },
      },
    })

  end
}
