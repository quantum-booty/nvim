-------------------------------------------------------------------------------
-- lsp signature
-------------------------------------------------------------------------------
local cfg = {
    bind = true, -- mandatory
    doc_lines = 20,
    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

    -- floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
    fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
    hint_enable = false, -- virtual hint enable
    -- hint_prefix = "🐼 ",  -- Panda for parameter
    -- hint_scheme = "String",
    -- use_lspsaga = false,  -- set to true if you want to use lspsaga popup
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    -- max_height = 60, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    -- to view the hiding contents
    max_width = 240, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    max_height = 140,
    transpancy = 10, -- set this value if you want the floating windows to be transpant (100 fully transpant), nil to disable(default)
    handler_opts = {
        border = "single"   -- double, single, shadow, none
    },
    move_cursor_key = "<tab>",
    select_signature_key = "<C-n>",
    -- noice = true,
}

require'lsp_signature'.setup(cfg)
