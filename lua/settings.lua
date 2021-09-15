local M = {}

M.colorscheme = "towervim"

-- this will be set with vim.opt.OPTION
M.general = {
  opt = {
    autoindent = true,
    backup = false,
    breakindent = true,
    clipboard = 'unnamed',
    cmdheight = 2,
    colorcolumn = '81',
    completeopt = {"menuone", "noselect"},
    -- conceallevel = 0, -- so that `` is visible in markdown files
    encoding = 'utf-8',
    fileencoding = "utf-8",
    fillchars = 'vert:│',
    -- foldmethod = 'manual',
    -- foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    foldmethod='expr',
    foldexpr="nvim_treesitter#foldexpr()",
    foldnestmax=2,
    foldminlines=0,
    foldlevel=20,
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    laststatus = 2,
    linebreak = true,
    mouse = "a",
    pumheight = 10,
    pumblend = 25,
    showmode = false,
    showtabline = 2,
    smartcase = true,
    smarttab = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    textwidth = 0,
    timeoutlen = 500,
    undodir = DATA_PATH .. "/undo",
    undofile = true,
    updatetime = 300,
    wrapmargin = 0,
    writebackup = false,
    expandtab = true,
    shiftwidth = 2,
    showbreak = "->->->",
    tabstop = 2,
    cursorline = true,
    cursorcolumn = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = false,
    spell = false,
    spelllang = "en",
    scrolloff = 8,
    sidescrolloff = 15
  },

  -- this will be set with vim.opt.OPTION:append(...) = :set+=
  append = {
    shortmess = "c"
  },

  -- this will be set with vim.opt.OPTIONL:prepend(...) = :set^=
  prepend = {},

  -- this will be set with vim.opt.OPTIONL:remove(...) = :set-=
  remove = {}
}

-- this will be set with vim.o.OPTION = :set OPTION
M.set = {}

-- this will be set with vim.bo.OPTION = :setlocal OPTION
M.buffer = {}

-- this will be set with vim.go.OPTION = :setglobal OPTION
M.global = {}

-- any code inside run function will be run after
function M:run()
end

return M
