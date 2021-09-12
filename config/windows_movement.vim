" =============================================================================
" # Window Movements
" =============================================================================
" move between windows, if at the edge of screen, create new split
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <left> :call WinMove('h')<CR>
nnoremap <silent> <down> :call WinMove('j')<CR>
nnoremap <silent> <up> :call WinMove('k')<CR>
nnoremap <silent> <right> :call WinMove('l')<CR>
