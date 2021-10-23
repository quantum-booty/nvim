local autocmd = require('utils').autocmd

-- " highlight yank
autocmd('highlight_yank', 'TextYankPost * silent! lua require"vim.highlight".on_yank({timeout = 200, on_macro = true})', true)

-- " restore place in file from previous session
autocmd('restore_cursor_pos', [[BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]], true)


autocmd(
    'MyColors',
    {
        -- set brighter numbers at colorscheme change
        'ColorScheme * highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE',
        -- make split brighther
        'ColorScheme * highlight VertSplit guibg=bg guifg=lightcyan',
        -- -- preserve diagnostic highlights when colorscheme changes 
        -- 'ColorScheme * runtime plugin/diagnostic.vim',
    },
    true
)
-- set colours at vim start
vim.cmd([[
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight VertSplit guibg=bg guifg=lightcyan
]])

