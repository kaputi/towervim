return {
  -- Packwe can manage itself as a plugin
  { 'wbthomason/packer.nvim' },

  -- ============================================================
  -- LSP
  -- ============================================================
  { 'neovim/nvim-lspconfig' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  { 'tamago324/nlsp-settings.nvim' },
  {
    'williamboman/nvim-lsp-installer',
    config = function()
      require('plugin-settings.lspinstall')
    end,
  },
  {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('plugin-settings.lsp_signature')
    end
  },
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
  -- snipet engine
  {
    'hrsh7th/vim-vsnip',
    config = function()
      require('plugin-settings.vsnip')
    end,
  },
  -- ============================================================
  -- TREESITTER
  -- ============================================================
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugin-settings.treesitter')
    end,
  },
  {
    'nvim-treesitter/playground',
  },
  -- ============================================================
  -- BETTER CODE
  -- ============================================================
  -- comments
  {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
      require('plugin-settings.comment')
    end,
  },
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
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('plugin-settings.colorizer')
    end,
  },
  -- text navigation
  { 'ggandor/lightspeed.nvim' },
  -- indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugin-settings.indent-blankline')
    end,
  },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('plugin-settings.symbols-outline')
    end,
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
  -- themes
  { 'NLKNguyen/papercolor-theme' },
  { 'savq/melange' },
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.g.tokyonight_style = "night"
      -- vim.g.tokyonight_style = "storm"
      -- vim.g.tokyonight_style = "day"
    end,
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      require('plugin-settings.notify')
    end,
  },
  -- ============================================================
  -- TOOLS
  -- ============================================================
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
  -- project.nvim
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('plugin-settings.project')
    end,
  },
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
  {
    'akinsho/toggleterm.nvim',
    event = 'BufwinEnter',
    config = function()
      require('plugin-settings.toggleterm')
    end,
  },
  -- save as sudo
  {
    'lambdalisue/suda.vim',
    config = function()
      require('plugin-settings.suda')
    end,
  },
  -- pretty quickfix
  { 'kevinhwang91/nvim-bqf' },
  -- undo tree
  { 'mbbill/undotree' },
  -- VIMWIKI
  {
    'vimwiki/vimwiki',
    setup = function()
      require('plugin-settings.vimwiki')
    end,
    ft = { 'markdown', 'vimwiki' },
    -- cmd = 'VimwikiUISelect',
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
    'beauwilliams/focus.nvim',
    config = function()
      require('plugin-settings.focus')
    end,
  },
  {
    -- SHOWS PREVIEW OF LINE WHEN USING :[linenumber]
    'nacro90/numb.nvim',
    config = function()
      require('plugin-settings.numb')
    end,
  },
  {
    -- smooth scroll
    'karb94/neoscroll.nvim',
    config = function()
      require('plugin-settings.neoscroll')
    end,
  },
  -- delete buffers without changing layout
  { 'famiu/bufdelete.nvim' },
  {
    'ethanholz/nvim-lastplace',
    config = function()
      require('nvim-lastplace').setup{}
    end
  },
  { 'elianiva/telescope-npm.nvim' ,
  config =  function()
      local ok_telescope, telescope = pcall(require, 'telescope')
      if ok_telescope then
        telescope.load_extension('npm')
      end
  end
  },
  {
    'chentau/marks.nvim',
    config = function()
      require('plugin-settings.marks')
    end
  },
  -- ============================================================
  -- GIT
  -- ============================================================
  -- lazygit
  { 'kdheepak/lazygit.nvim' },
  -- git signs
  {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('plugin-settings.gitsigns')
    end,
    event = 'BufRead',
  },
  {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      require('plugin-settings.diffview')
    end,
  },
  -- ============================================================
  -- NOT IN USE / CHECK / FIX
  -- ============================================================
  -- CHECK-----------------------------
  -- { 'andymass/vim-matchup' },
  -- FIX -------------------------------
  -- {
  --   'ray-x/navigator.lua',
  --   requires = {
  --     'ray-x/guihua.lua',
  --     run = 'cd lua/fzy && make'
  --   },
  --   config = function()
  --     require('plugin-settings.navigator')
  --   end
  -- },
  -- { 'nvim-telescope/telescope-media-files.nvim' },
  {
    --TODO: new version generates the snipets on the go for vs code so vsnip
    -- wont load them, either generate them by calling the function that does or
    -- find a snipet engine that works more like vscode
    'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  },
  -- OFF -------------------------------
  -- cursor on last place when open file === === REPLACE BY LUA
  -- { 'farmergreg/vim-lastplace' },


  -- TODO: try to do my own scrratch or -> 'mtth/scratch.vim'
  -- TODO: lazyloading
}
