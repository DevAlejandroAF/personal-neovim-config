return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup({
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
        end,
      },
    })
    vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", {})
    -- vim.keymap.set("n", "-", "<CMD>Oil<CR>", {})
    -- vim.keymap.set("n", "<leader>-", oil.toggle_float, {})
  end,
}
