local map = require('utils').map
local opts = { noremap=true, silent=true }

-- vim.g.doge_enable_mappings = 0
vim.g.doge_doc_standard_python = 'numpy'
vim.g.doge_mapping = '<leader>D' 

vim.g.doge_mapping_comment_jump_forward = '<F12>'
vim.g.doge_mapping_comment_jump_backward = '<F24>'


map('n', '<leader>D', ':DogeGenerate numpy<CR>', opts)
