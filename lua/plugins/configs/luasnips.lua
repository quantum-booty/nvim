local map = require('utils').map
require("luasnip").config.setup({enable_autosnippets=true})

require("luasnip.loaders.from_lua").load({paths = vim.env.NVIM_CONFIG_PATH .. "/lua/luasnips"})

-- require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()
-- vim.cmd[[
-- imap <silent><expr> <F12> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- inoremap <silent> <F24> <cmd>lua require'luasnip'.jump(-1)<Cr>
-- snoremap <silent> <F12> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <F24> <cmd>lua require('luasnip').jump(-1)<Cr>
-- imap <silent><expr> <tab> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <tab> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- ]]

map('i', '<F12>', [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']], {expr=true, silent=true})
map('i', '<F24>', [[<cmd>lua require'luasnip'.jump(-1)<Cr>]], {silent=true})
map('s', '<F12>', [[<cmd>lua require('luasnip').jump(1)<Cr>]], {silent=true})
map('s', '<F24>', [[<cmd>lua require('luasnip').jump(-1)<Cr>]], {silent=true})
map('i', '<tab>', [[luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<tab>']], {expr=true, silent=true})
map('s', '<tab>', [[luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<tab>']], {expr=true, silent=true})
map('n', '<leader>se', [[:lua require("luasnip.loaders").edit_snippet_files()<cr>]], {silent=true})
