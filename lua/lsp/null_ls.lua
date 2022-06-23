local null_ls_ok, null_ls = pcall(require, 'null-ls')

if not null_ls_ok then
  return
end

local sources = {}

local linterNames = {}
local formatterNames = {}

local formatter = Settings.formatter

for key, value in pairs(formatter.formatters) do
  table.insert(formatterNames, key)
  table.insert(sources, null_ls.builtins.formatting[key].with(value))
end

local linter = Settings.linter
for key, value in pairs(linter.linters) do
  table.insert(linterNames, key)
  table.insert(sources, null_ls.builtins.diagnostics[key].with(value))
end

null_ls.setup({
  sources = sources,
  -- debug = true
})

if not linter.enabled then
  for _, value in pairs(linterNames) do
    null_ls.disable({ name = value })
  end
end

if not formatter.enabled then
  for _, value in pairs(formatterNames) do
    null_ls.disable({ name = value })
  end
end
