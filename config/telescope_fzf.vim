" =============================================================================
" # FZF, ACK
" =============================================================================
if executable('rg')
    let g:rg_derive_root='true'
endif


let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let g:FZF_DEFAULT_OPTS='--reverse'

" ack ---------------------------------
let g:ackprg = 'ag --nogroup --nocolor --column'


" =============================================================================
" # Telescope
" =============================================================================

:lua <<EOF
require('telescope').setup{
  defaults = {
    winblend = 0,
    width = 0.75,
    preview_cutoff = 80,
    r120esults_height = 1,
    results_width = 0.8,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new, 
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  }
}
EOF


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


" --- Vim Pickers
" Opened buffer files
nnoremap <silent> <leader>pb :lua require('telescope.builtin').buffers()<CR>
" show help for cursor word
nnoremap <silent> <leader>ph :tab help <C-R>=expand("<cword>")<CR><CR>

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
nnoremap <silent> <leader>pr :lua require('telescope.builtin').lsp_references()<CR>
" workspace symbol
nnoremap <silent> <leader>pW :lua require'telescope.builtin'.lsp_workspace_symbols()<CR>
" document symbol using treesitter
nnoremap <silent> <leader>pd :lua require'telescope.builtin'.treesitter()<CR>
" Code actions
nnoremap <silent> <leader>pa :lua require('telescope.builtin').lsp_code_actions()<CR>
" nnoremap <leader>g0 :lua require'telescope.builtin'.lsp_document_symbols{}<CR>
" use the telescope


" " --- git pickers
" " commits
" nnoremap <silent> <leader>pgc :lua require('telescope.builtin').git_commits()<CR>
" " buffer git commits
" nnoremap <silent> <leader>pgbc :lua require('telescope.builtin').git_bcommits()<CR>
" " branches
" nnoremap <silent> <leader>pgb :lua require('telescope.builtin').git_branches()<CR>
" " status
" nnoremap <silent> <leader>pgs :lua require('telescope.builtin').git_status()<CR>

