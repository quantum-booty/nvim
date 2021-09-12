-- " =============================================================================
-- " # nvim-cmp settings
-- " =============================================================================
local cmp = require 'cmp'
cmp.setup {
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
            },
        ['<Tab>'] = function(fallback)
        if vim.fn.pumvisible() == 1 then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
        else
            fallback()
        end
    end,
    ['<S-Tab>'] = function(fallback)
    if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
    else
        fallback()
    end
end,
},
  sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
      { name = 'neorg'},
      { name = 'path'},
      },
  completion = {
      completeopt = 'menu,menuone,noinsert',
      },
  documentation = {
      maxwidth = 75,
      },
  experimental = {
      ghost_text = true
      }
  }

vim.lsp.protocol.CompletionItemKind = {
    '', -- Text          = 1;
    '', -- Method        = 2;
    'ƒ', -- Function      = 3;
    '', -- Constructor   = 4;
    '⌘', -- Field         = 5;
    '', -- Variable      = 6;
    '', -- Class         = 7;
    'ﰮ', -- Interface     = 8;
    '', -- Module        = 9;
    '', -- Property      = 10;
    '', -- Unit          = 11;
    '', -- Value         = 12;
    '了', -- Enum          = 13;
    '', -- Keyword       = 14;
    '﬌', -- Snippet       = 15;
    '', -- Color         = 16;
    '', -- File          = 17;
    '', -- Reference     = 18;
    '', -- Folder        = 19;
    '', -- EnumMember    = 20;
    '', -- Constant      = 21;
    '', -- Struct        = 22;
    '', -- Event         = 23;
    '', -- Operator      = 24;
    '', -- TypeParameter = 25;
}

for index, value in ipairs(vim.lsp.protocol.CompletionItemKind) do
    cmp.lsp.CompletionItemKind[index] = value
end
