" Tagbar
nnoremap <leader>T :TagbarToggle<CR>

" Obsession
nnoremap <leader>ss :Obsession<CR>

" Auto pairs
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutToggle = ''

" =============================================================================
" Vimsence discord settings
" =============================================================================
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In nnn'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}

" =============================================================================
" nnn
" =============================================================================
" let g:nnn#layout = 'vnew'
nnoremap <leader>n :NnnPicker '%:p:h'<CR>
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#action = {
            \ '<c-t>': 'tab split',
            \ '<c-s>': 'split',
            \ '<c-v>': 'vsplit'
            \ }

