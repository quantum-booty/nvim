local map = require('utils').map
local opts = { noremap=true, silent=true }

require("nnn").setup()


map('n', '<leader>v', ':NnnExplorer<CR>', opts)
map('t', '<leader>v', ':NnnExplorer<CR>', opts)

-- vim.cmd(
-- [[
-- let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
-- let g:nnn#action = {
--             \ '<c-t>': 'tab split',
--             \ '<c-s>': 'split',
--             \ '<c-v>': 'vsplit'
--             \ }
-- ]])
