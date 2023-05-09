local lspConfigOk, lspconfig = pcall(require, 'lspconfig')
-- local lspInstallOk, lsp_installer = pcall(require, 'nvim-lsp-installer')
local lspInstallOk, lsp_installer = pcall(require, 'mason-lspconfig')

if not lspConfigOk or not lspInstallOk then
  return
end

local globalOpts = {
  on_attach = require('lsp.on_attach'),
  capabilities = require('lsp.capabilities'),
  -- handlers = require('lsp.handlers'),
}

-- now with mason
lsp_installer.setup_handlers({
  -- -- The first entry (without a key) will be the default handler
  --          -- and will be called for each installed server that doesn't have
  --          -- a dedicated handler.
  --          function (server_name) -- default handler (optional)
  --              require("lspconfig")[server_name].setup {}
  --          end,
  --          -- Next, you can provide targeted overrides for specific servers.
  --          ["rust_analyzer"] = function ()
  --              require("rust-tools").setup {}
  --          end,
  --          ["lua_ls"] = function ()
  --              lspconfig.lua_ls.setup {
  --                  settings = {
  --                      Lua = {
  --                          diagnostics = {
  --                              globals = { "vim" }
  --                          }
  --                      }
  --                  }
  --              }
  --          end,
  --      })
  function(server_name)
    lspconfig[server_name].setup(globalOpts)
  end,
})

-- local installedServers = lsp_installer.get_installed_servers()

-- for _, server in ipairs(installedServers) do
--   local opt = server:get_default_options()

--   opt = vim.tbl_extend('force', opt, globalOpts)

--   if Settings.lsp.servers[server.name] ~= nil then
--     opt = vim.tbl_extend('force', opt, Settings.lsp.servers[server.name])
--   end

--   lspconfig[server.name].setup(opt)
-- end

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

local configs = require('lspconfig.configs')
local util = require('lspconfig.util')

if not configs.glsl then
  configs.glsl = {
    default_config = {
      cmd = { 'glslls' }, -- GLSL lsp executable from (https://github.com/svenstaro/glsl-language-server)
      filetypes = { 'glsl' },

      root_dir = function(fname)
        return util.root_pattern('.git')(fname)
      end,
      single_file_support = true,
      capabilities = {
        textDocument = {
          completion = {
            editsNearCursor = true,
          },
        },
        offsetEncoding = { 'utf-8', 'utf-16' },
      },
    },
    commands = {},
    docs = {
      description = [[
      Basic LSP support for GLSL using glslls --stdio
    ]],
    },
  }
end

lspconfig.glsl.setup(globalOpts)
