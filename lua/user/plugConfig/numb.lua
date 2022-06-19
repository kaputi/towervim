local numb_ok, numb = pcall(require, 'numb')
if numb_ok then
  numb.setup({
    show_numbers = true, -- Enable 'number' for the window while peeking
    show_cursorline = true, -- Enable 'cursorline' for the window while peeking
    number_only = false, -- Peek only when the command is only a number instead of when it starts with a number
  })
end
