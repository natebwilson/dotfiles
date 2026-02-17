-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "JK", "<Esc>")
vim.keymap.set("n", "oo", "o<Esc>k")

vim.keymap.set("n", "<leader>cb", ":make<CR>", { desc = "Run Makefile" })
