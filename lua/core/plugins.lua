local fn = vim.fn
local home_dir = vim.loop.os_homedir()
-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local install_path = home_dir
  .. '/.local/share/towervim/site/pack/packer/start/packer.nvim'
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
  package_root = home_dir .. '/.local/share/towervim/site/pack',
  -- compile_path = home_dir .. '/.towervim/plugin/packer_compiled.lua',
  compile_path = CONFIG_PATH .. '/plugin/packer_compile.lua',
  display = {
    open_fn = function()
      return util.float({ border = 'rounded' })
    end,
  },
})

packer.startup(function(use)
  local plugins = require('plugins')

  for _, plugin in ipairs(plugins) do
    use(plugin)
  end
end)
