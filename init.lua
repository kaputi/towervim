-- === === === === === BOOTSRAP === === === === === === === === === === === ===
DATA_PATH = vim.env.TVIM_DATA_DIR
CACHE_PATH = vim.env.TVIM_CACHE_DIR
CONFIG_PATH = vim.env.TVIM_CONFIG_DIR

local home_dir = vim.loop.os_homedir()

vim.opt.rtp:remove(home_dir .. '/.config/nvim')
vim.opt.rtp:remove(home_dir .. '/.config/nvim/after')
vim.opt.rtp:append(CONFIG_PATH)
vim.opt.rtp:append(CONFIG_PATH .. '/after')

vim.opt.rtp:remove(home_dir .. '/.local/share/nvim/site')
vim.opt.rtp:remove(home_dir .. '/.local/share/nvim/site/after')
vim.opt.rtp:append(DATA_PATH .. '/site')
vim.opt.rtp:append(DATA_PATH .. '/site/after')

vim.cmd([[let &packpath = &runtimepath]])

local create_dir_if_no_exist = require('core.tvUtils').create_dir_if_no_exist

create_dir_if_no_exist(CACHE_PATH)
create_dir_if_no_exist(DATA_PATH)
-- === === === === === BOOTSRAP === === === === === === === === === === === ===
require('core.settings')
require('core.plugins')
require('user.autocmds')
require('lsp')
require('core.keybindings')

print(Settings.general.colorscheme)
vim.cmd('colorscheme ' .. Settings.general.colorscheme)
