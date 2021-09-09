local M = {}

function M.is_client_active(name)
  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name == name then
      return true, client
    end
  end
  return false
end

-- FIXME: this should return a list instead
function M.get_active_client_by_ft(filetype)
  local ls_settings = require('lsp.ls-settings')[filetype]
  if not ls_settings or not ls_settings.lsp then
    return nil
  end

  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name == ls_settings.lsp.provider then
      return client
    end
  end
  return nil
end

return M
