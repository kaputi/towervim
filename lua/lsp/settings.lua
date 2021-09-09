local M = {}

-- ===============================================
-- Item kind
-- ===============================================
M.kind = {
  "   (Text) ",
  "   (Method)",
  "   (Function)",
  "   (Constructor)",
  " ﴲ  (Field)",
  "[] (Variable)",
  "   (Class)",
  " ﰮ  (Interface)",
  "   (Module)",
  " 襁 (Property)",
  "   (Unit)",
  "   (Value)",
  " 練 (Enum)",
  "   (Keyword)",
  "   (Snippet)",
  "   (Color)",
  "   (File)",
  "   (Reference)",
  "   (Folder)",
  "   (EnumMember)",
  " ﲀ  (Constant)",
  " ﳤ  (Struct)",
  "   (Event)",
  "   (Operator)",
  "   (TypeParameter)",
}

-- ===============================================
-- Diagnostics settings
-- ===============================================
M.diagnostics = {
  signs = {
    active = true,
    values = {
      { name = "LspDiagnosticsSignError", text = "" },
      { name = "LspDiagnosticsSignWarning", text = "" },
      { name = "LspDiagnosticsSignHint", text = "" },
      { name = "LspDiagnosticsSignInformation", text = "" },
    }
  },
  virtual_text = {
    active = false,
    prefix = "",
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
M.format_on_save = true



return M
