return {
  -- Packwe can manage itself as a plugin
  {'wbthomason/packer.nvim'},


  -- ====================
  -- Syntax, LSP, Autocomplete
  -- ====================
  {'neovim/nvim-lspconfig'},
  {'jose-elias-alvarez/null-ls.nvim'},
  {"tamago324/nlsp-settings.nvim"},
  {
    'kabouzeid/nvim-lspinstall',
    config = function()
      require'lspinstall'.setup()
    end
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  -- },
  {
    "folke/trouble.nvim",
    config =  function()
      require('plugin-settings.trouble')
    end,
  },
  {
    'kaputi/e-kaput.nvim'
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugin-settings.treesitter')
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
    },
    config = function()
      require('plugin-settings.cmp')
    end,

  },
  -- ====================
  -- Snippets
  -- ====================
  -- sniped engine
  {
    "hrsh7th/vim-vsnip",
    config = function()
      require('plugin-settings.vsnip')
    end
  },
  {'dsznajder/vscode-es7-javascript-react-snippets'},

  -- ====================
  -- CODE
  -- ====================

  -- comments
  {
    'terrortylor/nvim-comment',
    event = "BufRead",
    config = function()
      require('plugin-settings.comment')
    end,
  },

  -- Auto pairs
  {
    'windwp/nvim-autopairs',
    after = "nvim-cmp",
    config = function()
      require('plugin-settings.autopairs')
    end,
  },
  --  surround
  {
    'tpope/vim-surround'
  },
  -- auto close html jsx tags
  { 'windwp/nvim-ts-autotag' }, -- uses treesitter
  -- rainbow parentheses
  { 'p00f/nvim-ts-rainbow' },
  -- ====================
  -- UI
  -- ====================

  -- Icons
  {'kyazdani42/nvim-web-devicons'},
  {'ryanoasis/vim-devicons'},

  -- Tabbar, statusbar
  {
    'romgrk/barbar.nvim',
    config = function()
      require('plugin-settings.barbar')
    end,
    event = 'BufWinEnter'
  },
  {
    'glepnir/galaxyline.nvim',
    config = function()
      require('plugin-settings.galaxyline')
    end,
    event = 'BufWinEnter'
  },

  -- ====================
  -- Tools
  -- ====================

  -- whichkey
  {
    'folke/which-key.nvim',
    config = function()
      require('plugin-settings.whichkey')
    end,
    event = "BufWinEnter",
  },

  -- File tree
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('plugin-settings.nvimtree')
    end,
  },

  -- fuzzy  find
  {'nvim-lua/popup.nvim'},
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope.nvim'},

  -- git signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugin-settings.gitsigns")
    end,
    event = "BufRead",
  },
  -- project.nvim
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("plugin-settings.project")
    end,
  },
  {
    'mhinz/vim-startify',
    config = function()
      require("plugin-settings.dashboard")
    end,
  },
  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    event = "BufwinEnter" ,
    config = function ()
      require('plugin-settings.toggleterm')
    end,
  },
  -- text navigation
  {
    "justinmk/vim-sneak",
    config =  function()
      require('plugin-settings.sneak')
    end,
  },
  {
    'lambdalisue/suda.vim',
    config =  function()
      require('plugin-settings.suda')
    end,
  },
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('plugin-settings.colorizer')
    end
  },
  -- TODO: 'liuchengxu/vista.vim'
  -- TODO: Indent guides maybe {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: undotree 'mbbill/undotree'
  -- TODO: cursor in last postion when opening a file 'farmergreg/vim-lastplace'
  -- TODO: vimwiki
}
