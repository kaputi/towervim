local ok, codegptConfig = pcall(require, 'codegpt.config')

if not ok then
  return
end

vim.g.codegpt_openai_api_key = require('user.openai_api_key')
