-- local blankline_ok, blankline = pcall(require, 'indent_blankline')
local blankline_ok, blankline = pcall(require, 'ibl')
if blankline_ok then
  blankline.setup({
    indent = {
      char = '│',
      -- char = '',
      highlight = 'Comment',
      -- highlight = 'Normal'
    },
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
      injected_languages = false,
      highlight = { 'Conditional', 'Label' },
      priority = 500,
      -- include = { node_type = { ['*'] = { '*' } } },
    },
  })
end
