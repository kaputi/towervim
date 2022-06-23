local ok, gps = pcall(require, 'nvim-gps')
if not ok then
  return
end
-- Customized config
gps.setup({
  -- disable_icons = false,           -- Setting it to true will disable all icons

  -- icons = {
  --   ["class-name"] = ' ',      -- Classes and class-like objects
  --   ["function-name"] = ' ',   -- Functions
  --   ["method-name"] = ' ',     -- Methods (functions inside class-like objects)
  --   ["container-name"] = '⛶ ',  -- Containers (example: lua tables)
  --   ["tag-name"] = '炙'         -- Tags (example: html tags)
  -- },

  -- -- Add custom configuration per language or
  -- -- Disable the plugin for a language
  -- -- Any language not disabled here is enabled by default
  -- languages = {
  --   -- Some languages have custom icons
  --   ["json"] = {
  --     icons = {
  --       ["array-name"] = ' ',
  --       ["object-name"] = ' ',
  --       ["null-name"] = '[] ',
  --       ["boolean-name"] = 'ﰰﰴ ',
  --       ["number-name"] = '# ',
  --       ["string-name"] = ' '
  --     }
  --   },
  --   ["latex"] = {
  --     icons = {
  --       ["title-name"] = "# ",
  --       ["label-name"] = " ",
  --     },
  --   },
  --   ["norg"] = {
  --     icons = {
  --       ["title-name"] = " ",
  --     },
  --   },
  --   ["toml"] = {
  --     icons = {
  --       ["table-name"] = ' ',
  --       ["array-name"] = ' ',
  --       ["boolean-name"] = 'ﰰﰴ ',
  --       ["date-name"] = ' ',
  --       ["date-time-name"] = ' ',
  --       ["float-name"] = ' ',
  --       ["inline-table-name"] = ' ',
  --       ["integer-name"] = '# ',
  --       ["string-name"] = ' ',
  --       ["time-name"] = ' '
  --     }
  --   },
  --   ["verilog"] = {
  --     icons = {
  --       ["module-name"] = ' '
  --     }
  --   },
  --   ["yaml"] = {
  --     icons = {
  --       ["mapping-name"] = ' ',
  --       ["sequence-name"] = ' ',
  --       ["null-name"] = '[] ',
  --       ["boolean-name"] = 'ﰰﰴ ',
  --       ["integer-name"] = '# ',
  --       ["float-name"] = ' ',
  --       ["string-name"] = ' '
  --     }
  --   },
  --   ["yang"] = {
  --     icons = {
  --       ["module-name"] = " ",
  --       ["augment-path"] = " ",
  --       ["container-name"] = " ",
  --       ["grouping-name"] = " ",
  --       ["typedef-name"] = " ",
  --       ["identity-name"] = " ",
  --       ["list-name"] = "﬘ ",
  --       ["leaf-list-name"] = " ",
  --       ["leaf-name"] = " ",
  --       ["action-name"] = " ",
  --     }
  --   },

  --   -- Disable for particular languages
  --   -- ["bash"] = false, -- disables nvim-gps for bash
  --   -- ["go"] = false,   -- disables nvim-gps for golang

  --   -- Override default setting for particular languages
  --   -- ["ruby"] = {
  --   --	separator = '|', -- Overrides default separator with '|'
  --   --	icons = {
  --   --		-- Default icons not specified in the lang config
  --   --		-- will fallback to the default value
  --   --		-- "container-name" will fallback to default because it's not set
  --   --		["function-name"] = '',    -- to ensure empty values, set an empty string
  --   --		["tag-name"] = ''
  --   --		["class-name"] = '::',
  --   --		["method-name"] = '#',
  --   --	}
  --   --}
  -- },

  -- separator = ' > ',

  -- -- limit for amount of context shown
  -- -- 0 means no limit
  -- depth = 0,

  -- -- indicator used when context hits depth limit
  -- depth_limit_indicator = ".."
})

local function isempty(s)
  return s == nil or s == ""
end

local getFilename = function()
  local filename = vim.fn.expand "%:t"
  local extension = ""
  local file_icon = ""
  local file_icon_color = ""
  local default_file_icon = ""
  local default_file_icon_color = ""

  if not isempty(filename) then
    extension = vim.fn.expand "%:e"

    local default = false

    if isempty(extension) then
      extension = ""
      default = true
    end

    file_icon, file_icon_color = require("nvim-web-devicons").get_icon_color(filename, extension, { default = default })

    local hl_group = "FileIconColor" .. extension

    vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color })
    if file_icon == nil then
      file_icon = default_file_icon
      file_icon_color = default_file_icon_color
    end

    return "%#CursorLineNr#      %m %*" .. "%#" .. hl_group .. "#" .. file_icon .. "%*" .. " " .. "%#LineNr#" .. filename .. "%*"
  end
end

local winbarValue = function()

  local filename = getFilename()

  local gps_location = ''
  if gps.is_available() then
    gps_location = gps.get_location()
  end

  if gps_location == 'error' then
    gps_location = ''
  end

  if not isempty(gps_location) then
    return filename .. ' > ' .. gps_location
  else
    return filename
  end
end

vim.api.nvim_create_autocmd({ 'CursorMoved', 'BufWinEnter', 'BufFilePost' }, {
  callback = function()
    local winbar_filetype_exclude = {
      'help',
      'startify',
      'dashboard',
      'packer',
      'neogitstatus',
      'NvimTree',
      'Trouble',
      'alpha',
      'lir',
      'Outline',
      'spectre_panel',
      'toggleterm',
    }

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      vim.opt_local.winbar = nil
      return
    end

    local value = winbarValue()

    vim.opt_local.winbar = value
  end,
})
