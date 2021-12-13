local map = require('utils').map
local opts = { noremap=true, silent=true }

require('calltree').setup({
    layout = "left",
    layout_size = 40,
    jump_mode = "invoking",
    icons = "nerd",
    n_hls = false,
})


map('n', '<leader>ci', ':lua vim.lsp.buf.incoming_calls()<CR>', opts)
map('n', '<leader>co', ':lua vim.lsp.buf.outgoing_calls()<CR>', opts)
