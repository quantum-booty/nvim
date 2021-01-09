" Codi
let g:codi#virtual_text_prefix = " ❯ "

" =============================================================================
" Jupyter
" =============================================================================
" Jupyter ascending
nnoremap <leader>o o<CR># %% <CR>
nnoremap <silent> <C-t> :call search('# %%')<CR>
nnoremap <silent> <C-r> :call search('# %%', 'b')<CR>

" Jupyter-vim
nnoremap <buffer> <silent> <localleader>st :term kitty<CR><C-o>
" cabbrev kitty term kitty<CR><C-o>
let g:jupyter_mapkeys = 0
au FileType python call JupyterConfig()
function! JupyterConfig()
    " ctrl shift M on qtconsole to open menu
    nnoremap <buffer> <silent> <localleader>sc :term jupyter qtconsole<CR><C-o>:JupyterConnect<CR><CR>
    nnoremap <buffer> <silent> <localleader>S :JupyterConnect<CR>
    
    nnoremap <buffer> <silent> <localleader>a :JupyterRunFile<CR>
    vnoremap <buffer> <silent> <localleader><space> <Plug>JupyterRunVisual
    nnoremap <buffer> <silent> <localleader>i :PythonImportThisFile<CR>
    " Change to directory of current file
    nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>
    nnoremap <buffer> <silent> <localleader><space> :JupyterSendCell<CR>
    nnoremap <buffer> <silent> <localleader>l :JupyterSendRange<CR>
    nnoremap <buffer> <silent> <localleader>E <Plug>JupyterRunTextObj
endfunction


" =============================================================================
" # R
" =============================================================================
let R_auto_start = 2
let R_assign = 0 " don't convert _ to <-
" let R_disable_cmds = ['RDSendSelection', 'RDSendLine']
au FileType r call RConfig()
function! RConfig()
    nmap <LocalLeader>S <Plug>RStart
    vmap <LocalLeader><space> V<Plug>RDSendSelection
    nmap <LocalLeader><space> <Plug>RDSendLine
    vmap <Space> V<Plug>RDSendSelection
    nmap <Space> <Plug>RDSendLine
    nmap <LocalLeader>db <Plug>RDebug
    vmap <LocalLeader>db <Plug>RDebug
    nmap <LocalLeader>du <Plug>RUndebug
    vmap <LocalLeader>du <Plug>RUndebug
    iabbr <buffer> -> <-
endfunction

