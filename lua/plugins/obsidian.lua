return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre ~/Obsidian/Vaults/*.md",
    "BufNewFile ~/Obsidian/Vaults/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Obsidian/Vaults/Personal",
      },
    },
    notes_subdir = "05-Limbo",
    new_notes_location = "05-Limbo",
    attachments = {
      img_folder = "03-Content", -- Folder for image attachments
    },
    -- Key mappings for Obsidian commands
    mappings = {
      -- "Obsidian follow"
      ["<leader>of"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes "obsidian done"
      ["<leader>od"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Create a new newsletter issue
      ["<leader>onn"] = {
        action = function()
          return require("obsidian").commands.new_note("Newsletter-Issue")
        end,
        opts = { buffer = true },
      },
      ["<leader>ont"] = {
        action = function()
          return require("obsidian").util.insert_template("Newsletter-Issue")
        end,
        opts = { buffer = true },
      },
    },
  },
}
