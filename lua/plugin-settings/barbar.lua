-- " NOTE: If barbar's option dict isn't created yet, create it
-- let bufferline = get(g:, 'bufferline', {})
-- " Enable/disable animations
-- let bufferline.animation = v:true
-- " Enable/disable auto-hiding the tab bar when there is a single buffer
-- let bufferline.auto_hide = v:false
-- " Enable/disable current/total tabpages indicator (top right corner)
-- let bufferline.tabpages = v:true
-- " Enable/disable close button
-- let bufferline.closable = v:true
-- " Enables/disable clickable tabs
-- "  - left-click: go to buffer
-- "  - middle-click: delete buffer
-- let bufferline.clickable = v:true
-- " Enable/disable icons
-- " if set to 'numbers', will show buffer index in the tabline
-- " if set to 'both', will show buffer index and icons in the tabline
-- let bufferline.icons = v:true
-- " Sets the icon's highlight group.
-- " If false, will use nvim-web-devicons colors
-- let bufferline.icon_custom_colors = v:false
-- " Configure icons on the bufferline.
-- let bufferline.icon_separator_active = '▎'
-- let bufferline.icon_separator_inactive = '▎'
-- let bufferline.icon_close_tab = ''
-- let bufferline.icon_close_tab_modified = '●'
-- " Sets the maximum padding width with which to surround each tab
-- let bufferline.maximum_padding = 4
-- " If set, the letters for each buffer in buffer-pick mode will be
-- " assigned based on their name. Otherwise or in case all letters are
-- " already assigned, the behavior is to assign letters in order of
-- " usability (see order below)
-- let bufferline.semantic_letters = v:true
-- " New buffer letters are assigned in this order. This order is
-- " optimal for the qwerty keyboard layout but might need adjustement
-- " for other layouts.
-- let bufferline.letters =
--   \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
-- " Sets the name of unnamed buffers. By default format is "[Buffer X]"
-- " where X is the buffer number. But only a static string is accepted here.
-- let bufferline.no_name_title = v:null
local bufferline = vim.g.bufferline

if bufferline == nil then
  bufferline = {}
end

bufferline.icon_separator_active = '▎'
-- bufferline.icon_separator_active = '❚'

bufferline.no_name_title = '[no-name]'

vim.g.bufferline = bufferline

local cmd = vim.cmd

-- cmd[[highlight BufferCurrent guibg=#282c34]]
-- cmd[[highlight BufferCurrentMod guibg=#282c34]]
cmd([[highlight BufferCurrentSign guibg=#3282c34 guifg=#ffff00]])
-- cmd[[highlight BufferCurrentTarget guibg=#282c34]]
-- cmd[[highlight BufferCurrentIndex guibg=#282c34]]
cmd([[highlight BufferInactive guibg=#323438]])
cmd([[highlight BufferInactiveIndex guibg=#323438]])
cmd([[highlight BufferInactiveMod guibg=#323438]])
cmd([[highlight BufferInactiveSign guibg=#323438]])
cmd([[highlight BufferInactiveTarget guibg=#323438]])
cmd([[highlight BufferTabpages guibg=#323438]])
cmd([[highlight BufferTabpageFill guibg=#323438]])
-- cmd[[highlight BufferVisible guibg=#282c34]]
-- cmd[[highlight BufferVisibleIndex guibg=#282c34]]
-- cmd[[highlight BufferVisibleMod guibg=#282c34]]
-- cmd[[highlight BufferVisibleSign guibg=#282c34]]
-- cmd[[highlight BufferVisibleTarget guibg=#282c34]]
