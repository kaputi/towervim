local M = {}

M.create_dir_if_no_exist = function(directory)
  if vim.fn.isdirectory(directory) == 0 then
    vim.fn.mkdir(directory, 'p')
  end
end

return M
