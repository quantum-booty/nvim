local map = require('utils').map
local opts = { noremap=true, silent=true }

vim.opt.updatetime = 250
vim.opt.completeopt:append({'menuone','noselect','noinsert'})
vim.opt.completeopt:remove('preview')
vim.opt.shortmess:append('c')


vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = "single"
    }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = "single"
    }
)



-------------------------------------------------------------------------------
-- Diagnostic settings
-------------------------------------------------------------------------------
vim.diagnostic.config({float = { border = 'single', show_header = false}})


-- diagnostic colours
vim.cmd([[
sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=
sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=

" sign define DiagnosticSignHint text=💡 texthl=DiagnosticSignHint linehl= numhl=
]])


-- =============================================================================
-- # lsp-config settings
-- =============================================================================
-- vim.lsp.set_log_level('debug')
-- log_path: ~/.cache/nvim/lsp.log

-------------------------------------------------------------------------------
-- lsp on attach settings
-------------------------------------------------------------------------------
local nvim_lsp = require('lspconfig')
local aerial = require'aerial'
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

    buf_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)

    -- because of this <tab> mapping, <C-i> has to be mapped to something else.
    buf_set_keymap('n', '<tab>', '<cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>rr', '<cmd>LspRestart<CR>', opts)
    buf_set_keymap('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting_sync()<CR>', opts)

    -- buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    -- buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    buf_set_keymap('n', '<LeftMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    buf_set_keymap('n', '<RightMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>', opts)



    aerial.on_attach(client)
    buf_set_keymap('n', '<leader>a', '<cmd>AerialToggle!<CR>', opts)
end


-- =============================================================================
-- coq settings
-- =============================================================================
-- vim.g.coq_settings = {
--     ["auto_start"] = 'shut-up',
--     ["keymap.bigger_preview"] = "<c-b>",
--     -- ["clients.buffers.enabled"] = false,
--     ["clients.snippets.enabled"] = false,
--     ["clients.tree_sitter.enabled"] = false,
-- }

-- local coq = require "coq"

-------------------------------------------------------------------------------
-- nvim-cmp settings
-------------------------------------------------------------------------------
capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())



-------------------------------------------------------------------------------
-- language server setup
-------------------------------------------------------------------------------
nvim_lsp.pyright.setup { capabilities = capabilities, on_attach = on_attach}
-- nvim_lsp.pyright.setup({ on_attach = on_attach })

if vim.fn.has('win32') == 1 then
    USERPROFILE = vim.env.USERPROFILE
    if USERPROFILE then
        omnisharp_bin = USERPROFILE.."/omnisharp-win-x64/OmniSharp.exe"
    end
else
    omnisharp_bin = "/home/henryw/omnisharp/run"
end
nvim_lsp.omnisharp.setup{
    capabilities = capabilities,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(vim.fn.getpid())};
    on_attach = on_attach,
}

