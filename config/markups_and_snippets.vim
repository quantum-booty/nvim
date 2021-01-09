" vim wiki
au FileType vimwiki :UltiSnipsAddFiletypes markdown

" snippets
let g:UltiSnipsExpandTrigger = '<F33>'
let g:UltiSnipsJumpForwardTrigger = '<F33>'
let g:UltiSnipsJumpBackwardTrigger = '<F34>'
let g:UltiSnipsEditSplit = 'vertical'
nnoremap <leader>se :UltiSnipsEdit<CR>

" tex and markdown
au FileType tex call AutoWrite()
au FileType snippets call AutoWrite()
function AutoWrite()
    au TextChanged,TextChangedI <buffer> silent write
endfunction

au FileType tex setlocal spell
au BufNewFile,BufRead *.md set filetype=markdown
au FileType markdown setlocal spell
set spelllang=en_gb
" corrects spelling on the line
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname = 'nvr'

" tex-concea
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" --------- vimwiki and markdown ------------------
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]

" instant markdown
" let g:instant_markdown_mathjax = 1
" let g:instant_markdown_autostart = 0
" let g:instant_markdown_allow_unsafe_content = 1
" nnoremap <leader>M :InstantMarkdownPreview<CR>
" nnoremap <leader>MS :InstantMarkdownStop<CR>
nnoremap <leader>M :MarkdownPreviewToggle<CR>



