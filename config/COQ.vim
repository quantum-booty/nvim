" =============================================================================
" # COQ settings
" =============================================================================
" " Set recommended to false
" vim.g.coq_settings = { ["keymap.recommended"] = false }
let g.coq_settings = { "keymap.recommended" = v:false }

" Keybindings
inoremap <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
inoremap <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
inoremap <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
inoremap <expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
"  " select first option with <cr>, may or may not work, need testing
" inoremap <expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-n><C-y>" : "\<C-y>") : "\<CR>"
inoremap <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"

autocmd VimEnter * COQnow
