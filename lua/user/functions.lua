local M = {}

M.toggleTrimWhitespace = function()
  Settings.general.trimWhitespace = not Settings.general.trimWhitespace
end

M.toggleFormatOnSave = function()
  Settings.general.formatOnSave = not Settings.general.formatOnSave
end

M.toggleLinter = function()
  for linter, _ in pairs(Settings.linter.linters) do
    require('null-ls').toggle({ name = linter })
  end
end

M.format = function()
  if Settings.general.formatOnSave then
    vim.lsp.buf.format()
  end
end

M.trimWhiteSpace = function()
  if Settings.general.trimWhitespace then
    local save = vim.fn.winsaveview()
    vim.api.nvim_exec(string.format('silent! %s', [[%s/\s\+$//e]]), false)
    vim.fn.winrestview(save)
  end
end

M.preSave = function()
  M.trimWhiteSpace()
  M.format()
end

return M
