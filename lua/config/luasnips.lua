local map = require('utils').map

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


--
-- -- map('i', '<Del>', '<nop>', { noremap=true, silent=true })
-- vim.g.UltiSnipsExpandTrigger = '<F12>'
-- vim.g.UltiSnipsJumpForwardTrigger = '<F12>'
-- vim.g.UltiSnipsJumpBackwardTrigger = '<F24>'
-- vim.g.UltiSnipsEditSplit = 'vertical'
--
-- map('n', '<leader>se', ':UltiSnipsEdit<CR>', { noremap=true, silent=true })




-- local function prequire(...)
-- local status, lib = pcall(require, ...)
-- if (status) then return lib end
--     return nil
-- end
--
-- local luasnip = prequire('luasnip')
-- local cmp = prequire("cmp")
--
-- local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end
--
-- local check_back_space = function()
--     local col = vim.fn.col('.') - 1
--     if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
--         return true
--     else
--         return false
--     end
-- end
--
-- _G.tab_complete = function()
--     if cmp and cmp.visible() then
--         cmp.select_next_item()
--     elseif luasnip and luasnip.expand_or_jumpable() then
--         return t("<Plug>luasnip-expand-or-jump")
--     elseif check_back_space() then
--         return t "<Tab>"
--     else
--         cmp.complete()
--     end
--     return ""
-- end
-- _G.s_tab_complete = function()
--     if cmp and cmp.visible() then
--         cmp.select_prev_item()
--     elseif luasnip and luasnip.jumpable(-1) then
--         return t("<Plug>luasnip-jump-prev")
--     else
--         return t "<S-Tab>"
--     end
--     return ""
-- end
--
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})
--
-- require('luasnips.lua')
