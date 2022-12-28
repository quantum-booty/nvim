vim.cmd([[
let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'args': [
                \ '--quiet',
                \ '--fast',
                \ '-',
                \ '--skip-string-normalization'
                \ ],
            \ 'stdin': 1,
            \ }
                " \ '--line-length', '200',
]])
