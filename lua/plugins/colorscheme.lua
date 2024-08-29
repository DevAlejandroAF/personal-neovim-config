return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    "datsfilipe/vesper.nvim",
    lazy = false,
    name = "vesper",
    priority = 1000,
    config = function()
      require("vesper").setup({
        transparent = false, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      })
      -- vim.cmd.colorscheme("vesper")
    end,
  },
  {
    "shatur/neovim-ayu",
    lazy = false,
    name = "ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })
      vim.cmd.colorscheme("ayu")
    end,
  },
}
