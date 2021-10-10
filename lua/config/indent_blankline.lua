require("indent_blankline").setup {
    char = '|',
    filetype_exclude = {'packer', 'help'},
    buftype_exclude = {'terminal', 'nofile'},
    space_char_blankline = " ",
    use_treesitter = true,
    show_current_context = false,
}
