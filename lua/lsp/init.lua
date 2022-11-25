SignsLsp = {
  { name = 'DiagnosticSignError', text = Settings.gui.diagnostics.error },
  { name = 'DiagnosticSignWarn', text = Settings.gui.diagnostics.warning },
  { name = 'DiagnosticSignHint', text = Settings.gui.diagnostics.hint },
  { name = 'DiagnosticSignInfo', text = Settings.gui.diagnostics.info },
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


vim.api.nvim_create_augroup('_lsp', {})
vim.api.nvim_create_autocmd({ 'CursorHold' }, {
  group = '_lsp',
  callback = function()
    require('user.functions').lineDiagnostics()
  end,
})
