local map = require('utils').map
local opts = { noremap=true, silent=true }
local autocmd = require('utils').autocmd

vim.opt.updatetime = 250
vim.opt.completeopt:append({'menuone','noselect','noinsert'})
vim.opt.completeopt:remove('preview')
vim.opt.shortmess:append('c')

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = "single",  focusable = false 
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
-- local aerial = require'aerial'
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
    buf_set_keymap('n', '<leader>d', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

    buf_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)

    -- because of this <tab> mapping, <C-i> has to be mapped to something else.
    buf_set_keymap('n', '<tab>', '<cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>rr', '<cmd>LspRestart<CR>', opts)
    -- buf_set_keymap('n', '<leader>=', '<cmd>set ff=unix<cr><cmd>lua vim.lsp.buf.formatting_sync()<CR>', opts)
    buf_set_keymap('n', '<leader>=', '<cmd>set ff=unix<cr><cmd>lua vim.lsp.buf.format({async=true})<CR>', opts)

    -- buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    buf_set_keymap('n', '<LeftMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.hover({border = "single"})<CR>', opts)
    buf_set_keymap('n', '<RightMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>', opts)

end





-------------------------------------------------------------------------------
-- nvim-cmp settings
-------------------------------------------------------------------------------
capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())



-------------------------------------------------------------------------------
-- language server setup
-------------------------------------------------------------------------------
autocmd('haskell', 'FileType', {pattern='haskell', command=[[autocmd CursorHold,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]]})
nvim_lsp.hls.setup { capabilities = capabilities, on_attach = on_attach}
-- nvim_lsp.fsautocomplete.setup{ capabilities = capabilities, on_attach = on_attach }
vim.cmd([[
let g:fsharp#lsp_auto_setup = 0
let g:fsharp#exclude_project_directories = ['paket-files']
]])
require'ionide'.setup{ capabilities = capabilities, on_attach = on_attach }


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



-------------------------------------------------------------------------------
-- python auto-virtual environment activation
-------------------------------------------------------------------------------
local util = require('lspconfig/util')
local path = util.path

local function find_virtual_environment(workspace)
    for _, dir in pairs({'venv', 'venv1', 'venv2'}) do
        local match = vim.fn.glob(path.join(workspace, dir))
        if match ~= '' then
            return path.dirname(match)
        end
    end
    return nil
end

local function get_python_path(virtual_env_path)
    if virtual_env_path then
        if vim.fn.has('win32') == 1 then
            python_path = virtual_env_path .. "\\Scripts" .. "\\python"
        else
            python_path = path.join(virtual_env_path, 'bin', 'python')
        end
            return python_path
    end
    return exepath('python3') or exepath('python') or 'python'
end


local function setup_virtual_env(virtual_env_path)
    vim.env.VIRTUAL_ENV = virtual_env_path

    if vim.fn.has('win32') == 1 then
        new_path = virtual_env_path..'\\Scripts'..';'..vim.env.Path
        vim.env.PATH = new_path
    else
        vim.env.PATH = path.join(virtual_env_path, "/bin:", vim.env.PATH)
    end
end


nvim_lsp.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    before_init = function(_, config)
        if not vim.env.VIRTUAL_ENV then
            virtual_env_path = find_virtual_environment(config.root_dir)
            setup_virtual_env(virtual_env_path)
            python_path = get_python_path(virtual_env_path)
            config.settings.python.pythonPath = python_path
        end
    end
})
