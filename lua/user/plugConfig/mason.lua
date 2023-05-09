local ok, mason = pcall(require, 'mason')
if not ok then
  return
end

mason.setup({
  -- The directory in which to install packages.
  install_root_dir = Settings.lsp.installPath,
})
