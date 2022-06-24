_G.__luacache_config = {
  chunks = {
    enable = true,
    --   path = vim.fn.stdpath('cache')..'/luacache_chunks',
    path = CACHE_PATH .. '/luacache_chunks',
  },
  modpaths = {
    enable = true,
    -- path = vim.fn.stdpath('cache')..'/luacache_modpaths',
    path = CACHE_PATH .. '/luacache_modpaths',
  },
}
-- require('impatient')
require('impatient').enable_profile()
