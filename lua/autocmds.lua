local M = {}

M.groups = {
  -- Whithout this lsp wont start on first open buffer
  FileTypeLua = {
    {
      'Filetype',
      '*',
      'lua require(\'utils.ft\').do_filetype(vim.fn.expand("<amatch>"))',
    },
  },
  YankHighlight = {
    { 'TextYankPost', '*', 'silent! lua require"vim.highlight".on_yank()' },
  },
  FormatOptions = {
    {
      'FileType,BufRead,BufEnter',
      '*',
      'setlocal formatoptions-=c formatoptions-=r formatoptions-=o',
    },
  },
  JsonFileTypes = {
    {
      'BufRead,BufNewFile',
      '.eslintrc,.babelrc,.prettierrc',
      'set filetype=json',
    },
  },
  TrimWhitespace = { { 'BufWritePre', '*', 'call TrimWhitespace()' } },
  Alpha = {
    'FileType alpha set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2',
    'FileType alpha set laststatus=0 | autocmd BufUnload <buffer> set laststatus=2',
    'FileType alpha set number=nonumber | autocmd BufUnload <buffer> set laststatus=2',
  },
  Vimwiki = {
    'FileType vimwiki setlocal textwidth=80',
    {
      'BufRead,BufNewFile',
      '*.wiki',
      'set filetype=vimwiki',
    },
  },
}

-- any code inside run function will be run after
function M:run() end

return M
