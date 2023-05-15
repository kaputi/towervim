local pluginConfDir = 'user.plugConfig.'
local loadConfig = function(configName)
  pcall(require, pluginConfDir .. configName)
end

return {
  -- Packwe can manage itself as a plugin
  { 'wbthomason/packer.nvim' },

  -- -- -- -- -- -- -- -- -- -- -- -- - -- -- -- -- - --
  -- TODO:
  -- this is temporary until the isue with neovim cursorhold gets fixed
  -- {
  --   'antoinemadec/FixCursorHold.nvim',
  --   config = 'vim.g.cursorhold_updatetime = 300',
  -- },
  -- -- -- -- -- -- -- -- -- -- -- -- - -- -- -- -- - --

  -- ============================================================
  -- LSP
  -- ============================================================
  {
    'neovim/nvim-lspconfig',
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
  },
  -- {
  --   'williamboman/nvim-lsp-installer',
  --   config = loadConfig('lspinstall'),
  -- },
  {
    'williamboman/mason.nvim',
    run = ':MasonUpdate',
    config = loadConfig('mason'),
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = loadConfig('mason-lspconfig'),
  },
  {
    'ray-x/lsp_signature.nvim',
    config = loadConfig('lsp_signature'),
  },
  {
    'folke/trouble.nvim',
    config = loadConfig('trouble'),
  },
  {
    'rmagatti/goto-preview',
    config = loadConfig('goto-preview'),
  },
  -- {
  --   'lvimuser/lsp-inlayhints.nvim',
  --   config = loadConfig('lsp-inlayhint'),
  -- },
  -- ============================================================
  -- AUTOCOMPLETE / SNIPETTS
  -- ============================================================
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/vim-vsnip-integ',
      -- 'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      -- 'hrsh7th/cmp-emoji',
      -- 'hrsh7th/cmp-calc',
      'ray-x/cmp-treesitter',
    },
    config = loadConfig('cmp'),
  },
  -- snipet engine
  {
    'hrsh7th/vim-vsnip',
    config = loadConfig('vsnip'),
  },
  -- {
  --   'github/copilot.vim',
  --   config = loadConfig('copilot'),
  -- },
  -- ============================================================
  -- TREESITTER
  -- ============================================================
  {
    'nvim-treesitter/nvim-treesitter',
    -- run = ':TSUpdate',
    config = loadConfig('treesitter'),
  },
  -- { 'nvim-treesitter/playground' },
  -- ============================================================
  -- BETTER CODE
  -- ============================================================
  {
    'RRethy/vim-illuminate',
    config = loadConfig('illuminate'),
  },
  -- comments
  {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = loadConfig('comment'),
  },
  -- todo comments
  {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = loadConfig('todo-comments'),
  },
  {
    'windwp/nvim-autopairs',
    config = loadConfig('autopairs'),
  },
  --  surround
  {
    'tpope/vim-surround',
  },
  -- auto close html jsx tags
  {
    'windwp/nvim-ts-autotag',
  },
  -- uses treesitter
  -- rainbow parentheses
  -- {
  --   'p00f/nvim-ts-rainbow',
  --   commit = '',
  -- },
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = loadConfig('colorizer'),
  },
  -- text navigation
  {
    'ggandor/lightspeed.nvim',
  },
  -- indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    config = loadConfig('indent-blankline'),
  },
  {
    'simrat39/symbols-outline.nvim',
    config = loadConfig('symbols-outline'),
  },
  {
    'windwp/nvim-spectre',
    config = loadConfig('spectre'),
  },
  -- {
  --   'LunarVim/bigfile.nvim',
  --   config = function()
  --     require('bigfile').setup({
  --       rules = {
  --         {
  --           size = 1,
  --           features = {
  --             'indent_blankline',
  --             'illuminate',
  --             -- 'lsp',
  --             -- 'treesitter',
  --             'syntax',
  --             'matchparen',
  --             'vimopts',
  --           },
  --         },
  --         { size = 50, features = { 'filetype' } },
  --       },
  --     })
  --   end,
  -- },
  -- ============================================================
  -- UI
  -- ============================================================
  -- Icons
  { 'kyazdani42/nvim-web-devicons' },
  { 'ryanoasis/vim-devicons' },
  -- Tabbar, statusbar
  -- {
  --   'akinsho/bufferline.nvim',
  --   branch = 'main',
  --   requires = 'kyazdani42/nvim-web-devicons',
  --   config = loadConfig('bufferline'),
  -- },
  {
    'windwp/windline.nvim',
    config = loadConfig('windline'),
  },
  -- themes
  { 'NLKNguyen/papercolor-theme' },
  { 'savq/melange' },
  { 'lunarvim/horizon.nvim' },
  {
    'folke/tokyonight.nvim',
    config = 'vim.g.tokyonight_style = "night"',
  },
  {
    'LunarVim/darkplus.nvim',
  },
  { 'lunarvim/Onedarker.nvim' },
  {
    'lunarvim/synthwave84.nvim',
    config = function()
      local status_ok, synth = pcall(require, 'synthwave84')
      if not status_ok then
        return
      end
      synth.setup({
        glow = {
          error_msg = false,
          type2 = false,
          func = false,
          keyword = false,
          operator = false,
          buffer_current_target = false,
          buffer_visible_target = false,
          buffer_inactive_target = false,
        },
      })
    end,
  },
  {
    'rcarriga/nvim-notify',
    config = loadConfig('notify'),
  },
  {
    'j-hui/fidget.nvim',
    config = function()
      -- local fidget_ok, fidget = pcall(require, 'fidget')
      -- if not fidget_ok then
      -- return
      -- end
      -- fidget.setup({})
      require('fidget').setup({})
    end,
  },
  -- ============================================================
  -- TOOLS
  -- ============================================================
  -- whichkey
  {
    'folke/which-key.nvim',
    config = loadConfig('whichkey'),
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = loadConfig('neotree'),
  },
  -- fuzzy  find
  { 'nvim-lua/popup.nvim' },
  { 'nvim-lua/plenary.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    config = loadConfig('telescope'),
  },
  {
    'goolord/alpha-nvim',
    config = loadConfig('alpha'),
  },
  -- sessions
  {
    'kaputi/neovim-session-manager',
    config = loadConfig('session-manager'),
    branch = 'only-on-session',
  },
  {
    'akinsho/toggleterm.nvim',
    branch = 'main',
    config = loadConfig('toggleterm'),
  },
  -- save as sudo
  { 'lambdalisue/suda.vim', config = loadConfig('suda') },
  -- pretty quickfix
  {
    'kevinhwang91/nvim-bqf',
    branch = 'main',
  },
  -- undo tree
  { 'mbbill/undotree' },
  -- {
  --   'oberblastmeister/neuron.nvim',
  --   requires = {
  --     'nvim-telescope/telescope.nvim',
  --     'nvim-lua/popup.nvim',
  --     'nvim-lua/plenary.nvim',
  --   },
  --   config = loadConfig('neuron'),
  -- },
  -- {
  -- {
  --   'mickael-menu/zk-nvim',
  --   config = loadConfig('zk-nvim'),
  -- },
  {
    'jakewvincent/mkdnflow.nvim',
    rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
    config = loadConfig('mkdnflow'),
  },
  -- VIMWIKI
  --   'vimwiki/vimwiki',
  --   setup = loadConfig('vimwiki'),
  --   ft = { 'markdown', 'vimwiki' },
  -- },
  -- {
  --   'kaputi/telescope-vimwiki',
  --   requires = {
  --     'nvim-telescope/telescope.nvim',
  --   },
  --   config = function()
  --     local ok_telescope, telescope = pcall(require, 'telescope')

  --     if ok_telescope then
  --       telescope.load_extension('wikis')
  --     end
  --   end,
  -- },
  {
    -- SHOWS PREVIEW OF LINE WHEN USING :[linenumber]
    'nacro90/numb.nvim',
    config = loadConfig('numb'),
  },
  {
    -- smooth scroll
    'karb94/neoscroll.nvim',
    config = loadConfig('neoscroll'),
  },
  -- delete buffers without changing layout
  {
    'famiu/bufdelete.nvim',
  },
  {
    'ethanholz/nvim-lastplace',
    config = function()
      local ok, lastplace = pcall(require, 'nvim-lastplace')
      if ok then
        lastplace.setup({})
      end
    end,
  },
  -- {
  --   'chentoast/marks.nvim',
  --   config = loadConfig('marks'),
  -- },
  -- {
  --   'MattesGroeger/vim-bookmarks',
  --   requires = {
  --     'tom-anders/telescope-vim-bookmarks.nvim',
  --   },
  -- },
  -- {
  --   'ThePrimeagen/harpoon',
  -- },
  -- ============================================================
  -- GIT
  -- ============================================================
  -- lazygit
  { 'kdheepak/lazygit.nvim', branch = 'main' },
  -- git signs
  {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = loadConfig('gitsigns'),
  },
  {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
  },
  {
    'sindrets/diffview.nvim',
    config = loadConfig('diffview'),
  },
  -- ============================================================
  -- NEW
  -- ============================================================
  {
    'lewis6991/impatient.nvim',
    config = loadConfig('impatient'),
  },
  {
    'anuvyklack/pretty-fold.nvim',
    requires = 'anuvyklack/nvim-keymap-amend',
    config = loadConfig('pretty-fold'),
  },
  {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig',
    config = loadConfig('navic'),
  },
  -- {
  --   'SmiteshP/nvim-gps',
  --   requires = 'nvim-treesitter/nvim-treesitter',
  --   config = loadConfig('nvim-gps'),
  --   commit = 'be4bb5b',
  -- },
  -- ============================================================
  -- NOT IN USE / CHECK / FIX
  -- ============================================================
  -- CHECK-----------------------------
  -- { 'andymass/vim-matchup' },
  -- FIX -------------------------------
  -- { 'nvim-telescope/telescope-media-files.nvim' },
  {
    'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile',
  },
  -- OFF -------------------------------
  -- cursor on last place when open file === === REPLACE BY LUA
  -- NO SE SI ESTO FUNCUINA BIEN
  -- { 'elianiva/telescope-npm.nvim' ,
  -- config =  function()
  --     local ok_telescope, telescope = pcall(require, 'telescope')
  --     if ok_telescope then
  --       telescope.load_extension('npm')
  --     end
  -- end
  -- },

  -- needs better config
  -- {
  --   'beauwilliams/focus.nvim',
  --   config = function()
  --     require('pluginConfigs.focus')
  --   end,
  -- },

  -- {
  --   'kaputi/telescope-notebooks',
  --   config = function ()
  --     local status_ok, notebooks = pcall(require, 'telescope-notebooks')
  --     if not status_ok then
  --       return
  --     end
  --     notebooks.setup({
  --       notebooks_dir = '/home/eduardo/Documents/notes'
  --     })
  --   end
  -- },
  {
    'kaputi/darktower.nvim',
    -- config = function()
    --   local status_ok, darktower = pcall(require, 'darktower')
    --   if not status_ok then
    --     return
    --   end
    --   darktower.setup({})
    -- end,
  },

  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: lazyloading
}
