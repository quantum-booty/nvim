function! ToggleTermAutoInsert()
    if !exists('g:termautoinsert')
            let g:termautoinsert = 1
        endif
    if g:termautoinsert == 1
        let g:termautoinsert = 0
        augroup TermOpenInsert
            au!
            au BufWinEnter,WinEnter term://* startinsert
        augroup END
    else
        let g:termautoinsert = 1
        augroup TermOpenInsert
            au!
        augroup END
    endif
endfunction

map <leader>AI :call ToggleTermAutoInsert()<CR>
