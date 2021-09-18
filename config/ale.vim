let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_virtualtext_cursor = 1
let g:ale_python_auto_pipenv = 1
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 0


nnoremap <silent> gp :ALEPrevious<cr>
nnoremap <silent> gn :ALENext<cr>

" linters
let g:ale_linters = {'python': ['pylint', 'flake8'], 'markdown': ['writegood', 'textlint']}
let g:ale_writegood_options = '--no-tooWordy'

let g:ale_python_flake8_options = '--ignore=E501,E203,F405,F403'

" Disable Pylint variable name warning!!!
let g:ale_python_pylint_options = '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$ --disable=C0103,C0114,C0115,C0116,R0903'

let g:ale_r_lintr_options = "commented_code_linter=NULL"
let g:ale_r_lintr_options = "with_defaults(line_length_linter(120), commented_code_linter=NULL)"


" fixers
let g:ale_fixers = {'python': ['black'],
				\	'r': ['styler', 'remove_trailing_lines', 'trim_whitespace'],
                \   'tex': ['latexindent', 'remove_trailing_lines', 'textlint'],
                \   '*': ['trim_whitespace', 'remove_trailing_lines'],
                \   'markdown': ['prettier', 'textlint', 'remark-lint']}

let g:ale_python_black_options = '--line-length 120 --skip-string-normalization'
