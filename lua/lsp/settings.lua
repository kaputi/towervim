local M = {}

-- ===============================================
-- Item kind
-- ===============================================
M.kind = {
  -- "   (Text) ",
  -- "   (Method)",
  -- "   (Function)",
  -- "   (Constructor)",
  -- " ﴲ  (Field)",
  -- "[] (Variable)",
  -- "   (Class)",
  -- " ﰮ  (Interface)",
  -- "   (Module)",
  -- " 襁 (Property)",
  -- "   (Unit)",
  -- "   (Value)",
  -- " 練 (Enum)",
  -- "   (Keyword)",
  -- "   (Snippet)",
  -- "   (Color)",
  -- "   (File)",
  -- "   (Reference)",
  -- "   (Folder)",
  -- "   (EnumMember)",
  -- " ﲀ  (Constant)",
  -- " ﳤ  (Struct)",
  -- "   (Event)",
  -- "   (Operator)",
  -- "   (TypeParameter)",
  Class = ' ',
  Color = ' ',
  Constant = 'ﲀ ',
  Constructor = ' ',
  Enum = '練',
  EnumMember = ' ',
  Event = ' ',
  Field = ' ',
  File = '',
  Folder = ' ',
  Function = ' ',
  Interface = 'ﰮ ',
  Keyword = ' ',
  Method = ' ',
  Module = ' ',
  Operator = '',
  Property = ' ',
  Reference = ' ',
  Snippet = ' ',
  Struct = ' ',
  Text = ' ',
  TypeParameter = ' ',
  Unit = '塞',
  Value = ' ',
  Variable = ' ',
}

-- ===============================================
-- Diagnostics settings
-- ===============================================
M.diagnostics = {
  signs = {
    active = true,
    values = {
      -- { name = 'LspDiagnosticsSignError', text = '' },
      -- { name = 'LspDiagnosticsSignWarning', text = '' },
      -- { name = 'LspDiagnosticsSignHint', text = '' },
      -- { name = 'LspDiagnosticsSignInformation', text = '' },
      { name = 'DiagnosticSignError', text = '' },
      { name = 'DiagnosticSignWarn', text = '' },
      { name = 'DiagnosticSignHint', text = '' },
      { name = 'DiagnosticSignInfo', text = '' },
    },
  },
  virtual_text = {
    active = false,
    prefix = '',
    spacing = 0,
  },
  underline = true,
  severity_sort = true,
}

-- ===============================================
-- General
-- ===============================================

-- Highlights
M.highlights = true
-- M.format_on_save = true
M.format_on_save = false

return M
