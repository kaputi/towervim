local telescope_ok, telescope = pcall(require, 'telescope')
local job_ok, Job = pcall(require, 'plenary.job')

if not telescope_ok or not job_ok then
  return
end

local actions = require('telescope.actions')
-- local actions = telescope.actions
-- local previewers = telescope.previewers
-- local previewers = require('telescope.previewers')
-- local Job = require('plenary.job')
-- local new_maker = function(filepath, bufnr, opts)
--   filepath = vim.fn.expand(filepath)
--   Job
--     :new({
--       command = 'file',
--       args = { '--mime-type', '-b', filepath },
--       on_exit = function(j)
--         local mime_type = vim.split(j:result()[1], '/')[1]
--         if mime_type == 'text' then
--           previewers.buffer_previewer_maker(filepath, bufnr, opts)
--         else
--           -- maybe we want to write something to the buffer here
--           vim.schedule(function()
--             vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { 'BINARY' })
--           end)
--         end
--       end,
--     })
--     :sync()
-- end

telescope.setup({
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      -- filetypes = {"png", "webp", "jpg", "jpeg"},
      find_command = 'rg', -- find command (defaults to `fd`)
    },
  },
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
      },
      n = { ['l'] = actions.select_default },
    },
    -- buffer_previewer_maker = new_maker,
    -- sorting_strategy = 'ascending',

    layout_strategy = 'vertical',
    -- layout_config = { preview_width = 60 },

    border = true,
    borderchars = {
      prompt = { '─', ' ', ' ', ' ', '─', '─', ' ', ' ' },
      -- results = { ' ' },
      results = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
      preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    },
  },
  pickers = {
    colorscheme = {
      enable_preview = true,
    },
    live_grep = {
      mappings = {
        n = {
          -- ['<C-o>'] =  actions.send_to_qflist + actions.open_qflist,
          -- ['<CR>'] = actions.select_default
        },
        i = {
          -- ['<CR>'] = {'<esc>', type = 'command'}
        },
      },
    },
  },
})

-- Replace netrw with telescope when opening . or dir
-- TODO
--   vim.cmd([[
--     augroup Telescope-Browser
--       au!
--       au VimEnter * sil! au! FileExplorer *
--       au BufEnter * lua require('plugin-settings.telescope-browser')
--     augroup END
--   ]])
-- telescope.load_extension('npm')

-- vim.cmd('autocmd User TelescopePreviewerLoaded setlocal number')
vim.api.nvim_create_augroup('_telescope', {})
vim.api.nvim_create_autocmd({
  'User',
}, {
  pattern = 'TelescopePreviewerLoaded',
  group = '_telescope',
  callback = function()
    vim.opt_local.number = true
  end,
})

telescope.load_extension('media_files')
