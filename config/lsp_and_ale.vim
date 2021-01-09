set updatetime=50
set completeopt+=menuone,noselect,noinsert
set completeopt-=preview
set shortmess+=c

" =============================================================================
" # Nvim completion settings
" =============================================================================
" Enter to select the first completion if no item is selected
let g:completion_confirm_key = ""

" Matching Strategy
let g:completion_matching_strategy_list = ['exact', 'substring']
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" let g:completion_matching_smart_case = 1
let g:completion_matching_ignore_case = 1
let g:completion_enable_auto_paren = 1
let g:completion_timer_cycle = 80 "default value is 80
let g:completion_sorting = "length"
" let g:completion_sorting = "alphabet"
let g:completion_trigger_on_delete = 1

let g:completion_auto_change_source = 1
" imap  <c-j> <Plug>(completion_next_source)
" imap  <c-k> <Plug>(completion_prev_source)



" lua vim.lsp.set_log_level('error')
" log_path: ~/.local/share/nvim/lsp.log

let g:completion_customize_lsp_label = {
      \ 'Function': '',
      \ 'f':'',
      \ 'Method': '',
      \ 'Constructor': '',
      \ 'Variable': '',
      \ 'v': '',
      \ 'Constant': '',
      \ 'UltiSnips': '烈',
      \ 'Keyword': '',
      \ 'Module': '',
      \ 'Class': '',
      \ 'Reference': '',
      \ 'Folder': '',
      \ 'Snippet': '',
      \ 'Operator': '',
      \ 'Text': '',
      \ 'Interface': '',
      \}

let g:completion_enable_snippet = "UltiSnips"

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'ts', 'UltiSnips']},
    \{'complete_items': ['buffers']},
    \{'complete_items': ['path'], 'triggered_only': ['/']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]


"" snippet
" let g:completion_enable_snippet = 'UltiSnips'



" =============================================================================
" # Nvim completion mappings
" =============================================================================

inoremap <expr> <CR> 
	\ pumvisible() ? (complete_info().selected == -1 ?
	\ '<C-n><Plug>(completion_confirm_completion)' :
	\ '<Plug>(completion_confirm_completion)') : '<CR>'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" " tab triggers completion
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ completion#trigger_completion()

nnoremap gd :lua vim.lsp.buf.definition()<CR>
" because of this tab mapping, <C-i> has to be mapped to something else.
nnoremap <tab> :lua vim.lsp.buf.hover()<CR>

" rename variable
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>

nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>

" These doesn't work
" nnoremap <silent> gd    :lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> 1gD   :lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> g1 :lua vim.lsp.util.apply_text_document_edit()<CR>
" nnoremap <silent> g2 :lua vim.lsp.util.apply_text_edits()<CR>
" nnoremap <silent> g3 :lua vim.lsp.util.apply_workspace_edit()<CR>

" =============================================================================
" # LSP config
" =============================================================================
autocmd BufEnter * lua require'completion'.on_attach()

set nofixeol

:lua <<EOF
local util = require("lspconfig/util")
require'lspconfig'.r_language_server.setup{}
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.sqlls.setup{
--   cmd = {"sql-language-server", "up", "--method", "stdio"};
-- }

require'lspconfig'.julials.setup{}

require'lspconfig'.pyright.setup{
    root_dir = function(fname)
    return util.root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt")(fname) or
    util.path.dirname(fname)
              end;
}

require'lspconfig'.pyls.setup{
settings ={
    pyls = {
        plugins = {
            jedi_hover = {enabled = true},
            jedi_completion = {enabled = false},
            jedi_definition = {enabled = false},
            yapf = {enabled = false},
            rope_completion = {enabled = false},
            pylint = {enabled = false},
            pyflakes = {enabled = false},
            pydocstyle = {enabled = false},
            preload = {enabled = false},
            mccabe = {enabled = false},
            jedi_symbols = {enabled = false},
            jedi_references = {enabled = false},

}}}}
EOF

" inoremap <C-c> <ESC>:lua vim.lsp.buf.hover()<CR>a

" lua <<EOF
" require'lspconfig'.pyls_ms.setup{
"     init_options = {
"         interpreter = {
"             properties = {
"                 InterpreterPath = "/home/henryw/virtualenvs/data_sci/bin/python",
"                 Version = "3.9"
"             }
"         }
"     }
"     }
" EOF

" lua <<EOF
" require'nvim_lsp'.jedi_language_server.setup{
"   capabilities = {
"     textDocument = {
"       completion = {
"         completionItem = {
"           snippetSupport = false
"         }
"       },
        
"     }
"   },
" }
" EOF


" =============================================================================
" # ALE for diagnostics
" =============================================================================
" sign define LspDiagnosticsSignError       text=  texthl=LspDiagnosticsSignError
" sign define LspDiagnosticsSignWarning     text=  texthl=LspDiagnosticsSignWarning
" sign define LspDiagnosticsSignInformation text=  texthl=LspDiagnosticsSignInformation
" sign define LspDiagnosticsSignHint        text=  texthl=LspDiagnosticsSignHint
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
" Airline status bar
" let g:airline#extensions#ale#enabled = 1
let g:ale_virtualtext_cursor = 1
" flake8 and pylint
let g:ale_linters = {'python': ['mypy', 'pylint', 'flake8']}
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_python_flake8_options = '--ignore=E501,E203'
 
let g:ale_fixers = {'python': ['black'], 
				\	'r': ['styler', 'remove_trailing_lines', 'trim_whitespace']}

let g:ale_python_black_options = '--line-length 120 --skip-string-normalization'



let g:ale_fix_on_save = 1

let g:ale_python_auto_pipenv = 1
" Disable Pylint variable name warning!!!
let g:ale_python_pylint_options = '--argument-rgx=^[a-z][a-z0-9]*((_[a-z0-9]+)*)?$'

nnoremap <silent> gp :ALEPrevious<cr>
nnoremap <silent> gn :ALENext<cr>
