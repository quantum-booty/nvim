local map = require('utils').map
local opts = { noremap=true, silent=true }

require('calltree').setup({        -- where the calltree ui will spawn
-- "left" (default) - Spawn calltree as the left most vertical window.
-- "right"          - Spawn calltree as the left most vertical window.
-- "top"            - Spawn calltree as the bottom most horizontal window
--                    more details about the symbol will be shown with this
--                    layout.
-- "bottom"         - Spawn calltree as the top most horizontal window
--                    more details about the symbol will be shown with this
    --                    layout.
layout = "left",
-- the initial size of the calltree ui
-- int              - An integer used in the initial "resize" command for
    --                    the ui. 
layout_size = 40,
-- the method used when jumping to a symbol in the calltree 
-- "invoking"       - Jumping to a symbol will use the window which the calltree
--                    was initially invoked from.
--                    If the invoking window has been removed a new botright split
--                    will be created and take on the invoking window identity from there.
-- "neighbor"       - Jumping to a symbol will use the neighbor on the opposite side of
--                    the call tree. 
    --                    If no neighbor exists a split will be created for the jump. 
jump_mode = "invoking",
-- the icon to represent the symbol type
-- "none"           - No icons for symbol types will just use text
-- "nerd"           - Use Nerd font icon set for symbol types (requires patched font)
    -- "codicon"        - Use VSCode codicon icon set for symbol types (requires patched font)
icons = "nerd",
    -- the highlight group used for highlighting the symbol being jumped too.
symbol_hl = "Search",
-- the highlight group used for highlighting the references to the symbol
    -- being jumped to.
    symbol_refs_hl = "Search"
})




map('n', '<leader>ci', ':lua vim.lsp.buf.incoming_calls()<CR>', opts)
map('n', '<leader>co', ':lua vim.lsp.buf.outgoing_calls()<CR>', opts)
