local function toggle_diagnostic_mappings()
    if vim.diagnostic.config().virtual_lines then
        vim.keymap.set('n', 'gn', function() vim.diagnostic.goto_next({ float = false }) end, opts)
        vim.keymap.set('n', 'gp', function() vim.diagnostic.goto_prev({ float = false }) end, opts)
    else
        vim.keymap.set('n', 'gn', function() vim.diagnostic.goto_next({}) end, opts)
        vim.keymap.set('n', 'gp', function() vim.diagnostic.goto_prev({}) end, opts)
    end
end

local function toggle_lsp_lines()
    local new_value = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_value, virtual_text = not new_value })
    toggle_diagnostic_mappings()
    return new_value
end

require("lsp_lines").setup()
vim.diagnostic.config({ virtual_text = true, virtual_lines = false, float = { border = 'single', show_header = false } })
toggle_diagnostic_mappings()
vim.keymap.set("n", "<Leader>d", toggle_lsp_lines, { desc = "Toggle lsp_lines" })
