return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<leader>[", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<leader>]", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<leader>{", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "<leader>}", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  config = function()
    require("bufferline").setup {
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
         },
        diagnostics = "nvim_lsp"
      }
    }
  end
}
