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

M.isempty = function(s)
  return s == nil or s == ''
end

M.selectedText = function()
  -- local vstart = vim.fn.getpos("'<")

  -- local vend = vim.fn.getpos("'>")

  -- local line_start = vstart[2]
  -- local line_end = vend[2]

  -- -- or use api.nvim_buf_get_lines
  -- local lines = vim.fn.getline(line_start, line_end)
  -- -- local lines = vim.api.nvim_buf_get_lines(line_start, line_end)
  -- P(lines)
  local s_start = vim.fn.getpos("'<")
  local s_end = vim.fn.getpos("'>")
  local n_lines = math.abs(s_end[2] - s_start[2]) + 1
  local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
  lines[1] = string.sub(lines[1], s_start[3], -1)
  if n_lines == 1 then
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
  else
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
  end
  local a = table.concat(lines, '\n')
  a = a:gsub("%/", "\\/")
  P(a)

  vim.cmd('/'.. a)

  -- return table.concat(lines, '\n')
end

M.filename = function()
  local filename = vim.fn.expand('%:t')
  local extension = ''
  local file_icon = ''
  local file_icon_color = ''
  local default_file_icon = ''
  local default_file_icon_color = ''

  if not M.isempty(filename) then
    extension = vim.fn.expand('%:e')

    local default = false

    if M.isempty(extension) then
      extension = ''
      default = true
    end

    file_icon, file_icon_color = require('nvim-web-devicons').get_icon_color(
      filename,
      extension,
      { default = default }
    )

    local hl_group = 'FileIconColor' .. extension

    vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color })
    if file_icon == nil then
      file_icon = default_file_icon
      file_icon_color = default_file_icon_color
    end

    return '%#CursorLineNr#      %m %*'
      .. '%#'
      .. hl_group
      .. '#'
      .. file_icon
      .. '%*'
      .. ' '
      .. '%#LineNr#'
      .. filename
      .. '%*'
  end
end

M.winbarValue = function()
  local status_gps_ok, gps = pcall(require, 'nvim-gps')

  local filename = M.filename()

  local gps_location = ''
  if status_gps_ok and gps.is_available() then
    gps_location = gps.get_location()
  end
  -- if status_gps_ok then

  --   if gps.is_available()then
  --     vim.g.yaya = "si"
  --   end
  -- end

  if gps_location == 'error' then
    gps_location = ''
  end

  if not M.isempty(gps_location) then
    return filename .. ' > ' .. gps_location
  else
    return filename
  end
end

function M.get_buf_option(opt)
  local status_ok, buf_option = pcall(vim.api.nvim_buf_get_option, 0, opt)
  if not status_ok then
    return nil
  else
    return buf_option
  end
end

function M.toggleTabLine()
  local status_ok, tab = pcall(vim.api.nvim_get_option, 'showtabline')
  if not status_ok then
    return
  end

  if tab == 0 then
    vim.opt.showtabline = 2
  end
  if tab == 2 then
    vim.opt.showtabline = 0
  end
end

function M.formatSelection()
  -- line where cursor is
  local cursorLineNr = vim.fn.line('.')
  -- line where selection started
  local selectionLineNr = vim.fn.line('v')

  local startPos
  local endPos

  if cursorLineNr > selectionLineNr then -- started up and moved down
    local lastCursorCol = vim.fn.col('$') + 1
    startPos = { selectionLineNr, 0 }
    endPos = { cursorLineNr, lastCursorCol }
  else -- started down and moved up
    local lastSelectionCol = vim.fn.strchars(vim.fn.getline(selectionLineNr))
      + 1
    startPos = { cursorLineNr, 0 }
    endPos = { selectionLineNr, lastSelectionCol }
  end
  vim.lsp.buf.format({ range = { startPos, endPos } })
end

return M
