local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', 'gp', ':ALEPrevious<cr>', opts)
map('n', 'gn', ':ALENext<cr>', opts)

map('n', 'g)', ':lua vim.diagnostic.goto_next()<CR>', opts)
map('n', 'g(', ':lua vim.diagnostic.goto_prev()<CR>', opts)

map('n', '<leader>f', ':ALEFix<CR>', opts)

vim.g.ale_sign_error = ''
vim.g.ale_sign_warning = ''

-- vim.g.ale_sign_error = ''
-- vim.g.ale_sign_warning = ''
-- vim.g.ale_sign_info = ''
-- vim.g.ale_sign_style_error = ''
-- vim.g.ale_sign_style_warning = ''


vim.g.ale_virtualtext_cursor = 1
-- vim.g.ale_python_auto_pipenv = 1
vim.g.ale_fix_on_save = 0
-- vim.g.ale_lint_delay = 0



 -- linters
vim.g.ale_linters = {python = {'pylint', 'flake8'}, markdown= {'writegood', 'textlint'}}

vim.g.ale_python_flake8_options = '--ignore=E501,E203,F405,F403,B007,W291'

 -- Disable Pylint variable name warning!!!
vim.g.ale_python_pylint_options = '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$ --disable=C0103,C0114,C0115,C0116,R0903,W0612,R1705'

vim.g.ale_r_lintr_options = "commented_code_linter=NULL"
vim.g.ale_r_lintr_options = "with_defaults(line_length_linter(120), commented_code_linter=NULL)"
vim.g.ale_writegood_options = '--no-tooWordy'


-- fixers
vim.g.ale_fixers = {
    python = {'black'},
    r = {'styler', 'remove_trailing_lines', 'trim_whitespace'},
    tex = {'latexindent', 'remove_trailing_lines', 'textlint'},
    markdown = {'prettier', 'textlint', 'remark-lint'},
    vim = {'remove_trailing_lines', 'trim_whitespace'},
    lua = {'remove_trailing_lines', 'trim_whitespace'},
}

vim.g.ale_python_black_options = '--line-length 120 --skip-string-normalization --fast --quiet'

-- require("nvim-ale-diagnostic")

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     underline = true,
--     virtual_text = true,
--     signs = true,
--     update_in_insert = false,
--   }
-- )
