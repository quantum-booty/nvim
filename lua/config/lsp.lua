local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', 'gn', ':lua vim.diagnostic.goto_next()<CR>', opts)
map('n', 'gp', ':lua vim.diagnostic.goto_prev()<CR>', opts)


vim.opt.updatetime = 250
vim.opt.completeopt:append({'menuone','noselect','noinsert'})
vim.opt.completeopt:remove('preview')
vim.opt.shortmess:append('c')



vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        -- Use a sharp border with `FloatBorder` highlights
        border = "single"
    }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        -- Use a sharp border with `FloatBorder` highlights
        border = "single"
    }
)


vim.cmd([[
sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=
sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=

" sign define DiagnosticSignWarn text=🌊 texthl=DiagnosticSignWarn linehl= numhl=
" sign define DiagnosticSignWarn text=🎃 texthl=DiagnosticSignWarn linehl= numhl=
" sign define DiagnosticSignInfo text=🌲 texthl=DiagnosticSignInfo linehl= numhl=
" sign define DiagnosticSignHint text=💡 texthl=DiagnosticSignHint linehl= numhl=
]])


-- =============================================================================
-- # lsp-config settings
-- =============================================================================
-- vim.lsp.set_log_level('debug')
-- log_path: ~/.cache/nvim/lsp.log

-------------------------------------------------------------------------------
-- Language server settings
-------------------------------------------------------------------------------
local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- because of this <tab> mapping, <C-i> has to be mapped to something else.
    map('n', '<tab>', '<cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    map('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    map('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    map('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    map('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    map('n', '<leader>=', ':lua vim.lsp.buf.formatting_sync()<CR>', opts)
    -- map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- map('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    map('n', '<LeftMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    map('n', '<RightMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>', opts)
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
-- nvim_lsp.pylsp.setup { capabilities = capabilities, on_attach = on_attach}

local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/home/henryw/omnisharp/run"
-- on Windows
-- local omnisharp_bin = "/path/to/omnisharp/OmniSharp.exe"
nvim_lsp.omnisharp.setup{
    capabilities = capabilities,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid)};
    on_attach = on_attach,
}



-------------------------------------------------------------------------------
-- lsp signature
-------------------------------------------------------------------------------
cfg = {
    bind = true, -- mandatory
    doc_lines = 60,
    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

    -- floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
    fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
    hint_enable = false, -- virtual hint enable
    -- hint_prefix = "🐼 ",  -- Panda for parameter
    -- hint_scheme = "String",
    -- use_lspsaga = false,  -- set to true if you want to use lspsaga popup
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    max_height = 60, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    -- to view the hiding contents
    max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    transpancy = 10, -- set this value if you want the floating windows to be transpant (100 fully transpant), nil to disable(default)
    handler_opts = {
        border = "single"   -- double, single, shadow, none
    },
}

require'lsp_signature'.setup(cfg)
