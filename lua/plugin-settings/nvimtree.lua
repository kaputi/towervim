
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
  -- default mappings
  {key = "<CR>",        cb = tree_cb("edit")},
  {key = "o",           cb = tree_cb("edit")},
  {key = "<2-LeftMouse>",   cb = tree_cb("edit")},
  {key = "<2-RightMouse>",  cb = tree_cb("cd")},
  {key = "<C-]>",       cb = tree_cb("cd")},
  {key = "<C-v>",       cb = tree_cb("vsplit")},
  {key = "<C-x>",       cb = tree_cb("split")},
  {key = "<C-t>",       cb = tree_cb("tabnew")},
  {key = "<BS>",        cb = tree_cb("close_node")},
  {key = "<S-CR>",      cb = tree_cb("close_node")},
  {key = "<Tab>",       cb = tree_cb("preview")},
  {key = "I",           cb = tree_cb("toggle_ignored")},
  {key = "H",           cb = tree_cb("toggle_dotfiles")},
  {key = "R",           cb = tree_cb("refresh")},
  {key = "a",           cb = tree_cb("create")},
  -- {key = "d",           cb = "<Nop>",
  {key = "r",           cb = tree_cb("rename")},
  {key = "<C-r>",       cb = tree_cb("full_rename")},
  --{key = "x",           cb = tree_cb("cut")},
  --{key = "c",           cb = tree_cb("copy")},
  {key = "p",           cb = tree_cb("paste")},
  {key = "[c",          cb = tree_cb("prev_git_item")},
  {key = "]c",          cb = tree_cb("next_git_item")},
  {key = "-",           cb = tree_cb("dir_up")},
  {key = "q",           cb = tree_cb("close")},

  -- My mappings
  {key = "l",           cb = tree_cb("edit")},
  {key = "h",           cb = tree_cb("close_node")},
  {key = "dd",          cb = tree_cb("cut")},
  {key = "cc",          cb = tree_cb("copy")},
  {key = "df",          cb = tree_cb("remove")},
}

vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 30
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_width_allow_resize  = 1
vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
vim.g.nvim_tree_add_trailing = 1

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  }
--[[
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

" default will show icon by default if no icon is provided
" default shows no icon by default
--]]

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
   unstaged = "✗",
   staged = "✓",
   unmerged = "",
   renamed = "➜",
   untracked = "★"
   },
  folder = {
   default = "",
   open = "",
   empty = "",
   empty_open = "",
   symlink = "",
   }
  }

-- vim.g.nvim_tree_bindings = {
-- --  ["<CR>"] = ":YourVimFunction()<cr>",
--  -- ["u"] = ":lua require'some_module'.some_function()<cr>",

--   -- default mappings
--   ["<CR>"]           = tree_cb("edit"),
--   ["o"]              = tree_cb("edit"),
--   ["<2-LeftMouse>"]  = tree_cb("edit"),
--   ["<2-RightMouse>"] = tree_cb("cd"),
--   ["<C-]>"]          = tree_cb("cd"),
--   ["<C-v>"]          = tree_cb("vsplit"),
--   ["<C-x>"]          = tree_cb("split"),
--   ["<C-t>"]          = tree_cb("tabnew"),
--   ["<BS>"]           = tree_cb("close_node"),
--   ["<S-CR>"]         = tree_cb("close_node"),
--   ["<Tab>"]          = tree_cb("preview"),
--   ["I"]              = tree_cb("toggle_ignored"),
--   ["H"]              = tree_cb("toggle_dotfiles"),
--   ["R"]              = tree_cb("refresh"),
--   ["a"]              = tree_cb("create"),
--   ["d"]              = "<Nop>",
--   ["r"]              = tree_cb("rename"),
--   ["<C-r>"]          = tree_cb("full_rename"),
--   --["x"]              = tree_cb("cut"),
--   --["c"]              = tree_cb("copy"),
--   ["p"]              = tree_cb("paste"),
--   ["[c"]             = tree_cb("prev_git_item"),
--   ["]c"]             = tree_cb("next_git_item"),
--   ["-"]              = tree_cb("dir_up"),
--   ["q"]              = tree_cb("close"),

--   -- My mappings
--   ["l"]              = tree_cb("edit"),
--   ["h"]              = tree_cb("close_node"),
--   ["dd"]             = tree_cb("cut"),
--   ["cc"]             = tree_cb("copy"),
--   ["df"]             = tree_cb("remove"),
-- }

