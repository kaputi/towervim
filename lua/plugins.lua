return {
  -- Packwe can manage itself as a plugin
  {'wbthomason/packer.nvim'},


  -- ====================
  -- Syntax, LSP, Autocomplete
  -- ====================
  {'neovim/nvim-lspconfig'},
  {
    'kabouzeid/nvim-lspinstall',
    config = function() require'lspinstall'.setup() end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('plugin-settings.treesitter')]]
  },
  {
    "hrsh7th/nvim-compe",
    event = "InsertEnter",
    config = [[require('plugin-settings.compe')]]
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
  -- TODO: vsnip

  -- ====================
  -- CODE
  -- ====================

  -- comments
  {
    'terrortylor/nvim-comment',
    event = "BufRead",
    config = [[require('plugin-settings.comment')]]
  },

  -- Auto pairs
  {
    'windwp/nvim-autopairs',
    --TODO: after = "nvim-compe",
    config = [[require('plugin-settings.autopairs')]]
  },


  -- ====================
  -- UI
  -- ====================

  -- Icons
  {'kyazdani42/nvim-web-devicons'},
  {'ryanoasis/vim-devicons'},

  -- Tabbar, statusbar
  {
    'romgrk/barbar.nvim',
    config = [[require('plugin-settings.barbar')]],
    event = 'BufWinEnter'
  },
  {
    'glepnir/galaxyline.nvim',
    config = [[require('plugin-settings.galaxyline')]],
    event = 'BufWinEnter'
  },

  -- ====================
  -- Tools
  -- ====================

  -- whichkey
  {
    'folke/which-key.nvim',
    config = [[require('plugin-settings.whichkey')]]
  },

  -- File tree
  {
    'kyazdani42/nvim-tree.lua',
    config = [[require('plugin-settings.nvimtree')]]
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
  }

}
