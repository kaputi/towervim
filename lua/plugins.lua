return {
  -- Packwe can manage itself as a plugin
  { 'wbthomason/packer.nvim' },

  -- ====================
  -- Syntax, LSP, Autocomplete
  -- ====================
  { 'neovim/nvim-lspconfig' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  { 'tamago324/nlsp-settings.nvim' },
  {
    'williamboman/nvim-lsp-installer',
    config = function()
      require('plugin-settings.lspinstall')
    end,
  },
  -- {
  --   'kabouzeid/nvim-lspinstall',
  --   config = function()
  --     local ok, lspinstall = pcall(require('lspinstall'))
  --     if ok then
  --       lspinstall.setup()
  --     end
  --   end,
  --   disbled = true,
  -- },
  -- {
  --   "ray-x/lsp_signature.nvim",
  -- },
  {
    'folke/trouble.nvim',
    config = function()
      require('plugin-settings.trouble')
    end,
  },
  {
    'kaputi/e-kaput.nvim',
    config = function()
      local ok, ekaput = pcall(require, 'e-kaput')
      if ok then
        ekaput.setup({})
      end
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugin-settings.treesitter')
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/vim-vsnip-integ',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-calc',
      'ray-x/cmp-treesitter',
    },
    config = function()
      require('plugin-settings.cmp')
    end,
  },
  {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require('plugin-settings.cmp-tabnine')
    end,
  },

  -- ====================
  -- Snippets
  -- ====================
  -- sniped engine
  {
    'hrsh7th/vim-vsnip',
    config = function()
      require('plugin-settings.vsnip')
    end,
  },
  { 'dsznajder/vscode-es7-javascript-react-snippets' },

  -- ====================
  -- CODE
  -- ====================
  -- comments
  {
    'terrortylor/nvim-comment',
    event = 'BufRead',
    config = function()
      require('plugin-settings.comment')
    end,
  },
  -- Auto pairs
  {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = function()
      require('plugin-settings.autopairs')
    end,
  },
  --  surround
  { 'tpope/vim-surround' },
  -- auto close html jsx tags
  { 'windwp/nvim-ts-autotag' },
  -- uses treesitter
  -- rainbow parentheses
  { 'p00f/nvim-ts-rainbow' },

  -- ====================
  -- UI
  -- ====================
  -- Icons
  { 'kyazdani42/nvim-web-devicons' },
  { 'ryanoasis/vim-devicons' },

  -- Tabbar, statusbar
  {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('plugin-settings.bufferline')
    end,
  },
  {
    'windwp/windline.nvim',
    config = function()
      require('plugin-settings.windline')
    end,
  },
  -- {
  --   'glepnir/galaxyline.nvim',
  --   config = function()
  --     require('plugin-settings.galaxyline')
  --   end,
  --   event = 'BufWinEnter'
  -- },

  -- ====================
  -- Tools
  -- ====================
  -- Vista
  {
    'liuchengxu/vista.vim',
    config = function()
      require('plugin-settings.vista')
    end,
  },
  -- whichkey
  {
    'folke/which-key.nvim',
    config = function()
      require('plugin-settings.whichkey')
    end,
    event = 'BufWinEnter',
  },
  -- File tree
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('plugin-settings.nvimtree')
    end,
  },
  -- fuzzy  find
  { 'nvim-lua/popup.nvim' },
  { 'nvim-lua/plenary.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugin-settings.telescope')
    end,
  },
  { 'nvim-telescope/telescope-media-files.nvim' }, -- git signs
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('plugin-settings.gitsigns')
    end,
    event = 'BufRead',
  },
  -- project.nvim
  -- {
  --   "ahmedkhalf/project.nvim",
  --   config = function()
  --     require("plugin-settings.project")
  --   end,
  -- },
  {
    'goolord/alpha-nvim',
    config = function()
      require('plugin-settings.alpha')
    end,
  },
  -- sessions
  {
    'kaputi/neovim-session-manager',
    config = function()
      require('plugin-settings.session-manager')
    end,
    branch = 'only-on-session',
  },
  --   {
  --     'Shatur/neovim-session-manager',
  --     config = function()
  --       require('plugin-settings.session-manager')
  --     end
  --   }, -- Terminal
  {
    'akinsho/toggleterm.nvim',
    event = 'BufwinEnter',
    config = function()
      require('plugin-settings.toggleterm')
    end,
  },
  -- text navigation
  {
    'justinmk/vim-sneak',
    config = function()
      require('plugin-settings.sneak')
    end,
  },
  {
    'lambdalisue/suda.vim',
    config = function()
      require('plugin-settings.suda')
    end,
  },
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('plugin-settings.colorizer')
    end,
  },
  -- pretty quickfix
  { 'kevinhwang91/nvim-bqf' },
  -- indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    -- TODO: if i require a file, options won't get loaded, plugin doest show on :PackerStatus
    config = function()
      require('plugin-settings.indent-blankline')
    end,
  },

  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: undotree 'mbbill/undotree'
  -- TODO: cursor in last postion when opening a file 'farmergreg/vim-lastplace'
}
