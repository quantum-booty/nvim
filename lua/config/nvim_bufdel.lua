local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- delete buffers
map('n', '<leader>x', ':BufDel<cr>', opts)
map('n', '<leader>X', [[<Cmd>%bd|e#|bd#<Cr>|'"<Cr>]], opts) -- close all except current


require('bufdel').setup {
  next = 'cycle',  -- or 'alternate'
  quit = false,
}
