return {
  -- Packwe can manage itself as a plugin
  {'wbthomason/packer.nvim'},


  -- ====================
  -- Syntax, LSP, Autocomplete
  -- ====================
  {'neovim/nvim-lspconfig'},
  {'jose-elias-alvarez/null-ls.nvim'},
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
    "hrsh7th/nvim-compe",
    event = "InsertEnter",
    config = function()
      require('plugin-settings.compe')
    end,
    -- wants = "vim-vsnip",
    -- requires = {
    -- {
    --   "hrsh7th/vim-vsnip",
    --   wants = "friendly-snippets",
    --   event = "InsertCharPre",
    -- },
    -- {
    --   "rafamadriz/friendly-snippets",
    --   event = "InsertCharPre",
    -- },
    -- },
  },
  {
    "hrsh7th/vim-vsnip",
    event = "InsertEnter",
  },
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
    after = "nvim-compe",
    config = function()
      require('plugin-settings.autopairs')
    end,
  },
  --  surround
  {
    'tpope/vim-surround'
  },

  -- TODO: 'windwp/nvim-ts-autotag' -- uses treesitter

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
  -- TODO: 'liuchengxu/vista.vim'
  -- TODO: Indent guides maybe {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: undotree 'mbbill/undotree'
  -- TODO: cursor in last postion when opening a file 'farmergreg/vim-lastplace'
}
