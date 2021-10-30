local telescope_ok, _ = pcall(require, 'telescope')
local path_ok, Path = pcall(require, 'plenary.path')

if telescope_ok and path_ok then
  if Path:new(vim.fn.expand('%')):is_dir() and vim.fn.argc() ~= 0 then
    vim.cmd('bd')
    vim.cmd('Telescope file_browser initial_mode=normal')
  end
end
