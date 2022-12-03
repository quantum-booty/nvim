local autocmd = require('utils').autocmd
local map = require('utils').map
local opts = { noremap = true, silent = true }

map('n', '<space>', '<nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ','

-- user commands
vim.api.nvim_create_user_command("PS", function() vim.cmd 'PackerSync' end, {})
vim.api.nvim_create_user_command("RC", function() vim.cmd 'cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/init.lua' end, {})
vim.api.nvim_create_user_command("RP", function() vim.cmd 'cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/lua/plugins.lua' end, {})
vim.api.nvim_create_user_command("CD", function() vim.cmd 'cd %:p:h' end, {})

-- this is smooth as fuck haha
map('i', '<Del>', '<C-o>A;', opts)


-- map('n', '<cr>', 'zo', opts)
-- map('n', '<cr>', ':%foldo<cr>', opts)
autocmd('filetype_help_mapping', 'FileType', { pattern = 'help', command = [[nnoremap <buffer> <CR> <c-]>]] })


-- Search results centered
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('n', 'J', 'mzJ`z', opts)
map('n', '*', '*zz', opts)
map('n', '#', '#zz', opts)
map('n', 'g*', 'g*zz', opts)

vim.cmd([[
" search replace
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>
vnoremap <Leader>sr :s/\<\>//g<left><left><left><left><left>
" nnoremap <Leader>sR :%s///g<Left><Left><Left>

" " search number
" nnoremap <leader>d :call search('\d\+')<CR>
" nnoremap <leader>D :call search('\d\+', 'b')<CR>
nnoremap <Leader>n /\d\+<CR>
nnoremap <Leader>N ?\d\+<CR>
]])

-- map('n', '<Leader>sr', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], opts)
-- map('v', '<Leader>sr', [[:s/\<\>//g<left><left><left><left><left>]], opts)

-- -- search number
-- map('n', '<leader>d', [[':call search("\d\+")<CR>']], opts)
-- map('n', '<leader>D', [[':call search("\d\+", "b")<CR>']], opts)

-- =============================================================================
-- # custom remaps
-- =============================================================================
-- Redo with U
map('n', 'U', '<C-R>', opts)

-- undo break points
map('i', ',', ',<c-g>u', opts)
map('i', '.', '.<c-g>u', opts)
map('i', '!', '!<c-g>u', opts)
map('i', '?', '?<c-g>u', opts)


-- jumplist mutations (adding j and k to jumplist), and gj and gk ensures they
-- ignores wrapping
-- map('n', 'j', [[(v:count > 5 ? "m'" . v:count : "") . "gj"]], {expr=true, silent=true, noremap=true})
-- map('n', 'k', [[(v:count > 5 ? "m'" . v:count : "") . "gk"]], {expr=true, silent=true, noremap=true})

-- moving text
map('v', 'J', ":m '>+1<cr>gv=gv", opts)
map('v', 'K', ":m '<-2<cr>gv=gv", opts)
map('n', '<leader>j', '<esc>:m .+1<CR>==', opts)
map('n', '<leader>k', '<esc>:m .-2<CR>==', opts)


-- " Blackhole regster
map('n', 'X', '"_d', opts)
map('x', '<leader>p', '\"_dP')

-- " use + and - to increment and decrement number
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)
map('x', '+', '<C-a>', opts)
map('x', '-', '<C-x>', opts)

-- " use ( and ) for moving half page up and down
map('n', '(', '<C-u>zz', { noremap = false, silent = true })
map('n', ')', '<C-d>zz', { noremap = false, silent = true })

-- " lsp hover tab is the same as C-i", so remap C-y to C-i
map('n', '<C-y>', '<C-i>', opts)
-- " change list
map('n', 'gj', 'g;', opts)
map('n', 'gk', 'g,', opts)
-- " scroll up and down
map('n', '<C-a>', '<C-y>', opts)

-- " =============================================================================
-- " # Terminal
-- " =============================================================================
-- " press esc to go to normal mode
-- map('t', '<Esc>', [[<C-\><C-n>]], opts)
-- " press enter to enter and exit insert mode
-- map('t', '<CR>', [['<CR><C-\><C-n>']], opts)

-- =============================================================================
-- # Window Movements
-- =============================================================================
-- move between windows, if at the edge of screen, create new split

vim.cmd([[
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
]])
