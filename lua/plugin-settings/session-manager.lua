local path_ok, Path = pcall(require, 'plenary.path')
local session_ok, session_manager = pcall(require, 'session_manager')
local telescope_ok, telescope = pcall(require, 'telescope')

if path_ok and session_ok and telescope_ok then
  session_manager.setup({
    sessions_dir = Path:new(CACHE_PATH, 'sessions'),
    -- sessions_dir = CACHE_PATH .. '/sessions',
    path_replacer = '__', -- The character to which the path separator will be replaced for session files.
    colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
    autoload_last_session = false, -- Automatically load last session on startup is started without arguments.
    autosave_last_session = true, -- Automatically save last session on exit.
    autosave_ignore_not_normal = true, -- Plugin will not save a session when no writable and listed buffers are opened.
  })

  telescope.load_extension('sessions')
end
