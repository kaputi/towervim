local home_dir = vim.loop.os_homedir()

vim.opt.rtp:remove(home_dir .. '/.config/nvim')
vim.opt.rtp:remove(home_dir .. '/.config/nvim/after')
vim.opt.rtp:append(home_dir .. '/.config/towervim')
vim.opt.rtp:append(home_dir .. '/.config/towervim/after')

vim.opt.rtp:remove(home_dir .. '/.local/share/nvim/site')
vim.opt.rtp:remove(home_dir .. '/.local/share/nvim/site/after')
vim.opt.rtp:append(home_dir .. '/.local/share/towervim/site')
vim.opt.rtp:append(home_dir .. '/.local/share/towervim/site/after')

vim.cmd([[let &packpath = &runtimepath]])

-- GLOBALS
require('core.globals')

-- FUNCTIONS
require('functions')

-- CONFIG
local config = require('core.config')
config:load()

-- PLUGINS
require('core.plugins')

-- AUTOCOMMANDS
local autocmd = require('core.autocmd')
autocmd:setup()

-- LSP
local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
local null_ls_ok, null_ls = pcall(require, 'null-ls')
if lspconfig_ok and null_ls_ok then
  require('lsp').config()

  null_ls.config({})
  lspconfig['null-ls'].setup({})
end

-- json configs for lsp
local nlsp_settings_status_ok, lsp_settings = pcall(require, 'nlspsettings')
if nlsp_settings_status_ok then
  lsp_settings.setup({ config_home = CONFIG_PATH .. '/nlspsettings' })
end

-- KEYMAPPINGS
local mappings = require('core.mappings')
mappings:setup()
