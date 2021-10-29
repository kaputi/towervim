local home_dir = vim.loop.os_homedir()
-- DATA_PATH = vim.fn.stdpath('data')
DATA_PATH = home_dir .. '/.local/share/towervim'
-- CACHE_PATH = vim.fn.stdpath('cache')
CACHE_PATH = home_dir .. '/.cache/towervim'
CONFIG_PATH = home_dir .. '/.config/towervim'

local create_dir_if_no_exist = function(directory)
  if vim.fn.isdirectory(directory) == 0 then
    vim.fn.mkdir(directory, 'p')
  end
end

create_dir_if_no_exist(CACHE_PATH)
create_dir_if_no_exist(DATA_PATH)

-- local path_ok, Path = pcall(require, 'plenary.path')
-- if path_ok then
--   DATA_PATH1 = Path:new(home_dir, '.local/share/towervim')
--   CACHE_PATH1 = Path:new(home_dir, '.cache', 'towervim')
--   -- print('data: ')
--   -- print(vim.inspect(DATA_PATH1))
--   -- print('cache: ')
--   -- print(vim.inspect(CACHE_PATH1))
-- end
