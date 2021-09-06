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
  TrimWhitespace = {{'BufWritePre', '*', 'call TrimWhitespace()'}},
  Dashboard = {
      -- {
        -- "FileType",
        -- "dashboard",
        -- "set laststatus=0 | autocmd BufLeave <buffer> set laststatus=2",
      -- },
      -- {
        -- "FileType",
        -- "dashboard",
        -- "set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2",
      -- }
  },
	Startify = {
		{
      "BufEnter,FileType",
      "startify",
      "set laststatus=0 | autocmd BufLeave <buffer> set laststatus=2"
    },
		{"BufEnter,FileType", "startify", "set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2"},
		-- {"FileType,Buf", "startify", "set showtabline=0"},
		-- {"User", "StartifyReady", "set laststatus=0"},
		-- {"User", "StartifyReady", "set showtabline=0"},
    -- {"User", "StartifyBufferOpened", "set showtabline=2"},
    -- {"User", "StartifyBufferOpened", "set laststatus=2"}
	}

}

-- any code inside run function will be run after
function M:run()
end

return M
