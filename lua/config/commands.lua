vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})

vim.api.nvim_create_user_command("Light", function()
  vim.cmd("colorscheme default | set background=light")
end, {})

vim.api.nvim_create_user_command("Dark", function()
  vim.cmd("colorscheme oxocarbon | set background=dark")
end, {})

-- Set default colorscheme to light
vim.cmd("Light")
