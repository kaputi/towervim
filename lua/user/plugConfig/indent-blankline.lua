-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]

local blankline_ok, blankline = pcall(require, 'indent_blankline')
if blankline_ok then
  blankline.setup({
    char_list = { '|', '¦', '┆', '┊' },
    buftype_exclude = { 'terminal' },
    filetype_exclude = { 'startify', 'help', 'alpha', 'vimwiki', 'NvimTree' },
    use_treesitter = true,
    space_char_blankline = ' ',
    show_current_context = true,
    show_first_indent_level = true,
    -- python context_patterns = { '^def', '^if', '^elif', '^else', '^for', '^with', '^while', '^until', '^try', '^except', '^finally' }
    context_patterns = {
      'class',
      'method',
      'function',
      '^if',
      '^else',
      '^for',
      '^while',
      '^try',
      '^catch',
    },
  })
end
