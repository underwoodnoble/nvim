-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local vim = vim

vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.mouse = "a" -- allow mouse to be used in nvim

-- Tab
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true -- show number
vim.opt.relativenumber = false -- show absolute number
vim.opt.cursorline = true -- highligth cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right
vim.opt.termguicolors = true -- enable 24-bit RGB color in the TUI
vim.opt.showmode = false -- do not show vim mode

-- Searching
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = true -- highligth matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- make it case sensitive if an uppercase is entered
