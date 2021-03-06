local M = {}

function M.list_supported_provider_names(filetype)
  local names = {}

  local formatters = require('lsp.null-ls.formatters')
  local linters = require('lsp.null-ls.linters')

  vim.list_extend(names, formatters.list_supported_names(filetype))
  vim.list_extend(names, linters.list_supported_names(filetype))

  return names
end

function M.list_unsupported_provider_names(filetype)
  local names = {}

  local formatters = require('lsp.null-ls.formatters')
  local linters = require('lsp.null-ls.linters')

  vim.list_extend(names, formatters.list_unsupported_names(filetype))
  vim.list_extend(names, linters.list_unsupported_names(filetype))

  return names
end

-- TODO: for linters and formatters with spaces and '-' replace with '_'
function M.setup(filetype, options)
  options = options or {}
  local formatters = require('lsp.null-ls.formatters')
  local linters = require('lsp.null-ls.linters')


  formatters.setup(filetype, options)
  linters.setup(filetype, options)

  -- TODO: this should be global there is no need to use handlers anymore
  require('null-ls').setup({
    on_attach= function()
      vim.diagnostic.config({
        virtual_text=false,
        float = {
          source="always",
        },
        severity_sort = true
      })
    end
  })

end

return M
