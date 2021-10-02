local autocmd = require('utils').autocmd

require('lint').linters_by_ft = {
  python = {'flake8', 'pylint',}
}

-- " highlight yank
autocmd('lint', "BufWritePost <buffer> lua require('lint').try_lint()", true)
