" Maximizer
" Don't you give me that remap!!!
let g:maximizer_set_default_mapping = 0

let g:at_code_window = 0
fun! Max_go_code()
    MaximizerToggle
    if g:at_code_window == 0
        let g:at_code_window = 1
    else
        let g:at_code_window = 0
        call win_gotoid(g:vimspector_session_windows.code)
    endif
endfun

fun! VimspectorResize()
    call win_gotoid(g:vimspector_session_windows.variables)
    vertical resize 50
    resize 20
    call win_gotoid(g:vimspector_session_windows.watches)
    resize 20
    call win_gotoid(g:vimspector_session_windows.code)
    vertical resize 110
    resize 45
endfun


fun! Vimspector_map_toggle(in_vimspector)
    if a:in_vimspector==1
        nmap <F1> <Plug>VimspectorStepOut
        nmap <F2> <Plug>VimspectorStepInto
        nmap <F3> <Plug>VimspectorStepOver
        nmap <F4> <Plug>VimspectorToggleBreakpoint
        nmap <F5> <Plug>VimspectorContinue
        nmap <F6> <Plug>VimspectorRestart
        nmap <F7> <Plug>VimspectorRunToCursor
        nmap <F8> <Plug>VimspectorToggleConditionalBreakpoint
        nmap <F9> <Plug>VimspectorAddFunctionBreakpoint
        nmap <F10> :call VimspectorResize()<CR>
        nmap <F11> :call Max_go_code()<CR>
        nmap <F13> :VimspectorWatch <C-r><C-w>
        nmap <localleader>w :call win_gotoid(g:vimspector_session_windows.watches)<CR>
        nmap <localleader>v :call win_gotoid(g:vimspector_session_windows.variables)<CR>
    else
        nmap <F1> :Topen 1<CR>
        nmap <F2> :Topen 2<CR>
        nmap <F3> :Topen 3<CR>
        nmap <F4> :1T rich.inspect(<C-r><C-w>, methods=True, help=True, value=False)<CR>
        vmap <F4> y:1T rich.inspect(<C-r><C-r>", methods=True, help=True, value=False)<CR>
        nmap <F5> :update<CR> :1T %run %<CR>
        imap <F5> <ESC>:update<CR> :1T %run %<CR>
        nmap <F6> :1T !cht.sh 

        " nmap <F6>
        " nmap <F7>
        " nmap <F8>
        " nmap <F9>
        nmap <F11> :MaximizerToggle<CR>
        " nmap <F11>
        " nmap <F13>
        " nmap <localleader>w
        " nmap <localleader>v
    endif
endfun


let g:vimspector_active = 0
fun! Vimspector_Toggle()
    if g:vimspector_active==0
        let g:vimspector_active = 1
        : execute "normal \<Plug>VimspectorContinue"
        call Vimspector_map_toggle(1)
    else
        let g:vimspector_active = 0
        call vimspector#Reset()
        call Vimspector_map_toggle(0)
    endif
endfun

let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1

call Vimspector_map_toggle(0)

" Debugger remaps
nmap <F12> :call Vimspector_Toggle()<CR>


