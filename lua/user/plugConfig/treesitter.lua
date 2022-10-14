local ok, treesitter_configs = pcall(require, 'nvim-treesitter.configs')

if ok then
  treesitter_configs.setup({
    ensure_installed = 'all', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
      enable = true, -- false will disable the whole extension
    },
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false, -- Whether the query persists across vim sessions
    },
    -- rainbow = { enable = true },
    autotag = { enable = true },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = 'gnn',
        node_incremental = 'grn',
        scope_incremental = 'grc',
        node_decremental = 'grm',
      },
    },
    -- refactor = {
    --     highlight_definitions = {
    --       enable = false
    --     }
    --  }
    context_commentstring = {
      enable = true,
    },
  })
end
