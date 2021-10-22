-- " =============================================================================
-- " # nvim-cmp settings
-- " =============================================================================
local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
    snippet = {
        expand = function(args)
            -- For `vsnip` user.
            -- vim.fn["vsnip#anonymous"](args.body)

            -- For `luasnip` user.
            -- require('luasnip').lsp_expand(args.body)

            -- For `ultisnips` user.
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true }),

        ["<Tab>"] = function(fallback)
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
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },

        -- For vsnip user.
        -- { name = 'vsnip' },

        -- For luasnip user.
        -- { name = 'luasnip' },

        -- For ultisnips user.
        { name = 'ultisnips' },
        { name = 'buffer', keyword_length = 3 },
        { name = 'path' },
    },
    -- snippet = {
    --     expand = function(args)
    --         require("luasnip").lsp_expand(args.body)
    --     end,
    -- },
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
    }

})


vim.cmd([[
hi CmpItemAbbrMatch guifg=#FF4A4A guibg=NONE
hi CmpItemAbbrMatchFzzy guifg=Purple guibg=NONE
hi CmpItemKind guifg=#AA82E0 guibg=NONE
hi CmpItemMenu guifg=#82E0AA guibg=NONE
]])
