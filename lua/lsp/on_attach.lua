local function on_attach(client, bufnr)
  require('lsp.keybindings').setup(bufnr)
  require('lsp.diagnostics').setup()
  require('lsp.on_init').setup(client)
end

return on_attach
