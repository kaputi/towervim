local home_dir = vim.loop.os_homedir()
local wiki_home = home_dir .. '/Documents/vimwiki'

local wikis = {}

local get_file_name = function(file)
  return file:match('^.+/(.+)$')
end
local firstToUpper = function(str)
  return (str:gsub('^%l', string.upper))
end

local plenary_ok, _ = pcall(require, 'plenary')
if plenary_ok then
  local scandir = require('plenary.scandir')
  local Path = require('plenary.path')

  scandir.scan_dir(wiki_home, {
    depth = 1,
    only_dirs = true,
    respect_gitignore = true,
    on_insert = function(entry)
      if string.find(entry, '_html') then
        return
      end

      table.insert(wikis, {
        path = entry,
        syntax = 'markdown',
        -- ext = '.wiki',
        ext = '.md',
        name = firstToUpper(get_file_name(entry)),
      })
    end,
  })
end

vim.g.vimwiki_list = wikis

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.wiki', '*.md' },
  callback = function()
    vim.bo.filetype = 'vimwiki'
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'vimwiki',

  callback = function()
    -- vim.cmd([[setlocal textwidth=80]])
    vim.bo.textwidth = 80
  end,
})

-- vim.g.vimwiki_list = {
--   {
--     path = wiki_home .. '/aquaponics',
--     name = 'Aquaponics',
--     -- syntax = 'markdown',
--     ext = '.wiki',
--   },
--   {
--     path = wiki_home .. '/woodworking',
--     name = 'Woodworking',
--     -- syntax = 'markdown',
--     ext = '.wiki',
--   },
--   {
--     path = wiki_home .. '/cooking',
--     name = 'Cooking',
--     -- syntax = 'markdown',
--     ext = '.wiki',
--   },
--   {
--     path = wiki_home .. '/yupiti',
--     name = 'Yupiti',
--     -- syntax = 'vimwiki',
--     ext = '.wiki',
--   },
-- }

-- local ok_telescope, telescope = pcall(require, 'telescope')

-- if ok then
--   telescope.load_extension('wikis')
-- end
