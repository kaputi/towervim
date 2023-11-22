Settings.vim = {

  opt = {

    -- this will be set with vim.opt.OPTION
    options = {
      autoindent = true,
      backup = false,
      breakindent = true,
      clipboard = 'unnamed',
      cmdheight = 2,
      colorcolumn = '81',
      completeopt = { 'menuone', 'noselect' },
      -- conceallevel = 0, -- so that `` is visible in markdown files
      encoding = 'utf-8',
      fileencoding = 'utf-8',
      -- fillchars = 'vert:│',
      -- opt.fillchars       = "fold: "
      -- foldlevel = 99,
      foldlevel = 3, -- Using ufo provider need a large value, feel free to decrease the value
      foldlevelstart = 3,
      foldenable = true,
      fillchars = 'vert:│,foldopen:,foldclose:',
      -- foldtext      = "[[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]",
      -- foldmethod = 'manual',
      -- foldmethod = 'indent',
      -- foldmethod = 'expr',
      -- foldexpr = 'nvim_treesitter#foldexpr()',
      -- foldnestmax = 2,
      -- foldminlines = 0,
      -- foldlevel = 20,
      hidden = true,
      hlsearch = true,
      ignorecase = true,
      laststatus = 3,
      linebreak = true,
      mouse = 'a',
      pumheight = 10,
      pumblend = 25,
      showmode = false,
      showtabline = 0,
      smartcase = true,
      smarttab = true,
      smartindent = true,
      splitbelow = true,
      splitright = true,
      swapfile = false,
      directory = CACHE_PATH .. '/swap',
      termguicolors = true,
      textwidth = 0,
      timeoutlen = 500,
      undodir = CACHE_PATH .. '/undo',
      undofile = true,
      updatetime = 300,
      wrapmargin = 0,
      writebackup = false,
      expandtab = true,
      shiftwidth = 2,
      showbreak = '->->',
      tabstop = 2,
      cursorline = true,
      cursorcolumn = true,
      number = true,
      relativenumber = false,
      numberwidth = 4,
      signcolumn = 'yes',
      wrap = false,
      spell = false,
      spelllang = 'en',
      scrolloff = 8,
      sidescrolloff = 15,
      winhighlight = 'Normal:Normal,NormalNC:ColorColumn',
      -- mousemoveevent = true,
    },
    -- this will be set with vim.opt.OPTION:append(...) = :set+=
    append = {
      shortmess = 'c',
      listchars = 'precedes:<,extends:>',
      -- fillchars = 'vert:│',
      --fillchars = 'vert:│,eob:,fold:,foldopen:,foldsep:,foldclose:',
    },
    -- this will be set with vim.opt.OPTIONL:prepend(...) = :set^=
    prepend = {},
    -- this will be set with vim.opt.OPTIONL:remove(...) = :set-=
    remove = {},
  },

  -- this will be set with vim.o.OPTION = :set OPTION
  set = {},

  -- this will be set with vim.bo.OPTION = :setlocal OPTION
  buffer = {},

  -- this will be set with vim.go.OPTION = :setglobal OPTION
  global = {},
}
