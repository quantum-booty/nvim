local autocmd = require('utils').autocmd


autocmd('fsharp', 'BufNewFile,BufRead *.fs,*.fsx,*.fsi set filetype=fsharp', true)
autocmd('haskell', 'BufNewFile,BufRead *.hs set filetype=haskell', true)


-- " highlight yank
autocmd('highlight_yank', 'TextYankPost * silent! lua require"vim.highlight".on_yank({timeout = 200, on_macro = true})', true)

-- " restore place in file from previous session
autocmd('restore_cursor_pos', [[BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]], true)


autocmd(
    'MyColors',
    {
        -- set brighter numbers at colorscheme change
        'ColorScheme * highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE',
        'ColorScheme * highlight VertSplit guibg=bg guifg=LightBlue',

        'ColorScheme onedark highlight VertSplit guibg=bg guifg=#c678dd',
        'ColorScheme onedark highlight BufferCurrent guibg=bg guifg=#c678dd',
        'ColorScheme onedark highlight BufferInactive guibg=#282c34 guifg=fg',

        'ColorScheme onenord highlight BufferCurrent guibg=bg guifg=#D57780',
        'ColorScheme onenord highlight VertSplit guibg=bg guifg=#D57780',

        'ColorScheme catppuccin highlight BufferCurrent guibg=bg guifg=#e06c75',
        'ColorScheme catppuccin highlight VertSplit guibg=bg guifg=#e06c75',

        'ColorScheme tokyonight highlight BufferCurrent guibg=bg guifg=#9d7cd8',
        'ColorScheme tokyonight highlight VertSplit guibg=bg guifg=#9d7cd8',

        'ColorScheme nightfox highlight BufferCurrent guibg=bg guifg=#9d79d6',
        'ColorScheme nightfox highlight VertSplit guibg=bg guifg=#9d79d6',
    },
    true
)


vim.cmd([[
" trigger `autoread` when files changes on disk
autocmd CursorHold * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])
