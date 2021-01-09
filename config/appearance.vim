" =============================================================================
" # GUI and  colorscheme settings
" =============================================================================
set relativenumber
set number
set colorcolumn=80
set cmdheight=1 " Give more space for displaying messages.
set termguicolors
let &fcs='eob: ' " Hide ~ for empty buffer line

" =============================================================================
" # Airline
" =============================================================================
" airline tabline
" let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|term://|undotree|vimfiler'

" statusline
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''


" =============================================================================
" # Gruvbox
" =============================================================================
" let g:airline_theme = 'gruvbox'
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_italic = 1
" let g:gruvbox_invert_selection='0'
" colorscheme gruvbox
" =============================================================================
" # Alduin
" =============================================================================
" let g:alduin_Shout_Dragon_Aspect = 1
" let g:alduin_Shout_Become_Ethereal = 1
" let g:alduin_Shout_Fire_Breath = 1
" let g:alduin_Shout_Aura_Whisper = 1
" colorscheme alduin
" =============================================================================
" # Srcery
" =============================================================================
let g:srcery_italic = 1
let g:srcery_bold = 1
let g:srcery_inverse_matches = 1
let g:srcery_inverse = 1
let g:srcery_italic_types = 1
let g:srcery_inverse_match_paren = 1

colorscheme srcery
" =============================================================================
" # Solarized
" =============================================================================
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized




" " Toggle transparency
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" autocmd vimenter * hi SignColumn guibg=NONE ctermbg=NONE
" highlight Normal ctermbg=NONE guibg=NONE
" let g:is_transparent = 1
" function! Toggle_transparent()
"     if g:is_transparent == 0
" 		highlight Normal ctermbg=NONE guibg=NONE
" 		highlight SignColumn ctermbg=NONE guibg=NONE
"         let g:is_transparent = 1
"     else
"         set background=dark
"         let g:is_transparent = 0
"     endif
" :RainbowToggleOn
" endfunction

" nnoremap <silent> <C-l> :call Toggle_transparent()<CR>
" " au BufEnter * call Toggle_transparent()




" =============================================================================
" # Goyo
" =============================================================================
let g:goyo_width = 200
let g:goyo_height = 85
 " 50%+5%x90%

let g:goyo_on = 0
fun! Goyo_Toggle()
    if g:goyo_on == 0
        let g:goyo_on = 1
        Goyo 50%+8%x90%
        set rnu
        set nu
    else
        let g:goyo_on = 0
        Goyo!
    endif
endfun
map <leader>go :call Goyo_Toggle()<CR>
autocmd VimResized * if exists('#goyo') | exe "normal \<c-w>=" | endif

" let g:goyo_on = 0
" fun! Goyo_Toggle(transparent)
"     if g:goyo_on == 0
"         let g:goyo_on = 1
"         Goyo 50%+8%x90%
"         if a:transparent == 1
"             hi Normal Guibg=NONE ctermbg=NONE
"             hi SignColumn guibg=NONE ctermbg=NONE
"         endif
"         set rnu
"         set nu
"     else
"         let g:goyo_on = 0
"         Goyo!
"         if a:transparent == 1
"             hi Normal Guibg=NONE ctermbg=NONE
"             hi SignColumn guibg=NONE ctermbg=NONE
"         endif
"     endif
" endfun
" map <leader>go :call Goyo_Toggle(0)<CR>
" map <leader>gO :call Goyo_Toggle(1)<CR>


" --------- Rain bow --------------------------
let g:rainbow_active = 1
