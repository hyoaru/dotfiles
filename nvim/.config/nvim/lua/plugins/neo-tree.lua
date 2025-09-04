return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
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
  },
}
