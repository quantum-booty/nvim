require('incline').setup {
  highlight = {
    groups = {
      InclineNormal = {
        default = true,
        group = "TSKeywordFunction"
      },
      InclineNormalNC = {
        default = true,
        group = "TSKeywordFunction"
      }
    }
  },
  ignore = {
    buftypes = "special",
    filetypes = {},
    floating_wins = true,
    unlisted_buffers = true,
    wintypes = "special"
  },
  render = "basic",
}
