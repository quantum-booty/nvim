require("scrollbar").setup({
    handle = {
        color = "#9d7cd8",
    },
    marks = {
        Search = { color = "#ff9e64" },
        Error = { color = "#db4b4b" },
        Warn = { color = "#e0af68" },
        Info = { color = "#0db9d7" },
        Hint = { color = "#1abc9c" },
        Misc = { color = "#9d7cd8" },
    },
    excluded_filetypes = {
        "",
        "prompt",
        "TelescopePrompt",
        "toggleterm",
        "NvimTree",
        "aerial",
        "Outline",
    },
})
