autocmd CmdlineEnter * ++once call s:wilder_init() | call wilder#main#start()

" For lua_pcre2_highlighter : requires `luarocks install pcre2`
" For lua_fzy_highlighter   : requires fzy-lua-native vim plugin found
"                             at https://github.com/romgrk/fzy-lua-native

function! s:wilder_init() abort
    call wilder#setup({'modes': [':', '/', '?']})

    call wilder#set_option('use_python_remote_plugin', 0)

    call wilder#set_option('pipeline', [
                \   wilder#branch(
                \     wilder#cmdline_pipeline({
                \       'fuzzy': 1,
                \       'fuzzy_filter': wilder#lua_fzy_filter(),
                \     }),
                \     wilder#vim_search_pipeline(),
                \   ),
                \ ])

    call wilder#set_option('renderer', wilder#renderer_mux({
                \ ':': wilder#popupmenu_renderer({
                \ 'highlighter': [
                    \   wilder#lua_pcre2_highlighter(),
                    \   wilder#lua_fzy_highlighter(),
                    \ ],
                    \ 'highlights': {
                        \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
                        \ },
                        \   'left': [
                            \     ' ',
                            \     wilder#popupmenu_devicons(),
                            \   ],
                            \   'right': [
                                \     ' ',
                                \     wilder#popupmenu_scrollbar(),
                                \   ],
                                \ }),
                                \ '/': wilder#wildmenu_renderer({
                                \   'highlighter': wilder#lua_fzy_highlighter(),
                                \ }),
                                \ }))


endfunction
