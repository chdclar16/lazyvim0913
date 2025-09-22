-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt
opt.wrap = true

-- Disables auto format for stupid json files and stupid csv formatting
vim.g.autoformat_disable_filetypes = { "json", "csv" }
