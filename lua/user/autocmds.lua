-- highlight yanked text
vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  pattern = { '*' },
  callback = function()
    require('vim.highlight').on_yank()
  end,
})

-- on save
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  callback = function()
    require('user.functions').preSave()
  end,
})

-- json filetype
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '.eslintrc', '.babelrc', '.prettierrc' },
  callback = 'set ft=json',
})

-- format options
vim.api.nvim_create_autocmd({ 'FileType', 'BufRead', 'BufEnter' }, {
  pattern = { '.eslintrc', '.babelrc', '.prettierrc' },
  callback = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o',
})

-- change dir to oppened file
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  command = 'cd %:p:h',
})
