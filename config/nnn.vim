" " nnn
" " =============================================================================
" let g:nnn#layout = 'vnew'
" let g:nnn#set_default_mappings = 0
nnoremap <leader>n :NnnPicker %:p:h<CR>
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#action = {
            \ '<c-t>': 'tab split',
            \ '<c-s>': 'split',
            \ '<c-v>': 'vsplit'
            \ }
