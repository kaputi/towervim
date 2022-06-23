local M = {}

local virtual_text = Settings.lsp.diagnostics.virtual_text
local signs = Settings.lsp.diagnostics.signs

if virtual_text then
  virtual_text = {
    active = true,
    prefix = '',
    spacing = 0,
  }
end

if signs then
  signs = SignsLsp
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
