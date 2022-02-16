local M = {}

function M:load()
  local settings = require('settings')

  -- General
  for k, v in pairs(settings.general.opt) do
    vim.opt[k] = v
  end

  -- TODO:
  -- General append
  for k, v in pairs(settings.general.append) do
    vim.opt[k]:append(v)
  end

  -- General prepend
  -- for k, v in pairs(settings.general.prepend) do
  --   vim.opt[k]:prepend = v
  -- end

  -- General remove
  -- for k, v in pairs(settings.general.remove) do
  --   vim.opt[k]:remove = v
  -- end

  -- Set
  for k, v in pairs(settings.set) do
    vim.o[k] = v
  end

  -- buffer
  for k, v in pairs(settings.buffer) do
    vim.bo[k] = v
  end

  -- global
  for k, v in pairs(settings.global) do
    vim.go[k] = v
  end

  vim.cmd('colorscheme ' .. settings.colorscheme)

  settings:run()
end

return M
