-- tree background
vim.cmd([[hi NvimTreeNormal guibg=#212333]])

-- vim.g.nvim_tree_side = 'left'
-- vim.g.nvim_tree_width = 30
-- vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
-- vim.g.nvim_tree_auto_open = 0 -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
-- vim.g.nvim_tree_auto_close = 1 -- 0 by default, closes the tree when it's the last window
-- vim.g.nvim_tree_gitignore = 1 "0 by default
vim.g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard', 'alpha' } -- empty by default, don't auto open tree on specific filetypes.
-- vim.g.nvim_tree_quit_on_open = 1 -- 0 by default, closes the tree when you open a file
-- vim.g.nvim_tree_follow = 1 -- 0 by default, this option allows the cursor to be updated when entering a buffer
-- vim.g.nvim_tree_follow_update_path = 1 -- 0 by default, will update the path of the current dir if the file is not inside the tree.
-- vim.g.nvim_tree_indent_markers = 1 -- 0 by default, this option shows indent markers when folders are open
-- vim.g.nvim_tree_hide_dotfiles = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
-- vim.g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
-- vim.g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
-- vim.g.nvim_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
-- vim.g.nvim_tree_tab_open = 0 -- 0 by default, will open the tree when entering a new tab and the tree was previously open
-- vim.g.nvim_tree_auto_resize = 1 -- 1 by default, will resize the tree to its saved width when opening a file
-- vim.g.nvim_tree_disable_netrw = 0 -- 1 by default, disables netrw
-- vim.g.nvim_tree_hijack_netrw = 0 -- 1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
-- vim.g.nvim_tree_add_trailing = 1 -- 0 by default, append a trailing slash to folder names
-- vim.g.nvim_tree_group_empty = 0 --  0 by default, compact folders that only contain a single folder into one node in the file tree
-- vim.g.nvim_tree_lsp_diagnostics = 1 -- 0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
-- vim.g.nvim_tree_disable_window_picker = 1 -- 0 by default, will disable the window picker.
-- vim.g.nvim_tree_hijack_cursor = 1 -- 1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
-- vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
-- vim.g.nvim_tree_symlink_arrow = ' >> ' --  defaults to ' ➛ '. used as a separator between symlinks' source and target.
-- vim.g.nvim_tree_update_cwd = 1 -- 0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
-- vim.g.nvim_tree_respect_buf_cwd = 1 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
-- vim.g.nvim_tree_refresh_wait = 500 -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

-- vim.g.nvim_tree_window_picker_exclude = {
--   filetype= { 'notify', 'packer','qf'},
--   buftype= { 'terminal'}
-- }
-- " Dictionary of buffer option names mapped to a list of option values that
-- " indicates to the window picker that the buffer's window should not be
-- " selectable.

-- vim.g.nvim_tree_special_files = { 'README.md' = 1, 'Makefile'= 1, 'MAKEFILE'= 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile

-- vim.g.nvim_tree_icons = {
--   default = '',
--   symlink = '',
--   git = {
--     unstaged = '✗',
--     staged = '✓',
--     unmerged = '',
--     renamed = '➜',
--     untracked = '★',
--     deleted = '',
--     ignored = '◌',
--   },
--   folder = {
--     arrow_open = '',
--     arrow_closed = '',
--     default = '',
--     open = '',
--     empty = '',
--     empty_open = '',
--     symlink = '',
--     symlink_open = '',
--   },
--   lsp = { hint = '', info = '', warning = '', error = '' },
-- }

-- vim.g.nvim_tree_show_icons = {
--   git = 1,
--   folders = 1,
--   files = 1,
--   folder_arrows = 1,
-- }
--[[
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

" default will show icon by default if no icon is provided
" default shows no icon by default
--]]

local ok, nvim_tree = pcall(require, 'nvim-tree')
if ok then
  local tree_cb = require('nvim-tree.config').nvim_tree_callback

  local key_list = {
    -- default mappings
    { key = '<CR>', cb = tree_cb('edit') },
    { key = 'o', cb = tree_cb('edit') },
    { key = '<2-LeftMouse>', cb = tree_cb('edit') },
    { key = '<2-RightMouse>', cb = tree_cb('cd') },
    { key = '<C-]>', cb = tree_cb('cd') },
    { key = '<C-v>', cb = tree_cb('vsplit') },
    { key = '<C-x>', cb = tree_cb('split') },
    { key = '<C-t>', cb = tree_cb('tabnew') },
    { key = '<BS>', cb = tree_cb('close_node') },
    { key = '<S-CR>', cb = tree_cb('close_node') },
    { key = '<Tab>', cb = tree_cb('preview') },
    { key = 'I', cb = tree_cb('toggle_ignored') },
    { key = 'H', cb = tree_cb('toggle_dotfiles') },
    { key = 'R', cb = tree_cb('refresh') },
    { key = 'a', cb = tree_cb('create') },
    -- {key = "d",           cb = },
    { key = 'r', cb = tree_cb('rename') },
    { key = '<C-r>', cb = tree_cb('full_rename') },
    -- {key = "x",           cb = tree_cb("cut")},
    -- {key = "c",           cb = tree_cb("copy")},
    { key = 'p', cb = tree_cb('paste') },
    { key = '[c', cb = tree_cb('prev_git_item') },
    { key = ']c', cb = tree_cb('next_git_item') },
    { key = '-', cb = tree_cb('dir_up') },
    { key = 'q', cb = tree_cb('close') },

    -- My mappings
    { key = 'l', cb = tree_cb('edit') },
    { key = 'h', cb = tree_cb('close_node') },
    { key = 'dd', cb = tree_cb('cut') },
    { key = 'cc', cb = tree_cb('copy') },
    { key = 'df', cb = tree_cb('remove') },
    { key = '?', action = 'toggle_help' },
  }

  nvim_tree.setup({
    -- following options are the default
    disable_netrw = true,
    -- hijack netrw window on startup
    hijack_netrw = false,
    -- open the tree when running this setup function
    open_on_setup = false,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup = {},
    -- closes neovim automatically when the tree is the last **WINDOW** in the view
    -- auto_close = true,
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab = false,
    -- hijacks new directory buffers when they are opened.
    update_to_buf_dir = {
      -- enable the feature
      enable = true,
      -- allow to open the tree if it was previously closed
      auto_open = false,
    },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor = true,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd = true,
    -- show lsp diagnostics in the signcolumn
    -- lsp_diagnostics     = true,
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {
      -- enables the feature
      enable = false,
      -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
      -- only relevant when `update_focused_file.enable` is true
      update_cwd = true,
      -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
      -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
      ignore_list = {},
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
      -- the command to run this, leaving nil should work in most cases
      cmd = nil,
      -- the command arguments as a list
      args = {},
    },

    view = {
      -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
      width = 30,
      -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
      height = 30,
      -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
      side = 'left',
      -- if true the tree will resize itself after opening a file
      auto_resize = true,
      mappings = {
        -- custom only false will merge the list with the default mappings
        -- if true, it will only use your list to set the mappings
        custom_only = true,
        -- list of mappings to set on the tree manually
        list = key_list,
      },
    },
    renderer = {
      indent_markers = {
        enable = true,
        icons = {
          corner = '└ ',
          edge = '│ ',
          none = '  ',
        },
      },
      icons = {
        webdev_colors = true,
      },
    },
    filters = {
      dotfiles = true,
      custom = { 'node_modules', 'dist', 'build', '*.lock', '*.log' },
    },
    actions = {
      change_dir = {
        enable = true,
        global = false,
      },
      open_file = {
        quit_on_open = true,
        resize_window = false,
        window_picker = {
          enable = false,
          chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
          exclude = {
            filetype = {
              'notify',
              'packer',
              'qf',
              'diff',
              'fugitive',
              'fugitiveblame',
            },
            buftype = { 'nofile', 'terminal', 'help' },
          },
        },
      },
    },
  })
end
