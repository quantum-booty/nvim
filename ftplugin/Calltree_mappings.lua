local buf_map = require('utils').buf_map
local opts = { noremap=true, silent=true }


buf_map(0, "n", "l", ":CTExpand<CR>", opts)
buf_map(0, "n", "h", ":CTCollapse<CR>", opts)
buf_map(0, "n", "<CR>", ":CTJump<CR>", opts)
buf_map(0, "n", "i", ":CTHover<CR>", opts)
buf_map(0, "n", "d", ":CTDetails<CR>", opts)
buf_map(0, "n", "f", ":CTFocus<CR>", opts)
buf_map(0, "n", "s", ":CTSwitch<CR>", opts)
buf_map(0, "n", "?", ":lua require('calltree.ui').help(true)<CR>", opts)


