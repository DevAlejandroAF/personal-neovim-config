return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_by_name = {
          "node_modules",
        },
        never_show = {
          ".git",
          ".DS_Store",
        },
      },
    },
  },
}
