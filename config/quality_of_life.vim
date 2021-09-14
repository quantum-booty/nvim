" " Obsession
" nnoremap <leader>ss :Obsession<CR>

" =============================================================================
" # auto-session
" =============================================================================
:lua <<EOF
vim.o.sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"
EOF
