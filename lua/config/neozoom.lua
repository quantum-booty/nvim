require('neo-zoom').setup { -- use the defaults or UNCOMMENT and change any one to overwrite
    -- left_ratio = 0.0,
    -- top_ratio = 0.0,
    width_ratio = 0.8,
    -- height_ratio = 0.9,
    border = 'single',
    -- exclude_filetype = {
    --   'fzf', 'qf', 'dashboard'
    -- }
}
vim.keymap.set('n', '<Del>', require("neo-zoom").neo_zoom, { silent = true, nowait = true })
