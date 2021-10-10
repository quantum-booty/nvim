local map = require('utils').map

-- map('i', '<Del>', '<nop>', { noremap=true, silent=true })
vim.g.UltiSnipsExpandTrigger = '<F12>'
vim.g.UltiSnipsJumpForwardTrigger = '<F12>'
vim.g.UltiSnipsJumpBackwardTrigger = '<F24>'
vim.g.UltiSnipsEditSplit = 'vertical'

map('n', '<leader>se', ':UltiSnipsEdit<CR>', { noremap=true, silent=true })
