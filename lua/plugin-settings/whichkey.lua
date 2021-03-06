local map = vim.api.nvim_set_keymap
map('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

local ok, which_key = pcall(require, 'which-key')
if ok then
  which_key.setup({
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
    operators = { gc = 'Comments' },
    key_labels = {
      -- override the label used to display some keys. It doesn't effect WK in any other way.
      -- For example:
      ['<space>'] = 'SPC',
      -- ["<cr>"] = "RET",
      ['<tab>'] = 'TAB',
      ['<Tab>'] = 'TAB',
    },
    icons = {
      breadcrumb = '»', -- symbol used in the command line area that shows your active key combo
      separator = '➜', -- symbol used between a key and it's label
      group = '', -- symbol prepended to a group
    },
    window = {
      border = 'single', -- none, single, double, shadow
      position = 'bottom', -- bottom, top
      margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
      padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
      align = 'center', -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = {
      '<silent>',
      '<cmd>',
      '<Cmd>',
      '<CR>',
      'call',
      'lua',
      '^:',
      '^ ',
    }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = 'auto', -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
      -- list of mode / prefixes that should never be hooked by WhichKey
      -- this is mostly relevant for key maps that start with a native binding
      -- most people should not need to change this
      i = { 'j', 'k' },
      v = { 'j', 'k' },
    },
  })

  local nopts = {
    mode = 'n', -- NORMAL mode
    prefix = '<leader>',
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  local vopts = {
    mode = 'v', -- VISUAL mode
    prefix = '<leader>',
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  local vmappings = { ['r'] = { '"_d"*p', 'Replace Selection with register' } }

  local nmappings = {
    ['/'] = { '<cmd>CommentToggle<CR>', 'Comment Line' },
    ['='] = { '<C-w>=', 'Balance Windows' },
    [','] = {
      '<cmd>Telescope buffers initial_mode=normal<CR>',
      'Buffer List',
    },
    [' '] = { '<cmd>Telescope find_files<CR>', 'Files' },
    -- ['d'] = {'<cmd>BufferClose<CR>', 'Delete Buffer'},
    -- ['d'] = { '<cmd>bdelete<CR>', 'Delete Buffer' },
    ['d'] = { '<cmd>Bdelete<CR>', 'Delete Buffer' },
    ['e'] = { '<cmd>NvimTreeToggle<CR>', 'File Explorer' },
    ['E'] = { '<cmd>NvimTreeFindFileToggle<CR>', 'File Explorer' },
    ['h'] = {
      '<cmd>split | Telescope buffers initial_mode=normal<CR>',
      'Horizontal Split',
    },
    ['n'] = { '<cmd>BufferLineCycleNext<CR>', 'next buffer' },
    ['o'] = {
      '<cmd>call append(line("."),   repeat([""], v:count1))<CR>',
      'Line Below',
    },
    ['O'] = {
      '<cmd>call append(line(".")-1,   repeat([""], v:count1))<CR>',
      'Line Above',
    },
    ['P'] = { '<cmd>Telescope commands<CR>', 'Commands' },
    ['q'] = { '<cmd>q<CR>', 'Quit' },
    ['Q'] = { '<cmd>qa!<CR>', 'Quit All!!' },
    ['r'] = {'<cmd>Telescope npm scripts initial_mode=normal <CR>', 'Run npm scripts'},
    ['u'] = { '<cmd>UndotreeToggle<CR>', 'Undo tree' },
    -- ['t'] = {'<cmd>ToggleTerm<CR>', 'Terminal'},
    -- ['r'] = {},
    ['v'] = {
      '<cmd>vsplit | Telescope buffers initial_mode=normal<CR>',
      'Vertical Split',
    },
    ['V'] = {'<cmd>diffthis<CR>', 'Diff this'},

    ['y'] = { '<cmd>Telescope registers<CR>', 'Yank List' },

    -- Dashboard Layer
    ['<tab>'] = {
      name = '>> Dashboard <<',
      -- ['<tab>'] = {'<cmd>Startify<CR>', 'Dashboard'},
      -- ['d'] = {'<cmd>:SDelete<CR>', 'Delete Session'},
      -- ['l'] = {'<cmd>:SLoad<CR>', 'Load Session'},
      -- ['s'] = {'<cmd>:SSave<CR>', 'Save Session'},
      ['a'] = { '<cmd>Alpha<CR>', 'Dashboard' },
      ['<tab>'] = {
        '<cmd>:Telescope sessions initial_mode=normal save_current=true<CR>',
        'Load Session',
      },
      ['s'] = { '<cmd>:SaveSession<CR>', 'Save Session' },
    },

    -- Actions layer
    ['a'] = {
      name = '>> Actions <<',
      ['s'] = { '<cmd>set hls!<CR>', 'Remove Search Highlights' },
      ['c'] = { '<cmd>setlocal cursorcolumn!<CR>', 'Cursor Column' },
      ['d'] = { '<cmd>set background=dark<CR>', 'Dark  Background' },
      ['f'] = { '<cmd>FocusToggle<CR>', 'Focus'},
      ['i'] = { '<cmd>IndentBlanklineToggle<CR>', 'Indent Lines' },
      ['l'] = { '<cmd>set background=light<CR>', 'Light Background' },
      ['L'] = { '<cmd>set cursorline!<CR>', 'Cursor Line' },
      ['n'] = { '<cmd>set nonumber!<CR>', 'Line Numbers' },
      ['r'] = { '<cmd>set norelativenumber!<CR>', 'Relative Numbers' },
      ['R'] = { '<cmd>syntax on<CR>', 'Reset Colors (syntax on)' },
      -- ['t'] = { '<cmd>Vista!!<CR>', 'Vista Tag Viewer' },
      ['t'] = { '<cmd>SymbolsOutline<CR>', 'Symbol explorer' },
      ['T'] = {
        '<cmd>hi Normal ctermbg=NONE guibg=NONE<CR><CR>',
        'Transparent Background',
      },
      -- ['p'] = {'<cmd>RainbowToggle<CR>'                         , 'Color Parenthesis'},
      ['v'] = { '<cmd>SymbolsOutline<CR>', 'Symbol Explorer' },
      ['w'] = { '<cmd>setlocal wrap!<CR>', 'Wrap' },
      -- ['z'] = {'<cmd>Goyo<CR>', 'Zen Mode'}
    },

    -- Buffer Layer
    ['b'] = {
      name = '>> Buffers <<',
      ['b'] = { '<cmd>Telescope buffers<CR>', 'Find Buffer' },
      -- ['d'] = { '<cmd>bp | bd! #<CR>', 'Delete Buffer Without Saving' },
      ['d'] = { '<cmd>Bdelete!<CR>', 'Delete Buffer Without Saving' },
      ['D'] = { '<cmd>%bd<CR>', 'Delete All Buffers' },
      ['k'] = {
        '<cmd>%bd!|edit #|bd #|normal `"<CR>',
        'Delete Other Buffers',
      }, -- %bd kills all, edit # opens last ,bd # kills last(after killing all there is a new empty buffer) '" goes to last place before close
      -- ['k'] = {'<cmd>BufferCloseAllButCurrent<CR>', 'Delete Other Buffers'},
      ['n'] = { '<cmd>BufferLineCycleNext<CR>', 'Previous Buffer' },
      ['N'] = { '<cmd>enew<CR>', 'New Empty Buffer' },
      ['p'] = { '<cmd>BufferLineCyclePrev<CR>', 'Previous Buffer' },
    },

    -- Debug Layer
    ['D'] = {
      name = '>> Debug <<',
      -- TODO:
    },

    -- File Layer
    ['f'] = {
      name = '>> File <<',
      ['p'] = {'<cmd>echo expand("%:r")<CR>', 'Current Buffer Path'}
      -- TODO: new file at same path as current
      -- TODO: delete file
      -- TODO: rename file
      -- TODO: copy file path
      -- TODO: yank file path
    },

    -- Git Layer
    ['g'] = {
      name = '>> Git <<',
      ['b'] = {'<cmd>Gitsigns toggle_current_line_blame<CR>', 'Line Blame'},
      ['d'] = {'<cmd>Gitsigns diffthis<CR>','Gitsigns DiffView'},
      ['D'] = {'<cmd>DiffviewOpen<CR>', 'DiffView'},
      ['H'] = {'<cmd>DiffviewFileHistory<CR>', 'File History'},
      ['l'] = {'<cmd>LazyGit<CR>', 'Lazygit'},
      ['L'] = {'<cmd>Gitsigns toggle_linehl<CR>', 'Line Highlights'},
      ['n'] = {'<cmd>Neogit<CR>', 'Neogit'},
      ['p'] = {'<cmd>Gitsigns preview_hunk<CR>', 'Preview Hunk'},
      ['Q'] = {'<cmd>DiffviewClose<CR>', 'DiffView Close'},
      ['q'] = {'<cmd>Gitsigns setloclist<CR>', 'Hunks to qf list'},
      ['r'] = {
        name = '>> Reset <<',
        ['b'] = {'<cmd>Gitsigns reset_buffer<CR>','Reset Buffer'},
        ['h'] = {'<cmd>Gitsigns reset_hunk<CR>','Reset Hunk'},
      },
      ['s'] = {'<cmd>Gitsigns stage_buffer<CR>', 'Stage Buffer'},
      ['S'] = {'<cmd>Gitsigns stage_hunk<CR>', 'Stage hunk'},
      ['u'] = {'<cmd>Gitsigns undo_stage_hunk', 'Undo stage hunk'},
      ['v'] = {'<cmd>Gitsigns select_hunk<CR>', 'Select Hunk'},
      -- TODO:
    },

    -- Packer Layer
    ['p'] = {
      name = '>> Packer <<',
      ['C'] = { '<cmd>PackerClean<CR>', 'Packer Clean' },
      ['c'] = { '<cmd>PackerCompile<CR>', 'Packer Compile' },
      ['i'] = { '<cmd>PackerInstall<CR>', 'Pacekr Install' },
      ['u'] = { '<cmd>PackerUpdate<CR>', 'Packer Update' },
      ['s'] = { '<cmd>PackerSync<CR>', 'Packer Sync' },
    },

    -- Replace Layer
    ['R'] = {
      name = '>> Replace <<',
      ['R'] = { ':%s/<C-r><C-w>/', 'Replace All' },
      ['r'] = { ':s/<C-r><C-w>/', 'Replace Under Cursor' },
      -- TODO: move to visual  and check if works ['s'] = {'"_d"*p','Replace Selection with register'},
      ['y'] = {
        ':s/<C-r><C-w>/<C-r>0<CR>',
        'Replace Under Cursor With Register',
      },
      ['Y'] = { ':%s/<C-r><C-w>/<C-r>0/g<CR>', 'Replace All With Register' },
    },

    -- Search Layer
    ['s'] = {
      name = '>> Search <<',
      [';'] = { '<cmd>Telescope commands<CR>', 'Commands' },
      -- ['a'] = {':Ag'                , 'Text Ag'},
      ['b'] = {
        '<cmd>Telescope current_buffer_fuzzy_find<CR>',
        'Current Buffer',
      },
      -- ['B'] = {':Lines'             , 'Txt in Opened Buffers'} ,
      ['c'] = { '<cmd>Telescope git_commits<CR>', 'Commits' },
      ['C'] = { '<cmd>Telescope git_bcommits<CR>', 'Buffer Commits' },
      -- ['f'] = {'<cmd>Telescope find_files<CR>', 'Files'},
      ['f'] = {
        '<cmd>Telescope find_files find_command=rg,--ignore-case,--hidden,--files<CR>',
        'Find File (include .)',
      },
      ['F'] = {
        '<cmd>Telescope find_files find_command=rg,--ignore-case,--hidden,--files,--ignore<CR>',
        'Find File (include ignore)',
      },
      ['g'] = { '<cmd>Telescope git_files<CR>', 'Git Files' },
      ['G'] = { '<cmd>Telescope git_status<CR>', 'Modified Git Files' },
      ['h'] = { '<cmd>Telescope command_history<CR>', 'Command History' },
      ['H'] = { '<cmd>Telescope help_tags<CR>', 'Help Tags' },
      ['m'] = { '<cmd>Telescope marks<CR>', 'Marks' },
      ['M'] = { '<cmd>Telescope keymaps<CR>', 'Key Maps' },
      ['p'] = { '<cmd>Telescope tags<CR>', 'Project Tags' },
      -- ['s'] = {':CocList snippets'  , 'Snippets'},
      ['S'] = { '<cmd>Telescope colorscheme<CR>', 'Color Schemes' },
      ['t'] = { '<cmd>Telescope live_grep<CR>', 'Text Rg' },
      ['T'] = { '<cmd>Telescope current_buffer_tags<CR>', 'Buffer Tags' },
      -- ['w'] = {':Windows'           , 'Windows'},
      ['y'] = { '<cmd>Telescope       filetypes<CR>', 'File Types' },
    },

    -- -- Toglge layer
    -- ['T'] = {
    --   name = '>> Toggle <<',
    --   ['c'] = {'<cmd>setlocal cursorcolumn!<CR>', 'Cursor Column'},
    --   ['d'] = {'<cmd>set background=dark<CR>', 'Dark  Background'},
    --   -- ['i'] = {'<cmd>IndentLinesToggle<CR>', 'Indent Lines'},
    --   ['l'] = {'<cmd>set background=light<CR>', 'Light Background'},
    --   ['L'] = {'<cmd>setlocal cursorline!<CR>', 'Cursor Line'},
    --   ['n'] = {'<cmd>setlocal nonumber!<CR>', 'Line Numbers'},
    --   ['r'] = {'<cmd>setlocal norelativenumber!<CR>', 'Relative Numbers'},
    --   ['R'] = {'<cmd>syntax on<CR>', 'Reset Colors (syntax on)'},
    --   -- ['t'] = {'<cmd>Vista!!<CR>', 'Tag Viewer'},
    --   ['T'] = {'<cmd>hi Normal ctermbg=NONE guibg=NONE<CR><CR>', 'Transparent Background'},
    --   -- ['p'] = {'<cmd>RainbowToggle<CR>'                         , 'Color Parenthesis'},
    --   ['w'] = {'<cmd>setlocal wrap!<CR>', 'Wrap'},
    --   -- ['z'] = {'<cmd>Goyo<CR>', 'Zen Mode'}
    -- },

    -- Window Layer
    ['W'] = {
      name = '>> Window <<',
      ['h'] = { '<C-W>H', 'Move Left' },
      ['j'] = { '<C-W>J', 'Move Down' },
      ['k'] = { '<C-W>K', 'Move Up' },
      ['l'] = { '<C-W>L', 'Move Right' },
    },

    -- Scratch Layer
    ['x'] = {
      name = '>> Scratchpad <<',
      -- TODO:
    },
  }

  local wk = require('which-key')

  wk.register(nmappings, nopts)
  wk.register(vmappings, vopts)

  -- Highlights
  vim.cmd([[au VimEnter * highlight WhichKeyGroup guifg=#ff0000]])
end
