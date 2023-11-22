-- local blankline_ok, blankline = pcall(require, 'indent_blankline')
local blankline_ok, blankline = pcall(require, 'ibl')
if blankline_ok then
  -- local highlight = {
  --   'RainbowRed',
  --   'RainbowYellow',
  --   'RainbowBlue',
  --   'RainbowOrange',
  --   'RainbowGreen',
  --   'RainbowViolet',
  --   'RainbowCyan',
  -- }
  -- local hooks = require('ibl.hooks')
  -- -- create the highlight groups in the highlight setup hook, so they are reset
  -- -- every time the colorscheme changes
  -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  --   vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
  --   vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
  --   vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
  --   vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
  --   vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
  --   vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
  --   vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
  -- end)

  -- vim.g.rainbow_delimiters = { highlight = highlight }

  -- blankline.setup({
  --   enabled = true,

  --   indent = { char = '|' },

  --   scope = {
  --     enabled = true,
  --     show_start = true,
  --     show_end = true,
  --     --   highlight = highlight,
  --   },

  --   exclude = {
  --     filetypes = {
  --       'startify',
  --       'help',
  --       'alpha',
  --       'vimwiki',
  --       'NvimTree',
  --       'neo-tree',
  --     },
  --     buftype = { 'terminal' },
  --   },
  -- })

  blankline.setup()

  -- hooks.register(
  --   hooks.type.SCOPE_HIGHLIGHT,
  --   hooks.builtin.scope_highlight_from_extmark
  -- )

  -- blankline.enabled()
end
