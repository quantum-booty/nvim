" =============================================================================
" # Autocommands
" =============================================================================
" highlight yank
autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
