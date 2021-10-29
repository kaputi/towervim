local ok, alpha = pcall(require, 'alpha')
if (ok) then
  local dashboard = require 'alpha.themes.dashboard'
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
    '                             Stand and be true'
  }

  dashboard.section.buttons.val = {
    dashboard.button("a", "  Last session", ":LoadSession<CR>"),
    dashboard.button("s", "  Open session",
        ":Telescope sessions initial_mode=normal<CR>"),
    dashboard.button("r", "  Recent",
        ":Telescope oldfiles initial_mode=normal<CR>"),
    dashboard.button("e", "  New file", ":ene<CR>"),
    dashboard.button("f", " Find file", ":Telescope find_files<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>")
  }
  -- local handle = io.popen('fortune')
  -- local fortune = handle:read("*a")
  -- handle:close()

  dashboard.section.footer.val = 'Go then, there are other worlds than these'

  alpha.setup(dashboard.opts)
end
