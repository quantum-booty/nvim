local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', 'gn', ':lua vim.diagnostic.goto_next()<cr>', opts)
map('n', 'gp', ':lua vim.diagnostic.goto_prev()<cr>', opts)


local null_ls = require('null-ls')
null_ls.config({
    sources = { 
        null_ls.builtins.formatting.black.with({
            args = {
                 "--quiet", "--fast", "-" ,
                '--line-length', '120',
                '--skip-string-normalization',
            }
        }),
        null_ls.builtins.diagnostics.pylint.with({
            args = {
                '--from-stdin', '$FILENAME',
                '-f', 'json',
                '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$',
                '--disable=C0103,C0114,C0115,C0116,R0903',
                '--max-line-length=120',
            }
        }),
        null_ls.builtins.diagnostics.flake8.with({
            args = { "--stdin-display-name", "$FILENAME", "-", '--ignore=E501,E203,F405,F403' }
        }),

    }
})

on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end
end

require('lspconfig')['null-ls'].setup({on_attach = on_attach})
