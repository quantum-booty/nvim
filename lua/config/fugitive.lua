local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>gb', ':GBranches<CR>', opts)
map('n', '<leader>gf', ' :Git fetch --all<CR>', opts)
map('n', '<leader>grum', ' :Git rebase upstream/master<CR>', opts)
map('n', '<leader>grom', ' :Git rebase origin/master<CR>', opts)
map('n', '<leader>gt', ' :diffget //3<CR>', opts)
map('n', '<leader>ga', ' :diffget //2<CR>', opts)
map('n', '<leader>gs', ' :G<CR>', opts)
map('n', '<leader>gc', ' :Git commit<CR>', opts)
map('n', '<leader>gp', ' :Git push<CR>', opts)
