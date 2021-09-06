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

-- CONFIG
local config = require 'core.config'
config:load()

-- PLUGINS
require 'core.plugins'

-- TODO: maybe colorscheme needs to be loaded after plugins

-- AUTOCOMMANDS
-- LSP

-- KEYMAPPINGS
local mappings = require 'core.mappings'
mappings:setup()
