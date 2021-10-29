vim.cmd([[map f <Plug>Sneak_f]])
vim.cmd([[map F <Plug>Sneak_F]])
vim.cmd([[map t <Plug>Sneak_t]])
vim.cmd([[map T <Plug>Sneak_T]])
vim.cmd([[nmap ? <Plug>SneakLabel_s]])
-- vim.cmd[[nmap ? <Plug>SneakLabel_S]]

vim.g['sneak#prompt'] = 'sneak > '

-- highlight Sneak guifg=black guibg=red ctermfg=black ctermbg=red
-- highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

-- To disable highlighting: >
--     highlight link Sneak None
--     " Needed if a plugin sets the colorscheme dynamically:
--     autocmd User SneakLeave highlight clear Sneak
