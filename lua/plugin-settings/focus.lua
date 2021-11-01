local focus_ok, focus = pcall(require, 'focus')
if focus_ok then
  focus.setup({
    hybridnumber = true,
    excluded_filetypes = { 'toggleterm' },
  })
end
