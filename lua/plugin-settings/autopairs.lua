local ok, nvim_autopairs = pcall(require, 'nvim-autopairs')
-- local cmp_ok, cmp = pcall(require, 'cmp')

if ok then
  nvim_autopairs.setup({
    disable_filetype = { 'TelescopePrompt' },
    ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], '%s+', ''),
    enable_moveright = true,
    enable_afterquote = true, -- add bracket pairs after quote
    enable_check_bracket_line = true, --- check bracket in same line
    check_ts = false,
  })
  -- if cmp_ok then
  --   -- If you want insert `(` after select function or method item
  --   local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  --   cmp.event:on(
  --     'confirm_done',
  --     cmp_autopairs.on_confirm_done({ map_char = { tex = '' } })
  --   )
  -- end
end
