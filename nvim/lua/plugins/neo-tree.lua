return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
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
