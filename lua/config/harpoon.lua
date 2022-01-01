local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<M-m>', ':lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<M-l>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
map('n', '<M-f>', ':lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>', opts)

map('n', '<M-t>', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<M-r>', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<M-s>', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<M-p>', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
-- map('n', '<m-t>', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
-- map('n', '<m-r>', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
-- map('n', '<m-s>', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
-- map('n', '<m-p>', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
-- map('n', '<leader>tu', ':lua require("harpoon.term").gotoTerminal(1)<CR>', opts)
-- map('n', '<leader>te', ':lua require("harpoon.term").gotoTerminal(2)<CR>', opts)
-- map('n', '<leader>cu', ':lua require("harpoon.term").sendCommand(1, 1)<CR>', opts)
-- map('n', '<leader>ce', ':lua require("harpoon.term").sendCommand(1, 2)<CR>', opts)
