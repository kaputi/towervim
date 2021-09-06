local M = {}

M.groups = {
  YankHighlight = {
    {'TextYankPost', '*', 'silent! lua require"vim.highlight".on_yank()'}
  },
  FormatOptions = {
    {
      'FileType,BufRead,BufEnter', '*',
      'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
    }
  },
  JsonFileTypes = {
    {
      'BufRead,BufNewFile', '.eslintrc,.babelrc,.prettierrc',
      'set filetype=json'
    }
  },
  TrimWhitespace = {{'BufWritePre', '*', 'call TrimWhitespace()'}}
}

-- any code inside run function will be run after
function M:run()
end

return M
