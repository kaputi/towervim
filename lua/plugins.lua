return {
  -- Packwe can manage itself as a plugin
  {'wbthomason/packer.nvim'},


  -- ====================
  -- Syntax, LSP, Autocomplete
  -- ====================

  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('plugin-settings.treesitter')]]
  },

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

}
