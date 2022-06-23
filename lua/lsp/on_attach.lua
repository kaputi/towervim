local function on_attach(client, bufnr)
  require('lsp.keybindings').setup(bufnr)
  require('lsp.diagnostics').setup()
end

return on_attach
