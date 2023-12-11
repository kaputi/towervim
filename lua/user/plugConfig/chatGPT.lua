-- local ok, codegptConfig = pcall(require, 'codegpt.config')

-- if not ok then
--   return
-- end

-- vim.g.codegpt_openai_api_key = require('user.openai_api_key')

local ok, chatgpt = pcall(require, 'chatgpt')
if not ok then
  return
end
chatgpt.setup({
  -- TODO:
  -- api_key_cmd = 'cat /home/eduardo/.config/towervim/lua/user/openai_key',
  api_key_cmd = 'lua '
    .. vim.loop.os_homedir()
    .. '/.config/towervim/lua/user/openai_api_key.lua',

  chat = {
    question_sign = '', -- 🙂
    answer_sign = 'ﮧ', -- 🤖
  },
  openai_params = {
    max_tokens = 2000,
  },
  show_quickfixes_cmd = 'Trouble quickfix',
  predefined_chat_gpt_prompts = 'https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv',
})

