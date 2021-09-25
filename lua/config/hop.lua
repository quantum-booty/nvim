local map = require('utils').map
local opts = { noremap=true, silent=true }

-- =============================================================================
-- # Hop
-- =============================================================================
map('n', 's', ':HopChar2<CR>', opts)
map('o', 's', ':HopChar2<CR>', opts)
require'hop'.setup {keys = 'hieatrspyoudncjkmlf'}
