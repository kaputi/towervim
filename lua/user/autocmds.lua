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
  command = 'set ft=json',
})

-- format options
vim.api.nvim_create_autocmd({ 'FileType', 'BufRead', 'BufEnter' }, {
  pattern = '*',
  command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o',
})

-- change dir to oppened file
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  -- command = 'cd %:p:h',
  callback = function()
    vim.cmd('cd %:p:h')
    if vim.o.ft ~= 'alpha' then
      -- require('user.functions').notify('cd to '.. vim.fn.getcwd())
      print(vim.fn.getcwd())
    end
  end,
})

-- glsl filetype
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = {
    '*.frag',
    '*.vert',
    '*.tesc',
    '*.tese',
    '*.comp',
    '*.geom',
    '*.glsl',
  },
  -- callback = "set ft=glsl"
  callback = function()
    vim.bo.filetype = 'glsl'
  end,
})

-- vim.api.nvim_create_autocmd({ 'CursorMoved', 'BufWinEnter', 'BufFilePost' }, {
--   callback = function()
--     local winbar_filetype_exclude = {
--       'help',
--       'startify',
--       'dashboard',
--       'packer',
--       'neogitstatus',
--       'NvimTree',
--       'Trouble',
--       'alpha',
--       'lir',
--       'Outline',
--       'spectre_panel',
--       'toggleterm',
--     }

--     if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
--       vim.opt_local.winbar = nil
--       return
--     end

--     local value = require('user.functions').winbarValue()

--     vim.opt_local.winbar = value
--   end,
-- })

vim.api.nvim_create_autocmd(
    { "CursorMoved", "CursorHold", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost", "TabClosed" },
    {
      callback = function()
        -- require("user.winbar").get_winbar()
      end,
    }
  )
