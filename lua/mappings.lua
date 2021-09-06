local M = {}

M.leader = "space"

M.mappings = {
  insert_mode = {
    --  jk for exit insert
    ["jk"] = "<ESC>",

    -- move current line / block with alt=j/k
    ["<A-j>"] = "<ESC>:m .+1<CR>==gi",
    ["<A-k>"] = "<ESC>:m .-2<CR>==gi",

    -- navigate tab completion with <c-j> and <c-k>
    -- runs conditionally
    ["<C-j>"] = { 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true } },
    ["<C-k>"] = { 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true } },
  },

  normal_mode = {
    -- I FUKING HATE CMMAND LINE WINDOW
    ['q:'] = '<NOP>',
    ['q/'] = '<NOP>',
    ['q?'] = '<NOP>',

    -- Better window navigation
    ['<c-h>'] = '<c-w>h',
    ['<c-j>'] = '<c-w>j',
    ['<c-k>'] = '<c-w>k',
    ['<c-l>'] = '<c-w>l',

    -- Use Alt + hjkl for resize
    ['<A-j>'] = ':resize -2<CR>',
    ['<A-k>'] = ':resize +2<CR>',
    ['<A-h>'] = ':vertical resize -2<CR>',
    ['<A-l>'] = ':vertical resize -2<CR>',

    -- Copy and paste
    ['<C-c>'] = '"+y',
    ['<A-c>'] = 'V"+y',

    -- Select all
    ['<C-a>'] = 'ggVG',

    -- Move faster
    ['J'] = '5j',
    ['K'] = '5k',

    -- Move to wraps
    ['j'] = 'gj',
    ['k'] = 'gk',

    -- Buffer navigation
    ['bn'] = ':BufferNext<CR>',
    ['bp'] = ':BufferPrevious<CR>',
    ['bd'] = ':BufferClose<CR>',
    -- H and L to switch tabs
    ['H'] = ':BufferNext<CR>',
    ['L'] = ':BufferPrevious<CR>',

  },
  term_mode = {},
  visual_mode = {
    -- Copy and paste
    ['<C-c>'] = '"+y',

    -- Move faster
    ['J'] = '5j',
    ['K'] = '5k',

    -- Move selction with Alt + j/k
    ['<A-k>'] = ':move \'<-2<CR>gv-gv',
    ['<A-j>'] = ':move \'>+1<CR>gv-gv',

    -- Better indenting
    ['>'] = '>gv',
    ['<'] = '<gv',


  },
  visual_block_mode = {},
  command_mode = {}
}

-- any code inside run function will be run after
function M:run()
  -- I dont release shift in time
  vim.cmd(':command! -bar -bang WQ wq<bang>')
  vim.cmd(':command! -bar -bang Wq wq<bang>')
  vim.cmd(':command! -bar -bang Wqa wqa<bang>')
  vim.cmd(':command! -bar -bang WQa wqa<bang>')
  vim.cmd(':command! -bar -bang W w<bang>')
  vim.cmd(':command! -bar -bang Q q<bang>')
end

return M
