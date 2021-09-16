local home_dir = vim.loop.os_homedir()

vim.opt.rtp:remove(home_dir .. "/.config/nvim")
vim.opt.rtp:remove(home_dir .. "/.config/nvim/after")
-- vim.opt.rtp:append(home_dir .. "/.towervim")
-- vim.opt.rtp:append(home_dir .. "/.towervim/after")
vim.opt.rtp:append(home_dir .. "/.config/towervim")
vim.opt.rtp:append(home_dir .. "/.config/towervim/after")

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
require 'core.plugins'

-- AUTOCOMMANDS
local autocmd = require 'core.autocmd'
autocmd:setup()

-- LSP
require 'lsp'.config()

require("null-ls").config({})
require("lspconfig")["null-ls"].setup({})

-- TODO: for setting up ls with json files
-- local lsp_settings_status_ok,
-- if lsp_settings_status_ok then
  -- lsp_settings.setup {
   -- config_home = CONFIG_PATH .. "/towervim/lsp-settings",
  --}
-- end
-- KEYMAPPINGS
local mappings = require 'core.mappings'
mappings:setup()


-- TODO:
--  checkout kristijanhusak/orgmode.nvim
--  install vimwiki
--  configure telescope properly(esc 1 time etc)
--  Ranger as file explorer
--  make diferent windows diferent(maybe slight background change)
