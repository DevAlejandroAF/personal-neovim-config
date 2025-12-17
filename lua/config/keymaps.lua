-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Remap ESC
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Oil
map("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Oil parent directory" })

-- BufferLine
map("n", "<leader>[", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<leader>]", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- Mason
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- Floaterm
map("n", "<leader>t", "<cmd>FloatermToggle<cr>", { desc = "Floaterm" })

-- Buffer_manager
-- map("n", "<leader>ba", '<Cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { desc = "Buffers manager" })

-- TmuxNavigation
-- map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "Nvim Tmux Navigate Left" })
-- map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "Nvim Tmux Navigate Down" })
-- map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "Nvim Tmux Navigate Up" })
-- map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "Nvim Tmux Navigate Right" })
