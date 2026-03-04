-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- -- Disable autoformat JSON CSV files for the stupid auto format for translations
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "csv" },
  callback = function()
    vim.b.autoformat = false
    vim.b.disable_autoformat = true
  end,
})
