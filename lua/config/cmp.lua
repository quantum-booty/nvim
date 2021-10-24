-- " =============================================================================
-- " # nvim-cmp settings
-- " =============================================================================
local cmp = require'cmp'
local lspkind = require('lspkind')


local is_prior_char_whitespace = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

cmp.setup({
    snippet = {
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
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

        ["<S-Tab>"] = function(fallback) if cmp.visible() then
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
        { name = 'buffer', keyword_length = 3 },
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
    }

})


vim.cmd([[
hi CmpItemAbbrMatch guifg=#FF4A4A guibg=NONE
hi CmpItemAbbrMatchFzzy guifg=Purple guibg=NONE
hi CmpItemKind guifg=#AA82E0 guibg=NONE
hi CmpItemMenu guifg=#82E0AA guibg=NONE
]])

require("nvim-autopairs.completion.cmp").setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
    auto_select = true, -- automatically select the first item
    insert = false, -- use insert confirm behavior instead of replace
    map_char = { -- modifies the function or method delimiter by filetypes
        all = '(',
        tex = '{'
    }
})
