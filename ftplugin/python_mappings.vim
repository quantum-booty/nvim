" Jupyter ascending
nnoremap <leader>o o<CR># %%
" for navigating between jupyter cells
" nnoremap <silent> <C-t> :call search('# %%')<CR>
" nnoremap <silent> <C-r> :call search('# %%', 'b')<CR>

" Jupyter-vim
let g:jupyter_mapkeys = 0

" ctrl shift M on qtconsole to open menu

" Most important mappings
nnoremap <buffer> <silent> <localleader>sc :term jupyter qtconsole<CR><C-o>:JupyterConnect<CR><CR>
nnoremap <buffer> <silent> <localleader>S :JupyterConnect<CR>
nnoremap <buffer> <silent> <localleader>a :JupyterRunFile<CR>
vnoremap <buffer> <silent> <localleader><space> <Plug>JupyterRunVisual
nnoremap <buffer> <silent> <localleader><space> :JupyterSendCell<CR>


" Less important ones
" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>
nnoremap <buffer> <silent> <localleader>i :PythonImportThisFile<CR>
nnoremap <buffer> <silent> <localleader>l :JupyterSendRange<CR>
nnoremap <buffer> <silent> <localleader>E <Plug>JupyterRunTextObj
