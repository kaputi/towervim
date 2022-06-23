Settings = {}

-- === === === === === Vim Options === === === === === === === === === === === ===
require('user.vimOptions')

for k, v in pairs(Settings.vim.opt.options) do
  vim.opt[k] = v
end

-- General append
for k, v in pairs(Settings.vim.opt.append) do
  vim.opt[k]:append(v)
end

-- General prepend
for k, v in pairs(Settings.vim.opt.prepend) do
  vim.opt[k]:prepend(v)
end

-- General remove
for k, v in pairs(Settings.vim.opt.remove) do
  vim.opt[k]:remove(v)
end

-- Set
for k, v in pairs(Settings.vim.set) do
  vim.o[k] = v
end

-- buffer
for k, v in pairs(Settings.vim.buffer) do
  vim.bo[k] = v
end

-- global
for k, v in pairs(Settings.vim.global) do
  vim.go[k] = v
end

-- === === === === === Custom And general options === === === === === === === === === === === ===
require('user.general')
require('user.lsp')

vim.cmd('colorscheme ' .. Settings.general.colorscheme)
