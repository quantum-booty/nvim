local autocmd = require('utils').autocmd
local autocmd_multi = require('utils').autocmd_multi

autocmd("fsharp", {'BufNewFile','BufRead'}, { pattern = '*.fs,*.fsx,*.fsi', command = 'set filetype=fsharp'})
autocmd("haskell", {'BufNewFile','BufRead'}, { pattern = '*.hs', command = 'set filetype=haskell'})

autocmd_multi("misc",
    {
        -- highlight yank
        {'TextYankPost', { pattern = '*', command = 'silent! lua require"vim.highlight".on_yank({timeout = 200, on_macro = true})' }},
        -- restore place in file from previous session
        {'BufReadPost', { pattern = '*', command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }},
    }
)


autocmd_multi(
    'MyColors',
    {
        -- set brighter numbers at colorscheme change
        {'ColorScheme', {pattern='*', command = 'highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE'}},
        {'ColorScheme', {pattern='*', command = 'highlight WinSeparator guibg=bg guifg=LightBlue'}},

        {'ColorScheme', {pattern='onedark', command = 'highlight WinSeparator guibg=bg guifg=#c678dd'}},
        {'ColorScheme', {pattern='onedark', command = 'highlight BufferCurrent guibg=bg guifg=#c678dd'}},
        {'ColorScheme', {pattern='onedark', command = 'highlight BufferInactive guibg=#282c34 guifg=fg'}},

        {'ColorScheme', {pattern='onenord', command = 'highlight BufferCurrent guibg=bg guifg=#D57780'}},
        {'ColorScheme', {pattern='onenord', command = 'highlight WinSeparator guibg=bg guifg=#D57780'}},

        {'ColorScheme', {pattern='catppuccin', command = 'highlight BufferCurrent guibg=bg guifg=#e06c75'}},
        {'ColorScheme', {pattern='catppuccin', command = 'highlight WinSeparator guibg=bg guifg=#e06c75'}},

        {'ColorScheme', {pattern='tokyonight', command = 'highlight BufferCurrent guibg=bg guifg=#9d7cd8'}},
        {'ColorScheme', {pattern='tokyonight', command = 'highlight WinSeparator guibg=bg guifg=#9d7cd8'}},

        {'ColorScheme', {pattern='nightfox', command = 'highlight BufferCurrent guibg=bg guifg=#9d79d6'}},
        {'ColorScheme', {pattern='nightfox', command = 'highlight WinSeparator guibg=bg guifg=#9d79d6'}},
    }
)

autocmd_multi(
    'AutoReadFileChanges',
    {
        -- trigger `autoread` when files changes on disk
        {'CursorHold', {pattern='*', command = [[if mode() != 'c' | checktime | endif]]}},
        -- notification after file change
        {'FileChangedShellPost ', {pattern='*', command = [[echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None]]}},
    }
)
