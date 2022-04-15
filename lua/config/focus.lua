require("focus").setup({
    signcolumn = false
})

vim.api.nvim_set_keymap('n', '<Del>', ':FocusToggle<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-Del>', ':FocusMaximise<CR>', { noremap=true, silent=true })
