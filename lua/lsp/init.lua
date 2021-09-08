local M = {}

local settings = require('lsp.settings')

function M.config()
  -- Item Kind
  vim.lsp.protocol.CompletionItemKind = settings.kind

  -- Diagnostic signs define
  for _, sign in ipairs(settings.diagnostics.signs.values) do
    vim.fn.sign_define(sign.name, {texthl = sign.name, text = sign.text, numhl = sign.name})
  end

  -- setup handlers
  require('lsp.handlers').setup()
end

local function lsp_highlight_document(client)
  if settings.highlight == false then
    return
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#353d46
      hi LspReferenceText cterm=bold ctermbg=red guibg=#353d46
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#353d46
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
      false
    )
  end
end


local function lsp_buffer_keybindings(bufnr)
-- TODO: bufnr can be passed to whichkey so only buffer with lsp will have mappings
end

function M.common_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  }
  return capabilities
end


function M.common_on_init(client, bufnr)

  local ls_settings = require( "lsp.ls-settings" )[vim.bo.filetype]

  local formatters = ls_settings.formatters
  if not vim.tbl_isempty(formatters) and formatters[1]["exe"] ~= nil and formatters[1].exe ~= "" then
    client.resolved_capabilities.document_formatting = false
  end
end

function M.common_on_attach(client, bufnr)
  lsp_highlight_document(client)
  lsp_buffer_keybindings(bufnr)
  -- TODO: not sure what this is
  require("lsp.null-ls").setup(vim.bo.filetype)
end

-- TODO: this can be more dinamic, with a function that gets settings and gets called in common_on_attach
-- TODO: the above can be done in ls-settings maybe :)
function M.tsserver_on_attach(client, bufnr)
  M.common_on_attach(client, bufnr)
  client.resolved_capabilities.document_formatting = false
  -- TODO: need to instal the ts utils require("nvim-lsp-ts-utils").setup {}
end


local function is_client_active(name)
  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name == name then
      return true, client
    end
  end
  return false
end

-- This gets called on ftplugin so they only load for specific ft
function M.setup(lang)

  local ls_settings = require( "lsp.ls-settings" )[lang]

  local lsp = ls_settings.lsp


  -- check if lsp is already active if it is return
  if is_client_active(lsp.provider) then
    return
  end

  -- only if there is provider
  if lsp.provider ~= nil and lsp.provider ~= "" then

    -- if lsp setup don't have it  use common
    if not lsp.setup.on_attach then
      lsp.setup.on_attach = M.common_on_attach
    end

    if not lsp.setup.on_init then
      lsp.setup.on_init = M.common_on_init
    end

    if not lsp.setup.capabilities then
      lsp.setup.capabilities = M.common_capabilities()
    end

    require('lspconfig')[lsp.provider].setup(lsp.setup)

  end

end

return M
