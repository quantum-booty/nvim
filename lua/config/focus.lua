require("focus").setup({
    signcolumn = false
})

vim.api.nvim_set_keymap('n', '<Del>', ':FocusToggle<CR>', { noremap=true, silent=true })
