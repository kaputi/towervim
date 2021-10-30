local home_dir = vim.loop.os_homedir()
local wiki_home = home_dir .. '/Documents/vimwiki'

vim.g.vimwiki_list = {
  {
    path = wiki_home .. '/aquaponics',
    syntax = 'markdown',
    ext = '.md',
  },
  {
    path = wiki_home .. '/fishing',
    syntax = 'markdown',
    ext = '.md',
  },
  {
    path = wiki_home .. '/woodworking',
    syntax = 'markdown',
    ext = '.md',
  },
}
