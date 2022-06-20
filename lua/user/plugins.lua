local pluginConfDir = "user.plugConfig."
local loadConfig = function(configName)
  pcall(require, pluginConfDir .. configName )
end

return {
  -- Packwe can manage itself as a plugin
  {
    'wbthomason/packer.nvim',
    -- TODO: commit = ''
  },

  -- -- -- -- -- -- -- -- -- -- -- -- - -- -- -- -- - --
  -- TODO:
  -- this is temporary until the isue with neovim cursorhold gets fixed
  {
    'antoinemadec/FixCursorHold.nvim',
    config = "vim.g.cursorhold_updatetime = 300"
    -- TODO: commit = ''
  },
  -- -- -- -- -- -- -- -- -- -- -- -- - -- -- -- -- - --

  -- ============================================================
  -- LSP
  -- ============================================================
  {
    'neovim/nvim-lspconfig',
    -- TODO: commit = ''
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    -- TODO: commit = ''
  },
  {
    'williamboman/nvim-lsp-installer',
    config = loadConfig('lspinstall'),
    -- TODO: commit = ''
  },
  -- {
    -- 'ray-x/lsp_signature.nvim',
    -- TODO: commit = ''
  -- },
  {
    'folke/trouble.nvim',
    config = loadConfig('trouble')
    -- TODO: commit = ''
  },
  {
    'rmagatti/goto-preview',
    config = loadConfig('goto-preview')
    -- TODO: commit = ''
  },
  {
    'kaputi/e-kaput.nvim',
    config = function()
      -- local ok, ekaput = pcall(require, 'e-kaput')
      -- if ok then
      --   ekaput.setup()
      -- end
    end,
    -- TODO: commit = ''
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
    config = loadConfig('cmp')
    -- TODO: commit = ''
  },
  -- {
  --   'tzachar/cmp-tabnine',
  --   run = './install.sh',
  --   requires = 'hrsh7th/nvim-cmp',
  --   config = loadConfig('cmp-tabnine')
  --   -- TODO: commit = ''
  -- },
  -- snipet engine
  {
    'hrsh7th/vim-vsnip',
    config = loadConfig('vsnip')
    -- TODO: commit = ''
  },
  -- ============================================================
  -- TREESITTER
  -- ============================================================
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = loadConfig('treesitter')
    -- TODO: commit = ''
  },
  -- {
  --   'nvim-treesitter/playground',
  --   -- TODO: commit = ''
  -- },
  -- ============================================================
  -- BETTER CODE
  -- ============================================================
  -- comments
  {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = loadConfig('comment')
    -- TODO: commit = ''
  },
  {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = loadConfig('autopairs')
    -- TODO: commit = ''
  },
  --  surround
  {
    'tpope/vim-surround',
    -- TODO: commit = ''
  },
  -- auto close html jsx tags
  {
    'windwp/nvim-ts-autotag',
    -- TODO: commit = ''
  },
  -- uses treesitter
  -- rainbow parentheses
  -- {
  --   'p00f/nvim-ts-rainbow',
  --   -- TODO: commit = ''
  -- },
  -- highlight color codes with its color
  {
    'norcalli/nvim-colorizer.lua',
    config = loadConfig('colorizer')
    -- TODO: commit = ''
  },
  -- text navigation
  {
    'ggandor/lightspeed.nvim',
    -- TODO: commit = ''
  },
  -- indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    config = loadConfig('indent-blankline')
    -- TODO: commit = ''
  },
  {
    'simrat39/symbols-outline.nvim',
    config = loadConfig('symbols-outline')
    -- TODO: commit = ''
  },
  -- ============================================================
  -- UI
  -- ============================================================
  -- Icons
  {
    'kyazdani42/nvim-web-devicons',
    -- TODO: commit = ''
  },
  {
    'ryanoasis/vim-devicons',
    -- TODO: commit = ''
  },
  -- Tabbar, statusbar
  {
    'akinsho/bufferline.nvim',
    branch = 'main',
    requires = 'kyazdani42/nvim-web-devicons',
    config = loadConfig('bufferline')
    -- TODO: commit = ''
  },
  {
    'windwp/windline.nvim',
    config = loadConfig('windline')
    -- TODO: commit = ''
  },
  -- themes
  {
    'NLKNguyen/papercolor-theme',
    -- TODO: commit = ''
  },
  {
    'savq/melange',
    -- TODO: commit = ''
  },
  {
    'folke/tokyonight.nvim',
    config = 'vim.g.tokyonight_style = "night"'
    -- TODO: commit = ''
  },
  {
    'rcarriga/nvim-notify',
    config = loadConfig('notify')
    -- TODO: commit = ''
  },
  -- ============================================================
  -- TOOLS
  -- ============================================================
  -- whichkey
  {
    'folke/which-key.nvim',
    config = loadConfig('whichkey'),
    -- TODO: commit = ''
  },
  -- File tree
  -- {
    -- 'kyazdani42/nvim-tree.lua',
    -- config = loadConfig('nvimtree'),
    -- TODO: commit = ''
  -- },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = loadConfig('neotree')
  },
  -- fuzzy  find
  {
    'nvim-lua/popup.nvim',
    -- TODO: commit = ''
  },
  {
    'nvim-lua/plenary.nvim',
    -- TODO: commit = ''
  },
  {
    'nvim-telescope/telescope.nvim',
    config = loadConfig('telescope'),
    -- TODO: commit = ''
  },
  -- project.nvim
  {
    'ahmedkhalf/project.nvim',
    config = loadConfig('project'),
  },
  {
    'goolord/alpha-nvim',
    config = loadConfig('alpha'),
    -- TODO: commit = ''
  },
  -- sessions
  {
    'kaputi/neovim-session-manager',
    config = loadConfig('session-manager'),
    branch = 'only-on-session',
    -- TODO: commit = ''
  },
  {
    'akinsho/toggleterm.nvim',
    branch = 'main',
    event = 'BufwinEnter',
    config = loadConfig('toggleterm'),
    -- TODO: commit = ''
  },
  -- save as sudo
  {
    'lambdalisue/suda.vim',
    config = loadConfig('suda'),
    -- TODO: commit = ''
  },
  -- pretty quickfix
  {
    'kevinhwang91/nvim-bqf',
    -- TODO: commit = ''
  },
  -- undo tree
  {
    'mbbill/undotree',
    -- TODO: commit = ''
  },
  -- VIMWIKI
  {
    'vimwiki/vimwiki',
    setup = loadConfig('vimwiki'),
    ft = { 'markdown', 'vimwiki' },
    -- TODO: commit = ''
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
    -- TODO: commit = ''
  },
  {
    -- SHOWS PREVIEW OF LINE WHEN USING :[linenumber]
    'nacro90/numb.nvim',
    config = loadConfig('numb'),
    -- TODO: commit = ''
  },
  {
    -- smooth scroll
    'karb94/neoscroll.nvim',
    config = loadConfig('neoscroll'),
    -- TODO: commit = ''
  },
  -- delete buffers without changing layout
  {
    'famiu/bufdelete.nvim',
    -- TODO: commit = ''
  },
  {
    'ethanholz/nvim-lastplace',
    config = function()
      local ok, lastplace = pcall(require, 'nvim-lastplace')
      if ok then
        lastplace.setup{}
      end
    end,
    -- TODO: commit = ''
  },
  {
    -- 'chentau/marks.nvim',
    'chentoast/marks.nvim',
    config = loadConfig('marks'),
    -- TODO: commit = ''
  },
  -- ============================================================
  -- GIT
  -- ============================================================
  -- lazygit
  {
    'kdheepak/lazygit.nvim',
    branch = 'main',
    -- TODO: commit = ''
  },
  -- git signs
  {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      -- TODO: commit = ''
    },
    config = loadConfig('gitsigns'),
    -- TODO: commit = ''
  },
  {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    -- TODO: commit = ''
  },
  {
    'sindrets/diffview.nvim',
    config = loadConfig('diffview'),
    -- TODO: commit = ''
  },
  -- ============================================================
  -- NEW
  -- ============================================================
  {
    'anuvyklack/pretty-fold.nvim',
    requires="anuvyklack/nvim-keymap-amend",
     config = loadConfig('pretty-fold'),
    -- TODO: commit = ''
  },
  {
    'SmiteshP/nvim-gps',
     requires = "nvim-treesitter/nvim-treesitter",
     config = loadConfig('nvim-gps'),
    -- TODO: commit = ''
  },
  -- ============================================================
  -- NOT IN USE / CHECK / FIX
  -- ============================================================
  -- CHECK-----------------------------
  -- { 'andymass/vim-matchup' },
  -- FIX -------------------------------
  -- { 'nvim-telescope/telescope-media-files.nvim' },
  {
    --TODO: new version generates the snipets on the go for vs code so vsnip
    -- wont load them, either generate them by calling the function that does or
    -- find a snipet engine that works more like vscode
    'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile',
    -- TODO: commit = ''
  }
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
