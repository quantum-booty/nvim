local map = require('utils').map

vim.g.UltiSnipsExpandTrigger = '<F33>'
vim.g.UltiSnipsJumpForwardTrigger = '<F33>'
vim.g.UltiSnipsJumpBackwardTrigger = '<F34>'
vim.g.UltiSnipsEditSplit = 'vertical'

map('n', '<leader>se', ':UltiSnipsEdit<CR>', { noremap=true, silent=true })
