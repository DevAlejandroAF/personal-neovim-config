return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup()
    vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", {})
    -- vim.keymap.set("n", "-", "<CMD>Oil<CR>", {})
    -- vim.keymap.set("n", "<leader>-", oil.toggle_float, {})
  end,
}
