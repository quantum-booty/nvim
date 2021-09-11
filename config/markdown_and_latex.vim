" tex and markdown
au FileType tex setlocal spell
au FileType markdown setlocal spell
set spelllang=en_gb
" corrects spelling on the line
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" vim-markdown
" let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
" let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}
let g:vimtex_context_pdf_viewer = 'zathura'


" tex-conceal
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" markdown-preview.nvim
nnoremap <leader>M :MarkdownPreviewToggle<CR>
