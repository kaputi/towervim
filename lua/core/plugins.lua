local fn = vim.fn
local install_path = DATA_PATH .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  vim.cmd('packadd packer.nvim')
end

local packer = require('packer')

local util = require('packer.util')

packer.init({
  package_root = DATA_PATH .. '/site/pack',
  compile_path = CONFIG_PATH .. '/plugin/packer_compile.lua',
  snapshot_path = CACHE_PATH .. '/packer-snapshots', -- Default save directory for s
  display = {
    open_fn = function()
      return util.float({ border = 'rounded' })
    end,
  },
  max_jobs = 3,
  git = {
    clone_timeout = 120, -- Timeout, in seconds, for git clones
  },
})

packer.startup(function(use)
  local plugins = require('user.plugins')
  for _, plugin in ipairs(plugins) do
    use(plugin)
  end
end)
