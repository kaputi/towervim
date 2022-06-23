SignsLsp = {
  { name = 'DiagnosticSignError', text = Settings.gui.diagnostics.error },
  { name = 'DiagnosticSignWarn', text = Settings.gui.diagnostics.warning },
  { name = 'DiagnosticSignHint', text = Settings.gui.diagnostics.hint },
  { name = 'DiagnosticSignInfo', text = Settings.gui.diagnostics.into },
}

for _, sign in ipairs(SignsLsp) do
  vim.fn.sign_define(sign.name, {
    texthl = sign.name,
    text = sign.text,
    numhl = sign.name,
  })
end

-- Item Kind
vim.lsp.protocol.CompletionItemKind = Settings.gui.kind

require('lsp.lspConfig')
require('lsp.null_ls')
