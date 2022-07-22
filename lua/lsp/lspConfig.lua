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

-- local name = 'glslls'
-- local cmd = { 'glslls', '--stdin' }
-- if not name then
--   print('You have not defined a server name, please edit minimal_init.lua')
-- end

-- local configs = require('lspconfig.configs')

-- if not configs[name] then
--   configs[name] = {
--     default_config = {
--       autostart = true,
--       cmd = cmd,
--       filetypes = { 'glsl', 'frag', 'vert' },
--       root_dir = lspconfig.util.find_git_ancestor,
--       -- No luck with `util.find_node_modules_ancestor` or `util.root_pattern('package.json', 'tsconfig.json')` either
--       -- I have verified that there is a `.git` folder in the root dir, `tsconfig.json` file and `package.json` file in the root dir, and a `node_modules` folder in the root dir
--       settings = {},
--     },
--   }
-- end

-- lspconfig[name].setup({
--   cmd = cmd,
--   on_attach = require('lsp.on_attach'),
-- })
