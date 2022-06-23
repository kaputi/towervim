local M = {}

M.setup = function(client, bufnr)
  -- client.resolved_capabilities.document_formatting = false
  client.server_capabilities.documentFormattingProvider = false
end

return M
