-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map("n", "<leader>[", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<leader>]", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Oil" })
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })
