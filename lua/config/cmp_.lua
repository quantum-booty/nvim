-- " =============================================================================
-- " # nvim-cmp settings
-- " =============================================================================
local cmp = require'cmp'
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
    sources = {
        { name = 'neorg' },
        { name = 'nvim_lua' },

        { name = 'nvim_lsp' },

        -- { name = 'vsnip' }, -- For vsnip user.
        -- { name = 'luasnip' }, -- For luasnip user.
        { name = 'ultisnips' }, -- For ultisnips user.
        { name = 'buffer', keyword_length = 4 },
        { name = 'path' },
    },
    documentation = {
        maxwidth = 75,
    },
    experimental = {
        native_menu = false,
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
            },
        })
    },
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            require "cmp-under-comparator".under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
})


 -- -- Use buffer source for `/`.
 --  cmp.setup.cmdline('/', {
 --    sources = {
 --      { name = 'buffer' }
 --    }
 --  })

 --  -- Use cmdline & path source for ':'.
 --  cmp.setup.cmdline(':', {
 --    sources = cmp.config.sources({
 --      { name = 'path' }
 --    }, {
 --      { name = 'cmdline' }
 --    })
 --  })



vim.cmd([[
hi CmpItemAbbrMatch guifg=#FF4A4A guibg=NONE
hi CmpItemAbbrMatchFzzy guifg=Purple guibg=NONE
hi CmpItemKind guifg=#AA82E0 guibg=NONE
hi CmpItemMenu guifg=#82E0AA guibg=NONE
]])

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())