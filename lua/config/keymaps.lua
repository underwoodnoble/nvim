-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>t", ":split | term<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>T", ":vsplit | term<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qb", ":bp<bar>sp<bar>bn<bar>bd<CR>")
