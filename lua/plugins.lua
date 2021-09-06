return {
  -- Packwe can manage itself as a plugin
  {'wbthomason/packer.nvim'},

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
    config = [[require('plugin-settings.barbar')]]
  }

}
