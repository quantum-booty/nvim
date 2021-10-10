local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', 'gn', ':lua vim.diagnostic.goto_next()<CR>', opts)
map('n', 'gp', ':lua vim.diagnostic.goto_prev()<CR>', opts)


vim.opt.updatetime = 250
vim.opt.completeopt:append({'menuone','noselect','noinsert'})
vim.opt.completeopt:remove('preview')
vim.opt.shortmess:append('c')





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


vim.g.coq_settings = {
    ["auto_start"] = 'shut-up',
    ["keymap.bigger_preview"] = "<c-b>",
    -- ["clients.buffers.enabled"] = false,
    ["clients.snippets.enabled"] = false,
    ["clients.tree_sitter.enabled"] = false,
}

local coq = require "coq"


-------------------------------------------------------------------------------
-- nvim lspinstall settings
-------------------------------------------------------------------------------
-- local function setup_servers()
--   require'lspinstall'.setup()
--   local servers = require'lspinstall'.installed_servers()
--   for _, server in pairs(servers) do
--     require'lspconfig'[server].setup{}
--   end
-- end

-- setup_servers()

-- -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require'lspinstall'.post_install_hook = function ()
--   setup_servers() -- reload installed servers
--   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end



-------------------------------------------------------------------------------
-- nvim-cmp settings
-------------------------------------------------------------------------------
-- require'cmp'.setup {
--   sources = {
--     { name = 'nvim_lsp' }
--   }
-- }
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


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
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- because of this <tab> mapping, <C-i> has to be mapped to something else.
    map('n', '<tab>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    map('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    map('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    map('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    map('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    map('n', '<leader>=', ':lua vim.lsp.buf.formatting_sync()<CR>', opts)
    -- map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- map('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

end


-- nvim_lsp.pyright.setup { capabilities = capabilities, on_attach = on_attach}
-- nvim_lsp.pyright.setup(coq.lsp_ensure_capabilities({ on_attach = on_attach}))
nvim_lsp.pyright.setup({ on_attach = on_attach})
-- nvim_lsp.pylsp.setup { capabilities = capabilities, on_attach = on_attach}

local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/home/henryw/omnisharp/run"
-- on Windows
-- local omnisharp_bin = "/path/to/omnisharp/OmniSharp.exe"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    on_attach = on_attach,
}

-- nvim_lsp.texlab.setup { capabilities = capabilities, on_attach = on_attach}
-- nvim_lsp.julials.setup { capabilities = capabilities, on_attach = on_attach}
-- nvim_lsp.html.setup{}
-- nvim_lsp.r_language_server.setup { capabilities = capabilities, on_attach = on_attach,
-- settings = {
--     r = {
--         lsp = {
--             diagnostics = 0
--             }
--         }
--     }
-- }




-- -------------------------------------------------------------------------------
-- -- lsp saga
-- -------------------------------------------------------------------------------
-- -- preview definition
-- map('n', '<leader>f', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
-- -- rename
-- -- map('n', '<leader>rn', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
-- -- code action
-- map('n', '<leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
-- map('v', '<leader>ca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
-- -- show hover doc
-- map('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
-- -- scroll down hover doc or scroll in definition preview
-- -- float terminal also you can pass the cli command in open_float_terminal function
