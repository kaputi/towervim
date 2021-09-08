local home_dir = vim.loop.os_homedir()

vim.opt.rtp:remove(home_dir .. "/.config/nvim")
vim.opt.rtp:remove(home_dir .. "/.config/nvim/after")
vim.opt.rtp:append(home_dir .. "/.towervim")
vim.opt.rtp:append(home_dir .. "/.towervim/after")

vim.opt.rtp:remove(home_dir .. "/.local/share/nvim/site")
vim.opt.rtp:remove(home_dir .. "/.local/share/nvim/site/after")
vim.opt.rtp:append(home_dir .. "/.local/share/towervim/site")
vim.opt.rtp:append(home_dir .. "/.local/share/towervim/site/after")

vim.cmd [[let &packpath = &runtimepath]]

-- GLOBALS
require 'core.globals'

-- FUNCTIONS
require 'functions'

-- CONFIG
local config = require 'core.config'
config:load()

-- PLUGINS
-- TODO: fine tune plgin settings
require 'core.plugins'

-- TODO: maybe colorscheme needs to be loaded after plugins

-- AUTOCOMMANDS
local autocmd = require 'core.autocmd'
autocmd:setup()

-- LSP
require 'lsp'.config()

-- require("null-ls").config({})
-- require("lspconfig")["null-ls"].setup({})

-- TODO: for setting up ls with json files
-- local lsp_settings_status_ok,
-- if lsp_settings_status_ok then
  -- lsp_settings.setup {
  --  config_home = home_dir .. "/.towervim/lsp-settings",
  --}
-- end
-- KEYMAPPINGS
local mappings = require 'core.mappings'
mappings:setup()


-- TODO:
--  find a way to get nvimtree to use the path of the session oppend with startify
--  change color  for matcing ([{}])
--  checkout kristijanhusak/orgmode.nvim
--  install vimwiki
--  maybe upgrade from compe to cmp
--  configure telescope properly(esc 1 time etc)
--  Ranger as file explorer
