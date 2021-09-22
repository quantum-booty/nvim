local map = require('utils').map

local sidebar = require('sidebar-nvim')
local opts = {
    open = true,
    disable_default_keybindings = 1,
    side = 'right',
}

sidebar.setup(opts)

map('n', '<leader>b', '<cmd>SidebarNvimToggle<CR>', { noremap=true, silent=true })
