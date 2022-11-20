vim.cmd([[ highlight CopilotSuggestion guifg=#555555 ctermfg=8 ]])

vim.g.copilot_filetypes = {
  xml = false,
  markdown = false,
}

vim.g.copilot_no_tab_map = true
vim.g.copilot_enabled = false

vim.keymap.set(
  'i',
  '<C-a>',
  "copilot#Accept('<CR>')",
  { silent = true, expr = true }
)

vim.keymap.set('i', '<M-x>', '<Plug>(copilot-dismiss)', { silent = true })
vim.keymap.set('i', '<M-[>', '<Plug>(copilot-next)', { silent = true })
vim.keymap.set('i', '<M-]>', '<Plug>(copilot-previous)', { silent = true })
vim.keymap.set('i', '<M-/>', '<Plug>(copilot-sugest)', { silent = true })
