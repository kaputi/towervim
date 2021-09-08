local map = vim.api.nvim_set_keymap
map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

require("which-key").setup {
-- your configuration comes here
-- or leave it empty to use the default settings
-- refer to the configuration section below
 plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
    ["<Tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

local nopts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local vopts = {
  mode = "v", -- VISUAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local vmappings = {
}

local nmappings = {
  ['/'] = {'<cmd>CommentToggle<CR>', 'Comment Line'},
  ['='] = {'<C-w>=', 'Balance Windows'},
  [','] = {'<cmd>Telescope buffers<CR>', 'Buffer List'},
  [' '] = {'<cmd>Telescope find_files<CR>', 'Files'},
  ['d'] = {'<cmd>BufferClose<CR>', 'Delete Buffer'},
  ['e'] = {'<cmd>NvimTreeToggle<CR>', 'File Explorer'},
  ['h'] = {'<cmd>split | Telescope buffers<CR>', 'Horizontal Split'},
  ['o'] = {'<cmd>call append(line("."),   repeat([""], v:count1))<CR>', 'Line Below'},
  ['O'] = {'<cmd>call append(line(".")-1,   repeat([""], v:count1))<CR>', 'Line Above'},
  ['p'] = {'<cmd>Telescope find_files<CR>', 'Files'},
  -- TODO: make this search include hidden ['p'] = {'<cmd>Telescope find_files find_command=rg,--ignore-case,--hidden,--files,--ignore<CR>','Find File'},
  ['P'] = {'<cmd>Telescope commands<CR>', 'Commands'},
  ['q'] = {'<cmd>q<CR>', 'Quit'},
  ['Q'] = {'<cmd>qa!<CR>','Quit All!!'},
  -- ['r'] = {},
  -- ['u'] = {},
  ['t'] = {'<cmd>ToggleTerm<CR>','Terminal'},
  -- ['r'] = {},
  ['v'] = {'<cmd>vsplit | Telescope buffers<CR>', 'Vertical Split'},
  ['y'] = {'<cmd>Telescope registers<CR>', 'Yank List'},


  -- Dashboard Layer
  ['<tab>'] = {
    name = '>>Dashboard<<',
    ['<tab>'] = {'<cmd>Startify<CR>', 'Dashboard'},
    ['c'] = {'<cmd>:SClose<CR>', 'Close Session'},
    ['d'] = {'<cmd>:SDelete<CR>', 'Delete Session'},
    ['l'] = {'<cmd>:SLoad<CR>', 'Load Session'},
    ['s'] = {'<cmd>:SSave<CR>', 'Save Session'},
  },

  -- Actions layer
  ['a'] = {
    name = ">>Actions<<",
    ['c'] = {'<cmd>PackerClean<CR>', 'Packer Clean'},
    ['C'] = {'<cmd>PackerCompile<CR>', 'Packer Compile'},
    ['i'] = {'<cmd>PackerInstall<CR>', 'Pacekr Install'},
    ['s']  = {'<cmd>set hls!<CR>', 'Remove Search Highlights'},
    ['u'] = {'<cmd>PackerUpdate<CR>', 'Packer Update'},
    ['U'] = {'<cmd>PackerSync<CR>', 'Packer Sync'}
  },

  -- Buffer Layer
  ['b'] = {
    name = ">>Buffers<<",
    ['b'] = {'<cmd>Telescope buffers<CR>','Find Buffer'},
    ['d'] = {'<cmd>bp | bd! #<CR>','Delete Buffer Without Saving'},
    ['D'] = {'<cmd>%bd<CR>','Delete All Buffers'},
  -- ['k'] = {'<cmd>%bd!|edit #|bd #|normal `"<CR>'   ,'Delete Other Buffers'}, -- %bd kills all, edit # opens last ,bd # kills last(after killing all there is a new empty buffer) '" goes to last place before close
    ['k'] = {'<cmd>BufferCloseAllButCurrent<CR>','Delete Other Buffers'},
    ['n'] = {'<cmd>BufferNext<CR>', 'Previous Buffer'},
    ['N'] = {'<cmd>enew<CR>', 'New Empty Buffer'},
    ['p'] = {'<cmd>BufferPrevious<CR>', 'Previous Buffer'}
  },

  -- Code Layer
  ['c'] = {
    name = '>>Code(lsp)<<'
    -- TODO: maybe change to just lsp and move to l
  },

  -- Debug Layer
  ['D'] = {
    name = '>>Debug<<'
    -- TODO:
  },

  -- File Layer
  ['f'] = {
    name = '>>File<<'
    -- TODO: new file at same path as current
    -- TODO: delete file
    -- TODO: rename file
    -- TODO: copy file path
    -- TODO: yank file path
  },

  -- Git Layer
  ['g'] = {
    name = '>>Git<<'
    -- TODO:
  },

  -- Replace Layer
  ['R'] = {
    name = '>>Replace<<',
    ['R'] = {':%s/<C-r><C-w>/','Replace All'},
    ['r'] = {':s/<C-r><C-w>/','Replace Under Cursor'},
    -- TODO: move to visual  and check if works ['s'] = {'"_d"*p','Replace Selection with register'},
    ['y'] = {':s/<C-r><C-w>/<C-r>0<CR>','Replace Under Cursor With Register'},
    ['Y'] = {':%s/<C-r><C-w>/<C-r>0/g<CR>','Replace All With Register'}
  },

  -- Search Layer
  ['s'] = {
    name = '>>Search<<',
    [';'] = {'<cmd>Telescope commands<CR>', 'Commands'},
    -- ['a'] = {':Ag'                , 'Text Ag'},
    ['b'] = {'<cmd>Telescope current_buffer_fuzzy_find<CR>', 'Current Buffer'},
    -- ['B'] = {':Lines'             , 'Txt in Opened Buffers'} ,
    ['c'] = {'<cmd>Telescope git_commits<CR>', 'Commits'},
    ['C'] = {'<cmd>Telescope git_bcommits<CR>', 'Buffer Commits'},
    -- ['f'] = {'<cmd>Telescope find_files<CR>', 'Files'},
    ['f'] = {'<cmd>Telescope find_files find_command=rg,--ignore-case,--hidden,--files,--ignore<CR>','Find File'},
    ['g'] = {'<cmd>Telescope git_files<CR>', 'Git Files'},
    ['G'] = {'<cmd>Telescope git_status<CR>', 'Modified Git Files'},
    ['h'] = {'<cmd>Telescope command_history<CR>', 'Command History'},
    ['H'] = {'<cmd>Telescope help_tags<CR>', 'Help Tags'},
    ['m'] = {'<cmd>Telescope marks<CR>', 'Marks'},
    ['M'] = {'<cmd>Telescope keymaps<CR>', 'Key Maps'},
    ['p'] = {'<cmd>Telescope tags<CR>', 'Project Tags'},
    -- ['s'] = {':CocList snippets'  , 'Snippets'},
    ['S'] = {'<cmd>Telescope colorscheme<CR>', 'Color Schemes'},
    ['t'] = {'<cmd>Telescope live_grep<CR>', 'Text Rg'},
    ['T'] = {'<cmd>Telescope current_buffer_tags<CR>', 'Buffer Tags'},
    -- ['w'] = {':Windows'           , 'Windows'},
    ['y'] = {'<cmd>Telescope       filetypes<CR>', 'File Types'}
  },

  -- Toglge layer
  ['T'] = {
    name = '>>Toggle<<',
    ['c'] = {'<cmd>setlocal cursorcolumn!<CR>', 'Cursor Column'},
    ['d'] = {'<cmd>set background=dark<CR>', 'Dark  Background'},
    -- ['i'] = {'<cmd>IndentLinesToggle<CR>', 'Indent Lines'},
    ['l'] = {'<cmd>set background=light<CR>', 'Light Background'},
    ['L'] = {'<cmd>setlocal cursorline!<CR>', 'Cursor Line'},
    ['n'] = {'<cmd>setlocal nonumber!<CR>', 'Line Numbers'},
    ['r'] = {'<cmd>setlocal norelativenumber!<CR>', 'Relative Numbers'},
    ['R'] = {'<cmd>syntax on<CR>', 'Reset Colors (syntax on)'},
    -- ['t'] = {'<cmd>Vista!!<CR>', 'Tag Viewer'},
    ['T'] = {'<cmd>hi Normal ctermbg=NONE guibg=NONE<CR><CR>', 'Transparent Background'},
    -- ['p'] = {'<cmd>RainbowToggle<CR>'                         , 'Color Parenthesis'},
    ['w'] = {'<cmd>setlocal wrap!<CR>', 'Wrap'},
    -- ['z'] = {'<cmd>Goyo<CR>', 'Zen Mode'}
  },


  -- Window Layer
  ['w'] = {
    name = '>>Window<<',
    ['h'] = {'<C-W>H', 'Move Left'},
    ['j'] = {'<C-W>J', 'Move Down'},
    ['k'] = {'<C-W>K', 'Move Up'},
    ['l'] = {'<C-W>L', 'Move Right'}
  },

  -- Scratch Layer
  ['x'] = {
    name = '>>Scratchpad<<'
    -- TODO:
  },

}

local wk = require("which-key")

wk.register(nmappings, nopts)

-- Highlights
vim.cmd[[au VimEnter * highlight WhichKeyGroup guifg=#ff0000]]
