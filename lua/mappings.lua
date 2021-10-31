local autocmd = require('utils').autocmd
local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<space>', '<nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ','


-- this is smooth as fuck haha
map('i', '<Del>', '<C-o>A;', opts)


-- map('n', '<cr>', 'zo', opts)
-- map('n', '<cr>', ':%foldo<cr>', opts)
autocmd('filetype_help_mapping', [[ FileType help nnoremap <buffer> <CR> <c-]> ]], true)


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
-- sourcing the vimrc

-- map('n', '<Leader>so', ':source $NVIM_CONFIG_PATH/init.lua<CR>', opts)
map('n', '<Leader>rc', ':cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/init.lua<CR>', opts)
map('n', '<Leader>rp', ':cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/lua/plugins.lua<CR>', opts)

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


-- " " Yank to end of line (merged to 0.6 masters)
map('n', 'Y', 'v$y', opts)

-- " No pinkies please!
-- map('n', '<leader>a', '<S-a>', opts)
-- map('n', '<leader>i', '<S-i>', opts)

-- " use + and - to increment and decrement number
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

-- " use ( and ) for moving half page up and down
map('n', '(', '<C-u>', {noremap=false, silent=true})
map('n', ')', '<C-d>', {noremap=false, silent=true})

-- cd to file path
map('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', opts)

-- " quote args in list, sets, tuples
-- map('n', '<leader>q]', [[':s/\([ a-zA-Z0-9]\+\)\(,\\|\]\)/"\1"\2/g<CR>']], opts)
-- map('n', '<leader>q)', [[':s/\([ a-zA-Z0-9]\+\)\(,\\|\\)\)/"\1"\2/g<CR>']], opts)
-- map('n', '<leader>q}', [[':s/\([ a-zA-Z0-9]\+\)\(,\\|\}\)/"\1"\2/g<CR>']], opts)


-- " lsp hover tab is the same as C-i", so remap C-y to C-i
map('n', '<C-y>', '<C-i>', opts)
-- " change list
map('n', 'gj', 'g;', opts)
map('n', 'gk', 'g,', opts)
-- " scroll up and down
map('n', '<C-a>', '<C-y>', opts)


-- " Abbreviations
vim.cmd 'cabbrev ps PackerSync'



-- " =============================================================================
-- " # Terminal
-- " =============================================================================
-- " press esc to go to normal mode
map('t', '<Esc>', [[<C-\><C-n>]], opts)
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


