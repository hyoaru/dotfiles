return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Keymaps for manual control of NeoTree
    vim.keymap.set('n', '<C-n>b', ":Neotree toggle <CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '<C-n>', ":Neotree filesystem reveal left <CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '<C-n>f', function()
      vim.cmd(":Neotree focus")
      vim.opt.relativenumber = true
    end, { noremap = true, silent = true })

    -- Auto show NeoTree upon startup and focus on the main panel
    vim.api.nvim_create_autocmd("VimEnter", {
      pattern = "*",
      callback = function()
        -- Reveal NeoTree
        vim.cmd(":Neotree filesystem reveal left")
        -- Focus on the main panel (the first window in the current session)
        vim.cmd("wincmd p")  -- Switch to the last accessed window
      end,
    })

    -- Auto set relative number in NeoTree buffer
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "neo-tree",
      callback = function()
        vim.opt.relativenumber = true
      end,
    })

    -- NeoTree setup
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      window = {
        width = 40,
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
        use_cwd = false,
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
