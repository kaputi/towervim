local M = {}

local settings = require('lsp.settings')

-- autoformat
local toggle_autoformat = function()
  if settings.format_on_save then
    require('core.autocmd').create_augroups({
      autoformat = {
        {
          'BufWritePre',
          '*',
          ':silent lua vim.lsp.buf.formatting_sync(nil, 1000)',
        },
      },
    })
  end

  if not settings.format_on_save then
    vim.cmd([[
      if exists('#autoformat#BufWritePre')
        :autocmd! autoformat
      endif
    ]])
  end
end

function M.config()
  -- Item Kind
  vim.lsp.protocol.CompletionItemKind = settings.kind

  -- Diagnostic signs define
  for _, sign in ipairs(settings.diagnostics.signs.values) do
    vim.fn.sign_define(sign.name, {
      texthl = sign.name,
      text = sign.text,
      numhl = sign.name,
    })
  end

  -- setup handlers
  require('lsp.handlers').setup()

  toggle_autoformat()
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
  local status_ok, wk = pcall(require, 'which-key')
  if not status_ok then
    return
  end

  local leader_keys = {
    ['k'] = { '<cmd>lua vim.lsp.buf.hover()<CR>', 'Show hover' },
    ['l'] = {
      name = '>> LSP <<',
      ['A'] = { '<cmd>lua vim.lsp.buf.code_action()<CR>', 'lsp code action' },
      ['a'] = {
        '<cmd>Telescope lsp_code_actions<CR>',
        'telescope code action',
      },
      ['d'] = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'Goto Definition' },
      ['D'] = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'Goto declaration' },
      ['f'] = { '<cmd>lua vim.lsp.buf.formatting()<CR>', 'Format with lsp'},
      ['I'] = {
        '<cmd>lua vim.lsp.buf.implementation()<CR>',
        'Goto Implementation',
      },
      ['l'] = {
        "<cmd>lua require'lsp.handlers'.show_line_diagnostics()<CR>",
        'Show line diagnostics',
      },
      ['k'] = {
        '<cmd>lua vim.lsp.buf.signature_help()<CR>',
        'show signature help',
      },
      ['p'] = {
        "<cmd>lua require'lsp.peek'.Peek('definition')<CR>",
        'Peek definition',
      },
      ['r'] = { '<cmd>lua vim.lsp.buf.references()<CR>', 'Goto references' },
      ['R'] = {
        '<cmd>lua vim.lsp.buf.rename()<CR>',
        'Rename symbol projectwise',
      },
      ['t'] = { '<cmd>TroubleToggle document_diagnostics<CR>', 'Trouble' },
    },
  }

  local keys = {
    ['gd'] = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'Goto Definition' },
    ['gD'] = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'Goto declaration' },
    ['gr'] = { '<cmd>lua vim.lsp.buf.references()<CR>', 'Goto references' },
    ['gI'] = {
      '<cmd>lua vim.lsp.buf.implementation()<CR>',
      'Goto Implementation',
    },
    ['gs'] = {
      '<cmd>lua vim.lsp.buf.signature_help()<CR>',
      'show signature help',
    },
    ['gp'] = {
      "<cmd>lua require'lsp.peek'.Peek('definition')<CR>",
      'Peek definition',
    },
    -- ['gl'] = {
    --   "<cmd>lua require'lsp.handlers'.show_line_diagnostics()<CR>",
    --   'Show line diagnostics',
    -- },
  }

  local common_opts = {
    mode = 'n', -- NORMAL mode
    buffer = bufnr, -- buffer number
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  wk.register(keys, common_opts)

  common_opts.prefix = '<leader>'

  wk.register(leader_keys, common_opts)
end

function M.common_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = { 'documentation', 'detail', 'additionalTextEdits' },
  }
  return capabilities
end

function M.common_on_init(client, bufnr)
  local ls_settings = require('lsp.ls-settings')[vim.bo.filetype]

  local formatters = ls_settings.formatters
  if
    not vim.tbl_isempty(formatters)
    and formatters[1]['exe'] ~= nil
    and formatters[1].exe ~= ''
  then
    client.resolved_capabilities.document_formatting = false
  end
end

function M.common_on_attach(client, bufnr)
  lsp_highlight_document(client)
  lsp_buffer_keybindings(bufnr)
  require('lsp.null-ls').setup(vim.bo.filetype)
  require('lsp_signature').on_attach()
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
  local ls_settings = require('lsp.ls-settings')[lang]

  local lsp = ls_settings.lsp

  -- check if lsp is already active if it is return
  if is_client_active(lsp.provider) then
    return
  end

  -- only if there is provider
  if lsp.provider ~= nil and lsp.provider ~= '' then
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
