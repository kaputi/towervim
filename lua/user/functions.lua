local M = {}

local onOrOff = function(setting)
  if setting then
    return 'ON'
  end
  return 'OFF'
end

M.toggleTrimWhitespace = function()
  Settings.general.trimWhitespace = not Settings.general.trimWhitespace
  M.notify('Trim Whitespace = ' .. onOrOff(Settings.general.trimWhitespace))
end

M.toggleFormatOnSave = function()
  Settings.general.formatOnSave = not Settings.general.formatOnSave
  M.notify('Format On Save = ' .. onOrOff(Settings.general.formatOnSave))
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

local function getSignAndHl(diagnostic)
  if diagnostic.severity == 1 then
    return Settings.gui.diagnostics.error, 'DiagnosticSignError'
  end
  if diagnostic.severity == 2 then
    return Settings.gui.diagnostics.warning, 'DiagnosticSignWarn'
  end
  if diagnostic.severity == 3 then
    return Settings.gui.diagnostics.hint, 'DiagnosticSignHint'
  end
  if diagnostic.severity == 4 then
    return Settings.gui.diagnostics.info, 'DiagnosticSignInfo'
  end
end

M.lineDiagnostics = function()
  if not Settings.general.lineDiagnostics then
    return
  end
  vim.diagnostic.open_float({
    focusable = false,
    header = '',
    prefix = '',
    format = function(diagnostic)
      local sign, hl = getSignAndHl(diagnostic)
      return ' '
        .. sign
        .. ' '
        .. diagnostic.message
        .. ' ['
        .. diagnostic.source
        .. '] ',
        hl
    end,
  })
end

M.toggleLineDiagnostics = function()
  Settings.general.lineDiagnostics = not Settings.general.lineDiagnostics
  M.notify('Line Diagnostics = ' .. onOrOff(Settings.general.lineDiagnostics))
end

M.notify = function(text)
  print(text)
  local ok, _ = pcall(require, 'notify')
  if not ok then
    return
  end
  vim.notify(text)
end

return M
