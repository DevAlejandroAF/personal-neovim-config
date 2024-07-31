-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- Remap ESC
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- BufferLine
map("n", "<leader>[", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<leader>]", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- Oil
map("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Oil" })

-- Mason
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- TmuxNavigation
map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})
