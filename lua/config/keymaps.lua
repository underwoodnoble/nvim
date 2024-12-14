-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-f>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C-n>", "<Plug>(copilot-next)", {
  expr = false,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C-p>", "<Plug>(copilot-previous)", {
  expr = false,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C-s>", "<Plug>(copilot-suggest)", {
  expr = false,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
