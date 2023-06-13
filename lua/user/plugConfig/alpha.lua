local ok, alpha = pcall(require, 'alpha')
if ok then
  local name = ''

  local scandir = require('plenary.scandir')
  local get_last_session_filename = function()
    local sessions_path = CACHE_PATH .. '/sessions'

    local most_recent_filename = nil
    local most_recent_timestamp = 0
    for _, session_filename in ipairs(scandir.scan_dir(sessions_path)) do
      local timestamp = vim.fn.getftime(session_filename)
      if most_recent_timestamp < timestamp then
        most_recent_timestamp = timestamp
        most_recent_filename = session_filename
      end
    end
    return most_recent_filename
  end

  local filename = get_last_session_filename()

  if filename ~= nil then
    name = ': ' .. filename:match('^.+_(.+)$')
  end

  local dashboard = require('alpha.themes.dashboard')
  dashboard.section.header.val = {
    '                                   ____',
    '                                 /   () \\',
    '                          .--.  |   //   |  .--.',
    '                         : (\\ ". \\ ____ / ." /) :',
    '                          ".    `   ||     `  ."',
    '                           /    _        _    \\',
    '                          /     0}      {0     \\',
    '                         |       /      \\       |',
    '                         |      /        \\     |',
    '                          \\    |.  .==.  .|   /',
    '                           "._ \\.  \\__/  ./ _."',
    '                           /  ``"._-""-_."``  \\',
    '==========================================================================',
    '  _____     ____                                          ____     _____  ',
    ' /      \\  |  o |   See the TURTLE of  Enormous Girth    | o  |  /      \\ ',
    '|        |/ ___\\|    On his shell he holds the Earth     |/___ \\|        |',
    '|_________/        His thought is slow, but always kind        \\_________|',
    '|_|_| |_|_|          He holds us all within his mind           |_|_| |_|_|',
    '                                                                          ',
    '==========================================================================',
    '                             Stand and be true',
  }

  dashboard.section.buttons.val = {
    dashboard.button('a', '  Last session' .. name, ':LoadSession<CR>'),
    dashboard.button(
      's',
      '  Open session',
      ':Telescope sessions initial_mode=normal<CR>'
    ),
    dashboard.button(
      'r',
      '  Recent',
      ':Telescope oldfiles initial_mode=normal<CR>'
    ),
    dashboard.button('e', '  New file', ':ene<CR>'),
    dashboard.button('f', ' Find file', ':Telescope find_files<CR>'),
    -- dashboard.button('w', ' Vimwiki', ':VimwikiUISelect<CR>'),
    -- dashboard.button('w', ' Vimwiki', ':Telescope wikis<CR>'),
    -- dashboard.button('n', ' Notes', ':ZkNotes<CR>'),
    dashboard.button('q', '  Quit', ':qa<CR>'),
  }
  -- local handle = io.popen('fortune')
  -- local fortune = handle:read("*a")
  -- handle:close()

  dashboard.section.footer.val = 'Go then, there are other worlds than these'

  alpha.setup(dashboard.opts)

  vim.api.nvim_create_augroup('_alpha', {})
  -- local alphaBuf = nil
  vim.api.nvim_create_autocmd({ 'FileType' }, {
    group = '_alpha',
    pattern = { 'alpha' },
    callback = function(cmd)
      -- vim.opt.showtabline = 0
      vim.opt.laststatus = 0
      vim.opt.number = false
      -- alphaBuf = cmd.buf
    end,
  })
  vim.api.nvim_create_autocmd({ 'BufUnload', 'FileType' }, {
    -- buffer = alphaBuf,
    pattern = { 'alpha' },
    callback = function()
      -- vim.opt.showtabline = 2
      vim.opt.laststatus = 3
      vim.opt.number = true
    end,
  })
end
