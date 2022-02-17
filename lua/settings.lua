local M = {}

M.colorscheme = 'towervim'

-- this will be set with vim.opt.OPTION
M.general = {
  opt = {
    autoindent = true,
    backup = false,
    breakindent = true,
    clipboard = 'unnamed',
    cmdheight = 2,
    colorcolumn = '81',
    completeopt = { 'menuone', 'noselect' },
    -- conceallevel = 0, -- so that `` is visible in markdown files
    encoding = 'utf-8',
    fileencoding = 'utf-8',
    fillchars = 'vert:│',
-- opt.fillchars       = "fold: "
    foldlevel = 99 ,
    foldtext      = "[[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]",
    -- foldmethod = 'manual',
    -- foldmethod = 'indent',
    foldmethod = 'expr',
    foldexpr = 'nvim_treesitter#foldexpr()',
    foldnestmax = 2,
    -- foldminlines = 0,
    -- foldlevel = 20,
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    laststatus = 2,
    -- laststatus = 0,
    linebreak = true,
    mouse = 'a',
    pumheight = 10,
    pumblend = 25,
    showmode = false,
    showtabline = 2,
    smartcase = true,
    smarttab = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = true,
    directory = CACHE_PATH .. '/swap',
    termguicolors = true,
    textwidth = 0,
    timeoutlen = 500,
    undodir = CACHE_PATH .. '/undo',
    undofile = true,
    updatetime = 300,
    wrapmargin = 0,
    writebackup = false,
    expandtab = true,
    shiftwidth = 2,
    showbreak = '->->',
    tabstop = 2,
    cursorline = true,
    cursorcolumn = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = 'yes',
    wrap = false,
    spell = false,
    spelllang = 'en',
    scrolloff = 8,
    sidescrolloff = 15,
    winhighlight = 'Normal:Normal,NormalNC:ColorColumn',
  },

  -- this will be set with vim.opt.OPTION:append(...) = :set+=
  append = {
    shortmess = 'c',
    listchars = 'precedes:<,extends:>',
  },

  -- this will be set with vim.opt.OPTIONL:prepend(...) = :set^=
  prepend = {},

  -- this will be set with vim.opt.OPTIONL:remove(...) = :set-=
  remove = {},
}

-- this will be set with vim.o.OPTION = :set OPTION
M.set = {}

-- this will be set with vim.bo.OPTION = :setlocal OPTION
M.buffer = {}

-- this will be set with vim.go.OPTION = :setglobal OPTION
M.global = {}

-- any code inside run function will be run after
function M:run() end

M.lsp = {
  installPath = DATA_PATH .. '/lspinstall',
  diagnostics = {
    signs = {
      active = true,
      values = {
        -- { name = 'LspDiagnosticsSignError', text = '' },
        -- { name = 'LspDiagnosticsSignWarning', text = '' },
        -- { name = 'LspDiagnosticsSignHint', text = '' },
        -- { name = 'LspDiagnosticsSignInformation', text = '' },
        { name = 'DiagnosticSignError', text = '' },
        { name = 'DiagnosticSignWarn', text = '' },
        { name = 'DiagnosticSignHint', text = '' },
        { name = 'DiagnosticSignInfo', text = '' },
      },
    },
    virtual_text = {
      active = false,
      prefix = '',
      spacing = 0,
    },
    underline = true,
    severity_sort = true,
  },
  highlight =  true,
  format_on_save = false,
  kind = {
    -- "   (Text) ",
    -- "   (Method)",
    -- "   (Function)",
    -- "   (Constructor)",
    -- " ﴲ  (Field)",
    -- "[] (Variable)",
    -- "   (Class)",
    -- " ﰮ  (Interface)",
    -- "   (Module)",
    -- " 襁 (Property)",
    -- "   (Unit)",
    -- "   (Value)",
    -- " 練 (Enum)",
    -- "   (Keyword)",
    -- "   (Snippet)",
    -- "   (Color)",
    -- "   (File)",
    -- "   (Reference)",
    -- "   (Folder)",
    -- "   (EnumMember)",
    -- " ﲀ  (Constant)",
    -- " ﳤ  (Struct)",
    -- "   (Event)",
    -- "   (Operator)",
    -- "   (TypeParameter)",
    Class = ' ',
    Color = ' ',
    Constant = 'ﲀ ',
    Constructor = ' ',
    Enum = '練',
    EnumMember = ' ',
    Event = ' ',
    Field = ' ',
    File = '',
    Folder = ' ',
    Function = ' ',
    Interface = 'ﰮ ',
    Keyword = ' ',
    Method = ' ',
    Module = ' ',
    Operator = '',
    Property = ' ',
    Reference = ' ',
    Snippet = ' ',
    Struct = ' ',
    Text = ' ',
    TypeParameter = ' ',
    Unit = '塞',
    Value = ' ',
    Variable = ' ',
  },
  servers = {
    cssls = {},
    dockerls = {},
    html = {},
    intelephense = {
      settings = { intelephense = { environment = { phpVersion = '7.4' } } },
    },
    jsonls = {
      settings = {
        schemas = {
          {
            fileMatch = { "/package.json" },
            url= "https://json.schemastore.org/package.json"
          },
          {
            fileMatch = { "/tsconfig.json" },
            url = "https://json.schemastore.org/tsconfig.json"
          },
          {
            fileMatch = { "/jsconfig.json" },
            url = "https://json.schemastore.org/jsconfig.json"
          },
          {
            fileMatch = { "/.eslintrc.json", ".eslintrc" },
            url = "https://json.schemastore.org/eslintrc.json"
          },
          {
            fileMatch = { "/babelrc.json" },
            url = "https://json.schemastore.org/eslintrc.json"
          }
        }
      }
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
    tsserver = {},
    vimls = {},
    yamlls = {},
  }

}

M.formatter = {
  enabled = true,
  formatters = {
    prettierd = {},
    stylua = {
      args = {
      '--column-width=80',
      '--indent-type=Spaces',
      '--indent-width=2',
      '--quote-style=AutoPreferSingle',
      }
    }
  }
}

M.linter = {
  enabled = false,
  linters = {
    eslint_d = {}
  }
}

return M
