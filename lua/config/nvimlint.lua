local map = require('utils').map
local opts = { noremap=true, silent=true }

nvim_lint = require('lint')
nvim_lint.linters_by_ft = {
  python = {'pylint','flake8'}
}

map('n', '<leader>l', ':lua require("lint").try_lint()<CR>', opts)



nvim_lint.linters.pylint.args = {
    '-f', 'json',
    '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$',
    '--disable=C0103,C0114,C0115,C0116,R0903,W0612,R1705',
    '--max-line-length=300',
  }


nvim_lint.linters.flake8.args = {
    '--format=%(path)s:%(row)d:%(col)d:%(code)s:%(text)s',
    '--no-show-source',
    '-',
    '--ignore=E501,E303,E203,F405,F403,B007,W291'
}
