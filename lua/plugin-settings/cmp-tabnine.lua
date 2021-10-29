local ok, tabnine = pcall(require, 'cmo_tabnine.comfig')
if ok then
  tabnine:setup({ max_lines = 1000, max_num_results = 20, sort = true })
end
