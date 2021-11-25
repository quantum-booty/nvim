local map = require('utils').map
local opts = { noremap=true, silent=true }

-- vim.cmd([[
-- hi CTSymbol                 guifg=#87afd7 gui=underline
-- hi CTSymbolDetail           ctermfg=024 cterm=italic guifg=#988ACF gui=italic
-- hi CTSymbolJump             ctermfg=015 ctermbg=110 cterm=italic,bold,underline   guifg=#464646 guibg=#87afd7 gui=italic,bold
-- hi CTSymbolJumpRefs         ctermfg=015 ctermbg=110 cterm=italic,bold,underline   guifg=#464646 guibg=#9b885c gui=italic,bold
-- hi CTParameterReference     guifg=#4DC5C6 guibg=None
-- hi CTURI                    guifg=#988ACF guibg=None
-- hi CTNamespace              guifg=#87af87 guibg=None
-- hi CTMethod                 guifg=#0087af guibg=None
-- hi CTField                  guifg=#0087af guibg=None
-- hi CTConstructor            guifg=#4DC5C6 guibg=None
-- hi CTType                   guifg=#9b885c guibg=None
-- hi CTFunction               guifg=#988ACF guibg=None
-- hi CTConstant               guifg=#0087af guibg=None
-- hi CTString                 guifg=#af5f5f guibg=None
-- hi CTNumber                 guifg=#9b885c guibg=None
-- hi CTBoolean                guifg=#0087af guibg=None
-- hi CTConstant               guifg=#0087af guibg=None
-- hi CTOperator               guifg=#988ACF guibg=None
-- hi CTParameter              guifg=#988ACF guibg=None

-- ]])
require('calltree').setup({
    layout = "left",
    layout_size = 40,
    jump_mode = "invoking",
    icons = "nerd",
    n_hls = false,
})


map('n', '<leader>ci', ':lua vim.lsp.buf.incoming_calls()<CR>', opts)
map('n', '<leader>co', ':lua vim.lsp.buf.outgoing_calls()<CR>', opts)
