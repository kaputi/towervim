local lspConfigOk, lspconfig = pcall(require, 'lspconfig')
local lspInstallOk, lsp_installer = pcall(require, 'nvim-lsp-installer')

if not lspConfigOk or not lspInstallOk then
  return
end

local installedServers = lsp_installer.get_installed_servers()

local globalOpts = {
  on_attach = require('lsp.on_attach'),
  capabilities = require('lsp.capabilities'),
  -- handlers = require('lsp.handlers'),
}

for _, server in ipairs(installedServers) do
  local opt = server:get_default_options()

  opt = vim.tbl_extend('force', opt, globalOpts)

  if Settings.lsp.servers[server.name] ~= nil then
    opt = vim.tbl_extend('force', opt, Settings.lsp.servers[server.name])
  end

  lspconfig[server.name].setup(opt)
end
