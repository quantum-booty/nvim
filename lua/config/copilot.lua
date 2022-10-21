vim.cmd([[
    let g:copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"

    imap <silent><script><expr> <right> copilot#Accept("\<right>")
    let g:copilot_no_tab_map = v:true
    let g:copilot_filetypes = {
          \ '*': v:false,
          \ 'python': v:true,
          \ 'rust': v:true,
          \ 'cs': v:true,
          \ }

    augroup copilot
        autocmd FileType python Copilot setup
        autocmd FileType rust Copilot setup
        autocmd FileType cs Copilot setup
    augroup end
]])
