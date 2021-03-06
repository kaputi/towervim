local schemas = {}
local status_ok, jsonls_settings = pcall(require, 'nlspsettings.jsonls')
if status_ok then
  schemas = jsonls_settings.get_default_schemas()
end

-- TODO: there must be a better way to get the paths installed with LspInstall

local M = {
  scss = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {},
    lsp = {
      provider = 'cssls',
      setup = {
        cmd = {
          'node',
          DATA_PATH
            .. '/lspinstall/cssls/node_modules/.bin/vscode-css-language-server',
          '--stdio',
        },
      },
    },
  },
  css = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {},
    lsp = {
      provider = 'cssls',
      setup = {
        cmd = {
          'node',
          DATA_PATH
            .. '/lspinstall/cssls/node_modules/.bin/vscode-css-language-server',
          '--stdio',
        },
      },
    },
  },
  docker = {
    formatters = {},
    linters = {},
    lsp = {
      provider = 'dockerls',
      setup = {
        cmd = {
          DATA_PATH
            .. '/lspinstall/dockerfile/node_modules/.bin/docker-langserver',
          '--stdio',
        },
      },
    },
  },
  html = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {},
    lsp = {
      provider = 'html',
      setup = {
        cmd = {
          'node',
          DATA_PATH
            .. '/lspinstall/html/node_modules/.bin/vscode-html-language-server',
          '--stdio',
        },
      },
    },
  },
  json = {
    formatters = {
      -- {
      --   exe = "json_tool",
      --   args = {},
      -- },
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {
      { exe = 'eslint', args = {} },
      { exe = 'eslint_d', default = true, args = {} },
    },
    lsp = {
      provider = 'jsonls',
      setup = {
        cmd = {
          'node',
          DATA_PATH
            .. '/lspinstall/jsonls/node_modules/.bin/vscode-json-language-server',
          '--stdio',
        },
        settings = {
          json = {
            schemas = schemas,
            --   = {
            --   {
            --     fileMatch = { "package.json" },
            --     url = "https://json.schemastore.org/package.json",
            --   },
            -- },
          },
        },
        -- commands = {
        --   Format = {
        --     -- function()
        --     --   vim.lsp.buf.range_formatting(
        --     --     {},
        --     --     { 0, 0 },
        --     --     { vim.fn.line('$'), 0 }
        --     --   )
        --     -- end,
        --   },
        -- },
      },
    },
  },
  lua = {
    formatters = {
      {
        exe = 'stylua',
        args = {
          '--column-width=80',
          '--indent-type=Spaces',
          '--indent-width=2',
          '--quote-style=AutoPreferSingle',
        },
      },
      -- {
      --   exe = "lua_format",
      --   args = {
      --     "-i", "--no-keep-simple-function-one-line", "--column-limit=80",
      --     "--indent-width=2", "--tab-width=2", "--no-use-tab",
      --     "--no-align-parameter", "--no-align-args"
      --   }
      -- }
    },
    linters = {},
    lsp = {
      provider = 'sumneko_lua',
      setup = {
        cmd = {
          DATA_PATH
            .. '/lspinstall/sumneko_lua/extension/server/bin/Linux/lua-language-server',
          -- DATA_PATH .. '/lspinstall/lua/sumneko-lua-language-server',
          '-E',
          -- DATA_PATH .. '/lspinstall/lua/main.lua',
          DATA_PATH .. '/lspinstall/sumneko_lua/extension/server/bin/Linux/main.lua',
        },
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
                [vim.fn.expand('~/.config/towervim/lua')] = true,
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
  },
  php = {
    formatters = {
      -- {
      --   exe = "phpcbf",
      --   args = {},
      -- },
    },
    linters = {},
    lsp = {
      provider = 'intelephense',
      setup = {
        cmd = {
          DATA_PATH .. 'lspinstall/php/node_modules/.bin/intelephense',
          '--stdio',
        },
        filetypes = { 'php', 'phtml' },
        settings = { intelephense = { environment = { phpVersion = '7.4' } } },
      },
    },
  },
  javascript = {
    formatters = {
      { exe = 'prettier', args = {} }, -- {
      --   exe = "prettier_d_slim",
      --   args = {},
      -- },
      { exe = 'prettierd', default = true, args = {} },
    },
    -- @usage can be {"eslint"} or {"eslint_d"}
    linters = {
      { exe = 'eslint', args = {} },
      { exe = 'eslint_d', default = true, args = {} },
    },
    lsp = {
      provider = 'tsserver',
      setup = {
        cmd = {
          DATA_PATH
            .. '/lspinstall/tsserver/node_modules/.bin/typescript-language-server',
          '--stdio',
        },
      },
    },
  },
  javascriptreact = {
    formatters = {
      { exe = 'prettier', args = {} }, -- {
      --   exe = "prettier_d_slim",
      --   args = {},
      -- },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {
      { exe = 'eslint', args = {} },
      { exe = 'eslint_d', default = true, args = {} },
    },
    lsp = {
      provider = 'tsserver',
      setup = {
        cmd = {
          DATA_PATH
            .. '/lspinstall/tsserver/node_modules/.bin/typescript-language-server',
          '--stdio',
        },
      },
    },
  },
  python = {
    formatters = {
      -- {
      --   exe = "yapf",
      --   args = {},
      -- },
      -- {
      --   exe = "isort",
      --   args = {},
      -- },
    },
    linters = {},
    lsp = {
      provider = 'pyright',
      setup = {
        cmd = {
          DATA_PATH .. '/lspinstall/python/node_modules/.bin/pyright-langserver',
          '--stdio',
        },
      },
    },
  },
  sh = {
    formatters = {
      {
        exe = 'shfmt',
        args = {},
      },
    },
    linters = {},
    lsp = {
      provider = 'bashls',
      setup = {
        cmd = {
          DATA_PATH .. '/lspinstall/bash/node_modules/.bin/bash-language-server',
          'start',
        },
      },
    },
  },
  typescript = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
      -- {
      --   exe = "prettier_d_slim",
      --   args = {},
      -- },
    },
    linters = {
      { exe = 'eslint', args = {} },
      { exe = 'eslint_d', default = true, args = {} },
    },
    lsp = {
      provider = 'tsserver',
      setup = {
        cmd = {
          -- TODO:
          DATA_PATH .. '/lspinstall/tsserver/node_modules/.bin/typescript-language-server',
          '--stdio',
        },
      },
    },
  },
  typescriptreact = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
      -- {
      --   exe = "prettier_d_slim",
      --   args = {},
      -- },
    },
    -- @usage can be {"eslint"} or {"eslint_d"}
    linters = {
      { exe = 'eslint', args = {} },
      { exe = 'eslint_d', default = true, args = {} },
    },
    lsp = {
      provider = 'tsserver',
      setup = {
        cmd = {
          -- TODO:
          DATA_PATH .. '/lspinstall/tsserver/node_modules/.bin/typescript-language-server',
          '--stdio',
        },
      },
    },
  },
  vim = {
    formatters = {},
    linters = {},
    lsp = {
      provider = 'vimls',
      setup = {
        cmd = {
          DATA_PATH .. '/lspinstall/vim/node_modules/.bin/vim-language-server',
          '--stdio',
        },
      },
    },
  },
  vue = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
      -- {
      --   exe = "prettier_d_slim",
      --   args = {},
      -- },
    },
    linters = {},
    lsp = {
      provider = 'vuels',
      setup = {
        cmd = { DATA_PATH .. '/lspinstall/vuels/node_modules/.bin/vls' },
        root_dir = function(fname)
          local util = require('lspconfig/util')
          return util.root_pattern('package.json')(fname)
            or util.root_pattern('vue.config.js')(fname)
            or vim.fn.getcwd()
        end,
        init_options = {
          config = {
            vetur = {
              completion = {
                autoImport = true,
                tagCasing = 'kebab',
                useScaffoldSnippets = true,
              },
              useWorkspaceDependencies = true,
              validation = { script = true, style = true, template = true },
            },
          },
        },
      },
    },
  },
  yaml = {
    formatters = {
      { exe = 'prettier', args = {} },
      { exe = 'prettierd', default = true, args = {} },
    },
    linters = {},
    lsp = {
      provider = 'yamlls',
      setup = {
        cmd = {
          DATA_PATH .. '/lspinstall/yaml/node_modules/.bin/yaml-language-server',
          '--stdio',
        },
      },
    },
  },
}

return M
