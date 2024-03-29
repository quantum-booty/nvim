local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>Ha', ':lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<leader>Hm', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
-- map('n', '<M-f>', ':lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>', opts)

map('n', '<leader>H1', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<leader>H2', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<leader>H3', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<leader>H4', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
map('n', '<leader>H5', ':lua require("harpoon.ui").nav_file(5)<CR>', opts)
-- map('n', '<leader>tu', ':lua require("harpoon.term").gotoTerminal(1)<CR>', opts)
-- map('n', '<leader>te', ':lua require("harpoon.term").gotoTerminal(2)<CR>', opts)
-- map('n', '<leader>cu', ':lua require("harpoon.term").sendCommand(1, 1)<CR>', opts)
-- map('n', '<leader>ce', ':lua require("harpoon.term").sendCommand(1, 2)<CR>', opts)
