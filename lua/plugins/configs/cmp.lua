-- " =============================================================================
-- " # nvim-cmp settings
-- " =============================================================================
local cmp = require 'cmp'
local lspkind = require('lspkind')


cmp.setup({
    snippet = {
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    mapping = {
        -- ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
        -- ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true }),

        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,

        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    },
    preselect = cmp.PreselectMode.None,
    sources = {
        { name = 'luasnip' }, -- For luasnip user.
        { name = 'neorg' },
        { name = 'nvim_lua' },

        { name = 'nvim_lsp' },

        -- { name = 'vsnip' }, -- For vsnip user.
        -- { name = 'ultisnips' }, -- For ultisnips user.
        -- { name = 'buffer', keyword_length = 3 },
        { name = 'path' },
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    experimental = {
        ghost_text = true
    },
    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            maxwidth = 50,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                ultisnips = "[snip]",
                luasnip = "[snip]",
            },
        })
    },
    sorting = {
        comparators = {
            cmp.config.compare.scopes,
            cmp.config.compare.exact,
            cmp.config.compare.sort_text,
            cmp.config.compare.recently_used,
            -- cmp.config.compare.locality,
            -- cmp.config.compare.score,
            -- cmp.config.compare.offset,
            -- cmp.config.compare.kind,
            -- cmp.config.compare.length,
            -- cmp.config.compare.order,
            -- require "cmp-under-comparator".under,
        },
    },
})


-- -- Use buffer source for `/`.
-- cmp.setup.cmdline('/', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = {
--         { name = 'buffer' }
--     }
-- })
--
-- -- Use cmdline & path source for ':'.
-- cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--         { name = 'path' }
--     }, {
--         { name = 'cmdline' }
--     })
-- })
--

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
