local ok, _ = pcall(require, 'alpha')

if ok then
  vim.api.nvim_buf_set_keymap(
    0,
    'n',
    'l',
    -- ':call v:lua.alpha_press()<CR>',
    ':lua require("alpha").press()<CR>',
    { noremap = true, silent = true }
)
end
-- l enters
