lua <<EOF
require("telescope").setup {}
require("project_nvim").setup {}
require('telescope').load_extension('projects')
EOF

" project_nvim
nnoremap <silent> <leader>pp :Telescope projects<CR>

" --- File Pickers
" Fuzzy find over git files in your directory
nnoremap <silent> <C-p> :lua require('telescope.builtin').git_files()<CR>
" Search over files in your cwd current working directory.
nnoremap <silent> <Leader>pf :lua require('telescope.builtin').find_files()<CR>
" grep typed string
nnoremap <silent> <leader>pg :lua require('telescope.builtin').live_grep()<CR>
" grep cursor word
nnoremap <silent> <leader>pw :lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")}) <CR>
" grep line
nnoremap <silent> <leader>pl :lua require('telescope.builtin').grep_string()<CR>
nnoremap <silent> <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>


" --- Vim Pickers
" Opened buffer files
nnoremap <silent> <leader>pb :lua require('telescope.builtin').buffers()<CR>
" show help for cursor word
nnoremap <silent> <leader>pH :tab help <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <leader>ph <cmd>Telescope help_tags<cr>

" Convert currently quickfixlist to telescope
nnoremap <silent> <leader>qf :lua require('telescope.builtin').quickfix()<CR>
" Convert currently loclist to telescope
nnoremap <silent> <leader>L :lua require('telescope.builtin').loclist()<CR>
" Colour schemes
nnoremap <silent> <leader>pc :lua require('telescope.builtin').colorscheme()<CR>
" Key maps
nnoremap <silent> <leader>pk :lua require('telescope.builtin').keymaps()<CR>



" --- LSP Pickers
" References under cursor
nnoremap <silent> <leader>pr :lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>
" workspace symbol
nnoremap <silent> <leader>pW :lua require'telescope.builtin'.lsp_workspace_symbols()<CR>
" document symbol using treesitter
nnoremap <silent> <leader>pd :lua require'telescope.builtin'.treesitter()<CR>
" Code actions
nnoremap <silent> <leader>pa :lua require('telescope.builtin').lsp_code_actions()<CR>
nnoremap <leader>pD :lua require'telescope.builtin'.lsp_document_symbols{}<CR>


" " --- git pickers
" " commits
" nnoremap <silent> <leader>pgc :lua require('telescope.builtin').git_commits()<CR>
" " buffer git commits
" nnoremap <silent> <leader>pgbc :lua require('telescope.builtin').git_bcommits()<CR>
" " branches
" nnoremap <silent> <leader>pgb :lua require('telescope.builtin').git_branches()<CR>
" " status
" nnoremap <silent> <leader>pgs :lua require('telescope.builtin').git_status()<CR>
"
