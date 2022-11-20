local function on_attach(client, bufnr)
  require('lsp.keybindings').setup(bufnr)
  require('lsp.diagnostics').setup()
  require('lsp.on_init').setup(client)

  local navic_ok, navic = pcall(require, 'nvim-navic')
  if navic_ok then
    if client.server_capabilities.documentSymbolProvider then
      navic.attach(client, bufnr)
    end
  end

  local inlayHints_ok, inlayHints = pcall(require, 'lsp-inlayhints')
  if inlayHints_ok then
    inlayHints.on_attach(client, bufnr)
  end
end

return on_attach
