require('incline').setup {
    hide = {
        focused_win = true,
    },
    render = function(render_props)
        return {
            { string.gsub(vim.api.nvim_buf_get_name(render_props["buf"]), vim.fn.getcwd(), ''), guifg = "#e06c75" },
        }
    end,
    window = {
        placement = {
            horizontal = "right",
            vertical = "bottom",
        },
    },
}
