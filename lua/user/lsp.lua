Settings.lsp = {
  installPath = DATA_PATH .. '/lspinstall',
  servers = {
    intelephense = {
      settings = { intelephense = { environment = { phpVersion = '7.4' } } },
    },
    jsonls = {
      settings = {
        schemas = {
          {
            fileMatch = { '/package.json' },
            url = 'https://json.schemastore.org/package.json',
          },
          {
            fileMatch = { '/tsconfig.json' },
            url = 'https://json.schemastore.org/tsconfig.json',
          },
          {
            fileMatch = { '/jsconfig.json' },
            url = 'https://json.schemastore.org/jsconfig.json',
          },
          {
            fileMatch = { '/.eslintrc.json', '.eslintrc' },
            url = 'https://json.schemastore.org/eslintrc.json',
          },
          {
            fileMatch = { '/babelrc.json' },
            url = 'https://json.schemastore.org/eslintrc.json',
          },
        },
      },
    },
    pyright = {},
    sumneko_lua = {
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = vim.split(package.path, ';'),
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim', 'lvim' },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = {
              -- [vim.fn.expand('~/.config/towervim/lua')] = true,
              [CONFIG_PATH .. '/lua'] = true,
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            },
            maxPreload = 100000,
            preloadFileSize = 1000,
          },
        },
      },
    },
  },
}

Settings.formatter = {
  enabled = true,
  formatters = {
    prettierd = {
      prefer_local = 'node_modules/.bin',
    },
    stylua = {
      extra_args = {
        '--column-width=80',
        '--indent-type=Spaces',
        '--indent-width=2',
        '--quote-style=AutoPreferSingle',
      },
    },
  },
}

Settings.linter = {
  enabled = false,
  linters = {
    eslint_d = {
      prefer_local = 'node_modules/.bin',
    },
  },
}
