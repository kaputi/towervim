require('lsp').setup('json')

-- local schemas = {}
-- local nlsp_ok, jsonls_settings = pcall(require, 'nlspsettings.jsonls')
-- if nlsp_ok then
--   schemas = jsonls_settings.get_default_schemas()
-- end
-- local nlspsettings = require('nlspsettings')
-- local seeeet = nlspsettings.get_settings('./' ,'jsonls')
-- if seeeet == nil then seeeet = 'pupu' end
-- print('lalalkajfksdajfkasdj')
-- print(vim.inspect(seeeet))
-- print('lalalkajfksdajfkasdj')

-- -- print(nlspsettings.get_settings('','jsonls'))

-- -- print(vim.inspect(jsonls_settings))
-- local lsp = {
--   provider = 'jsonls',
--   setup = {
--     cmd = {
--       'node',
--       DATA_PATH
--         .. '/lspinstall/jsonls/node_modules/.bin/vscode-json-language-server',
--       '--stdio',
--     },
--     settings = {
--       json = {
--         schemas = schemas,
--         --   = {
--         --   {
--         --     fileMatch = { "package.json" },
--         --     url = "https://json.schemastore.org/package.json",
--         --   },
--         -- },
--       },
--     },
--     commands = {
--       Format = {
--         -- function()
--         --   vim.lsp.buf.range_formatting(
--         --     {},
--         --     { 0, 0 },
--         --     { vim.fn.line('$'), 0 }
--         --   )
--         -- end,
--       },
--     },
--   },
-- }


-- require('lspconfig')[lsp.provider].setup({
--   cmd = lsp.setup.cmd,
--   settings = lsp.setup.settings
-- })
