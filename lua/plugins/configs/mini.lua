require('mini.files').setup()

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>v', function() MiniFiles.open(vim.api.nvim_buf_get_name(0)) end, opts)
