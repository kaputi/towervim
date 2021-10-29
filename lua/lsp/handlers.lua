local M = {}

local diagnostics = require('lsp.settings').diagnostics

local virtual_text = diagnostics.virtual_text
local signs = diagnostics.signs

if not virtual_text.active then
  virtual_text = false
end

if not signs.active then
  signs = false
end

function M.setup()
  vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = virtual_text,
      signs = signs,
      underline = diagnostics.underline,
    }
  )

  vim.lsp.handlers['textDocument/hover'] =
    vim.lsp.with(vim.lsp.handlers.hover, {
      border = 'single',
    })

  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    {
      border = 'single',
    }
  )
end

return M
