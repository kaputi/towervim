local ok, cmp = pcall(require, 'cmp')
if ok then
  local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local check_backspace = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
  end

  cmp.setup({
    -- utilsnips
    -- snippet = {
    --   expand = function(args)
    --     vim.fn["UltiSnips#Anon"](args.body)
    --   end
    -- },

    -- vsnip
    snippet = {
      expand = function(args)
        vim.fn['vsnip#anonymous'](args.body)
      end,
    },
    documentation = {
      border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
    },
    formatting = {
      format = function(entry, vim_item)
        local icons = require('lsp.settings').kind
        vim_item.kind = icons[vim_item.kind]
        vim_item.menu = ({
          nvim_lsp = '[lsp]',
          emoji = '[emoji]',
          path = '[path]',
          calc = '[calc]',
          cmp_tabnine = '[tabnine]',
          vsnip = '[snippet]',
          buffer = '[buffer]',
        })[entry.source.name]
        vim_item.dup = ({ buffer = 1, path = 1, nvim_lsp = 0 })[entry.source.name]
          or 0
        return vim_item
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'vsnip' },
      { name = 'cmp_tabnine' },
      { name = 'nvim_lua' },
      { name = 'buffer' },
      { name = 'calc' },
      { name = 'emoji' },
      { name = 'treesitter' },
      { name = 'crates' },
    },
    mapping = {
      ['<c-d>'] = cmp.mapping.scroll_docs(-4),
      ['<c-f>'] = cmp.mapping.scroll_docs(4),
      -- vsnip
      ['<Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.call('vsnip#jumpable', { 1 }) == 1 then
          vim.fn.feedkeys(t('<plug>(vsnip-expand-or-jump)'), '')
        elseif cmp.visible() == true then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
        elseif check_backspace() then
          vim.fn.feedkeys(t('<tab>'), 'n')
        else
          fallback() -- The fallback function is treated as original mapped key. In this case, it might be `<Tab>`.
        end
      end, {
        'i',
        's',
      }),
      ['<s-Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.call('vsnip#jumpable', { -1 }) == 1 then
          vim.fn.feedkeys(t('<plug>(vsnip-jump-prev)'), '')
        elseif cmp.visible() == true then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
        else
          fallback() -- The fallback function is treated as original mapped key. In this case, it might be `<Tab>`.
        end
      end, {
        'i',
        's',
      }),

      -- ["<tab>"] = cmp.mapping(function()
      --   if vim.fn.pumvisible() == 1 then
      --     vim.fn.feedkeys(t "<C-n>", "n")
      --   elseif vim.fn.call("vsnip#available", {1}) == 1 then
      --     vim.fn.feedkeys(t "<plug>(vsnip-expand-or-jump)", "")
      --   elseif check_backspace() then
      --     vim.fn.feedkeys(t "<tab>", "n")
      --   else
      --     vim.fn.feedkeys(t "<tab>", "n")
      --   end
      --  end,{"i","s"}),

      -- ["<s-tab>"] = cmp.mapping(function()
      --   if vim.fn.pumvisible() == 1 then
      --     vim.fn.feedkeys(t "<C-p>", "n")
      --  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
      --     vim.fn.feedkeys(t "<plug>(vsnip-jump-prev)", "")
      --   else
      --     vim.fn.feedkeys(t "<s-tab>", "n")
      --   end
      -- end, {
      --   "i",
      --   "s",
      -- }),
      -- utilsnips
      -- ["<tab>"] = cmp.mapping(function(fallback)
      --   if vim.fn.pumvisible() == 1 then
      --     if vim.fn["ultisnips#canexpandsnippet"]() == 1 or vim.fn["ultisnips#canjumpforwards"]() == 1 then
      --         return vim.fn.feedkeys(t" <c-r>=ultisnips#expandsnippetorjump()<cr>")
      --     end
      --     vim.fn.feedkeys(t "<c-n>", "n")
      --       elseif check_backspace() then
      --           vim.fn.feedkeys(t "<tab>", "n")
      --       else
      --           fallback()
      --       end
      --   end, {"i", "s"}),
      -- ["<s-tab>"] = cmp.mapping(function(fallback)
      --   if vim.fn.pumvisible() == 1 then
      --     vim.fn.feedkeys(t("<C-p>"), "n")
      --   else
      --     fallback()
      --   end
      -- end, {"i", "s"}),

      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      -- ["<Esc>"] = cmp.mapping(
      --   function(fallback)
      --     if cmp.visible() == true then
      --       cmp.close()
      --     else
      --       fallback()
      --     end
      --   end, {"i", "s"}
      -- ),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }),
    },
  })
end
