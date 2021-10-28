local M = {}
local linters_by_ft = {}

local null_ls = require "null-ls"
local services = require "lsp.null-ls.services"

local function list_names(linters, options)
  options = options or {}
  local filter = options.filter or "supported"

  return vim.tbl_keys(linters[filter])
end

function M.list_supported_names(filetype)
  if not linters_by_ft[filetype] then return {} end
  return list_names(linters_by_ft[filetype], {filter = "supported"})
end

function M.list_unsupported_names(filetype)
  if not linters_by_ft[filetype] then return {} end
  return list_names(linters_by_ft[filetype], {filter = "unsupported"})
end

function M.list_available(filetype)
  local linters = {}
  for _, provider in pairs(null_ls.builtins.diagnostics) do
    -- TODO: Add support for wildcard filetypes
    if vim.tbl_contains(provider.filetypes or {}, filetype) then
      table.insert(linters, provider.name)
    end
  end

  return linters
end

function M.list_configured(linter_configs)
  local available = {}
  local linters, errors = {}, {}

  for _, lnt_config in pairs(linter_configs) do
    local linter = null_ls.builtins.diagnostics[lnt_config.exe]

    if not linter then
      errors[lnt_config.exe] = {} -- Add data here when necessary
    else
      local linter_cmd = services.find_command(linter._opts.command)
      if not linter_cmd then
        errors[lnt_config.exe] = {} -- Add data here when necessary
      else
        available[lnt_config.exe] = {
          linter = linter.with {
            command = linter_cmd,
            extra_args = lnt_config.args,
            diagnostics_format = "#{m} [#{c}]"
          },
          default = lnt_config.default
        }
        -- linters[lnt_config.exe] = linter.with {
        --   command = linter_cmd,
        --   extra_args = lnt_config.args,
        --   diagnostics_format = "#{m} [#{c}]"
        -- }

      end
    end
  end

  for name, linter in pairs(available) do
    if linter.default then
      linters = {}
      linters[name] = linter.linter
      break
    end
    print(name)
    print(vim.inspect(linter))
    linters[name] = linter.linter
  end

  return {supported = linters, unsupported = errors}
end

function M.setup(filetype, options)
  local ls_settings = require('lsp.ls-settings')[filetype]

  if not ls_settings or (linters_by_ft[filetype] and not options.force_reload) then
    return
  end

  linters_by_ft[filetype] = M.list_configured(ls_settings.linters)
  vim.g.lintc = linters_by_ft
  null_ls.register {
    sources = linters_by_ft[filetype].supported,
    name = ls_settings.linters.exe
  }
end

return M
