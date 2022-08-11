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
  {
    'antoinemadec/FixCursorHold.nvim',
    config = 'vim.g.cursorhold_updatetime = 300',
    commit = '1bfb32e',
  },
  -- -- -- -- -- -- -- -- -- -- -- -- - -- -- -- -- - --

  -- ============================================================
  -- LSP
  -- ============================================================
  { 'neovim/nvim-lspconfig', commit = '9278dfb' },
  { 'jose-elias-alvarez/null-ls.nvim', commit = 'ff40739' },
  {
    'williamboman/nvim-lsp-installer',
    config = loadConfig('lspinstall'),
    commit = '5904749',
  },
  {
    'ray-x/lsp_signature.nvim',
    config = loadConfig('lsp_signature'),
    commit = '4983797',
  },
  {
    'folke/trouble.nvim',
    config = loadConfig('trouble'),
    commit = 'da61737',
  },
  {
    'rmagatti/goto-preview',
    config = loadConfig('goto-preview'),
    commit = '37116fb',
  },
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
    commit = 'df6734a',
  },
  -- snipet engine
  {
    'hrsh7th/vim-vsnip',
    config = loadConfig('vsnip'),
    commit = '8f199ef',
  },
  -- ============================================================
  -- TREESITTER
  -- ============================================================
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = loadConfig('treesitter'),
    commit = 'f5aa00d',
  },
  { 'nvim-treesitter/playground' },
  -- ============================================================
  -- BETTER CODE
  -- ============================================================
  { 'RRethy/vim-illuminate', commit = 'c82e6d0' },
  -- comments
  {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = loadConfig('comment'),
    commit = '2c26a00',
  },
  {
    'windwp/nvim-autopairs',
    config = loadConfig('autopairs'),
    commit = '4a95b39',
  },
  --  surround
  { 'tpope/vim-surround', commit = 'bf3480d' },
  -- auto close html jsx tags
  { 'windwp/nvim-ts-autotag', commit = '044a05c' },
  -- uses treesitter
  -- rainbow parentheses
  -- {
  --   'p00f/nvim-ts-rainbow',
  --   commit = ''
  -- },
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = loadConfig('colorizer'),
    commit = '36c610a',
  },
  -- text navigation
  {
    'ggandor/lightspeed.nvim',
    commit = '79519bf',
  },
  -- indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    config = loadConfig('indent-blankline'),
    commit = '42fe62e',
  },
  {
    'simrat39/symbols-outline.nvim',
    config = loadConfig('symbols-outline'),
    commit = '',
  },
  -- ============================================================
  -- UI
  -- ============================================================
  -- Icons
  { 'kyazdani42/nvim-web-devicons' },
  { 'ryanoasis/vim-devicons' },
  -- Tabbar, statusbar
  {
    'akinsho/bufferline.nvim',
    branch = 'main',
    requires = 'kyazdani42/nvim-web-devicons',
    config = loadConfig('bufferline'),
    commit = '68839d6',
  },
  {
    'windwp/windline.nvim',
    config = loadConfig('windline'),
    commit = '48af656',
  },
  -- themes
  { 'NLKNguyen/papercolor-theme' },
  { 'savq/melange' },
  {
    'folke/tokyonight.nvim',
    config = 'vim.g.tokyonight_style = "night"',
  },
  {
    'rcarriga/nvim-notify',
    config = loadConfig('notify'),
    commit = '7caeaae',
  },
  -- ============================================================
  -- TOOLS
  -- ============================================================
  -- whichkey
  {
    'folke/which-key.nvim',
    config = loadConfig('whichkey'),
    commit = 'bd4411a',
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
    commit = 'd88b44d',
  },
  {
    'goolord/alpha-nvim',
    config = loadConfig('alpha'),
    commit = 'ef27a59',
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
    commit = '8f2e78d',
  },
  -- save as sudo
  { 'lambdalisue/suda.vim', config = loadConfig('suda') },
  -- pretty quickfix
  {
    'kevinhwang91/nvim-bqf',
    branch = 'main',
    commit = 'd4bc26c',
  },
  -- undo tree
  { 'mbbill/undotree' },
  -- VIMWIKI
  {
    'vimwiki/vimwiki',
    setup = loadConfig('vimwiki'),
    ft = { 'markdown', 'vimwiki' },
    commit = '63af6e7',
  },
  {
    'kaputi/telescope-vimwiki',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      local ok_telescope, telescope = pcall(require, 'telescope')

      if ok_telescope then
        telescope.load_extension('wikis')
      end
    end,
  },
  {
    -- SHOWS PREVIEW OF LINE WHEN USING :[linenumber]
    'nacro90/numb.nvim',
    config = loadConfig('numb'),
    commit = '453c50a',
  },
  {
    -- smooth scroll
    'karb94/neoscroll.nvim',
    config = loadConfig('neoscroll'),
    commit = '71c8fad',
  },
  -- delete buffers without changing layout
  {
    'famiu/bufdelete.nvim',
    commit = '46255e4',
  },
  {
    'ethanholz/nvim-lastplace',
    config = function()
      local ok, lastplace = pcall(require, 'nvim-lastplace')
      if ok then
        lastplace.setup({})
      end
    end,
    commit = '30fe710',
  },
  {
    -- 'chentau/marks.nvim',
    'chentoast/marks.nvim',
    config = loadConfig('marks'),
    commit = 'bb25757',
  },
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
    commit = '4883988',
  },
  {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    commit = '2b33d2e',
  },
  {
    'sindrets/diffview.nvim',
    config = loadConfig('diffview'),
    commit = '2e77bed',
  },
  -- ============================================================
  -- NEW
  -- ============================================================
  {
    'lewis6991/impatient.nvim',
    config = loadConfig('impatient'),
    commit = '969f2c5',
  },
  {
    'anuvyklack/pretty-fold.nvim',
    requires = 'anuvyklack/nvim-keymap-amend',
    config = loadConfig('pretty-fold'),
    commit = 'e6385d6',
  },
  { "SmiteshP/nvim-navic"},
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
    commit = '185bb91',
  },
  -- OFF -------------------------------
  -- cursor on last place when open file === === REPLACE BY LUA
  -- { 'farmergreg/vim-lastplace' },

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

  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: lazyloading
}
