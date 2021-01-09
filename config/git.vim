" =============================================================================
" # Fugitive
" =============================================================================
nnoremap <silent> <leader>gb :GBranches<CR>
nnoremap <silent> <leader>gf :Git fetch --all<CR>
nnoremap <silent> <leader>grum :Git rebase upstream/master<CR>
nnoremap <silent> <leader>grom :Git rebase origin/master<CR>
nnoremap <silent> <leader>gt :diffget //3<CR>
nnoremap <silent> <leader>ga :diffget //2<CR>
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gp :Gpush<CR>

" =============================================================================
" # Gitgutter
" =============================================================================
let g:gitgutter_map_keys = 0
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghs <Plug>(GigutterStageHunk)
xmap ghs <Plug>(GigutterStageHunk)
