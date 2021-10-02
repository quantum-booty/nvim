local autocmd = require('utils').autocmd

-- " highlight yank
autocmd('highlight_yank', 'TextYankPost * silent! lua require"vim.highlight".on_yank({timeout = 200})', true)
-- autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})

-- " restore place in file from previous session
autocmd('restore_cursor_pos', [[BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]], true)
-- autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


autocmd(
    'BrighterNumberColor',
    {'ColorScheme * highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE'},
    true
)
-- need this line below to set l
vim.cmd([[highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE]])


autocmd(
    'preserve_lsp_underline_when_colorscheme_change',
    {'ColorScheme * runtime plugin/diagnostic.vim'},
    true
)
