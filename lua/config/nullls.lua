local map = require('utils').map
local opts = { noremap=true, silent=true }



local null_ls = require('null-ls')
null_ls.setup({
    diagnostics_format = "#{m} (#{s})",
    debounce = 1000,
    default_timeout = 5000,
    sources = { 
        -- null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.formatting.black.with({
            args = {
                 "--quiet", "--fast", "-" ,
                -- '--line-length', '200',
                -- '--skip-string-normalization',
            }
        }),
        -- null_ls.builtins.diagnostics.pylint.with({
        --     method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        --     args = {
        --         '--from-stdin', '$FILENAME',
        --         '-f', 'json',
        --         '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$',
        --         '--disable=C0103,C0114,C0115,C0116,R0903,W0612,R1705',
        --         '--max-line-length=300',
        --     }
        -- }),
        -- null_ls.builtins.diagnostics.flake8.with({
        --     method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        --     args = { "--stdin-display-name", "$FILENAME", "-", '--ignore=E501,E303,E203,F405,F403,B007,W291,W293' }
        -- }),
    }
})

-- on_attach = function(client)
--     if client.resolved_capabilities.document_formatting then
--         vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
--     end
-- end
--


-- require('lspconfig')['null-ls'].setup({on_attach = on_attach})
-- require('lspconfig')['null-ls'].setup({})
