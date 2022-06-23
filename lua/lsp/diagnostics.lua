local M = {}

local virtual_text = Settings.lsp.diagnostics.virtual_text
local signs = Settings.lsp.diagnostics.signs

if virtual_text ~= nil and not virtual_text.active then
  virtual_text = false
end

if signs ~= nil and not signs.active then
  signs = false
end

M.setup = function()
  -- TODO: check floats
  vim.diagnostic.config({
    virtual_text = virtual_text,
    signs = signs,
    underline = Settings.lsp.diagnostics.underline,
    --     float = {
    --      source="always",
    --     },
    severity_sort = Settings.lsp.diagnostics.severity_sort,
  })
end

return M
