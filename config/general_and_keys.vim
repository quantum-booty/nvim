syntax on
set nocompatible
filetype plugin on
set hidden
set smartindent
set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5
set signcolumn=yes
set wrap
set linebreak

set noerrorbells
set scrolloff=8
set noshowmode
set showmatch
" use the system register
set clipboard=unnamedplus
set mouse=a
set autochdir

" Permanent undo
let $NVIM_DATA_PATH = stdpath('data')
set undodir=$NVIM_DATA_PATH/undodir
set undofile
set nobackup
set noswapfile

" tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" =============================================================================
" # Search settings
" =============================================================================
" Proper search
set ignorecase
set smartcase
set incsearch
set nohlsearch

"live substitution
set inccommand=split

" Search results centered
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv
nnoremap <silent> J mzJ`z
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" search replace
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>
vnoremap <Leader>sr :s/\<\>//g<left><left><left><left><left>
" nnoremap <Leader>sR :%s///g<Left><Left><Left>

" " search number
" nnoremap <leader>d :call search('\d\+')<CR>
" nnoremap <leader>D :call search('\d\+', 'b')<CR>

" =============================================================================
" # Hop
" =============================================================================
nnoremap s :HopChar2<CR>
onoremap s :HopChar2<CR>
lua require'hop'.setup {keys = 'hieatrspyoudncjkmlf'}

" =============================================================================
" # Kommentary
" =============================================================================
lua << EOF
require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})
vim.api.nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})
EOF


" =============================================================================
" # custom remaps
" =============================================================================
" sourcing the vimrc
nnoremap <Leader>so :source $MYVIMRC<CR>
nnoremap <Leader>rc :e $MYVIMRC<CR>
nnoremap <Leader>rp :e $NVIM_CONFIG_PATH/lua/plugins.lua<CR>

" Redo with U
noremap U <C-R>

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u


" jumplist mutations (adding j and k to jumplist), and gj and gk ensures they
" ignores wrapping
nnoremap <expr> j (v:count ? (v:count > 5 ? "m'" . v:count : "") . "j" : "gj")
nnoremap <expr> k (v:count ? (v:count > 5 ? "m'" . v:count : "") . "k" : "gk")

" moving text
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
nnoremap <leader>j <esc>:m .+1<CR>==
nnoremap <leader>k <esc>:m .-2<CR>==


" Blackhole regster
vnoremap X "_d


" " Yank to end of line (merged to masters)
" nmap Y v$y

" " " This allow ENTER to open new line
" nnoremap <buffer> <CR> o

" No pinkies please!
nnoremap <leader>a <S-a>
nnoremap <leader>i <S-i>

" use + and - to increment and decrement number
nnoremap + <C-a>
nnoremap - <C-x>

" use ( and ) for moving half page up and down
nmap ( <C-u>
nmap ) <C-d>

" quote args in list, sets, tuples
nnoremap <leader>q] :s/\([ a-zA-Z0-9]\+\)\(,\\|\]\)/"\1"\2/g<CR>
nnoremap <leader>q) :s/\([ a-zA-Z0-9]\+\)\(,\\|\\)\)/"\1"\2/g<CR>
nnoremap <leader>q} :s/\([ a-zA-Z0-9]\+\)\(,\\|\}\)/"\1"\2/g<CR>


" lsp hover tab is the same as C-i", so remap C-y to C-i
nnoremap <C-y> <C-i>
" change list
nnoremap gj g;
nnoremap gk g,
" scroll up and down
nnoremap <C-a> <C-y>


" Makes vim-surround easier
vmap s S

" --- Abbreviations
cabbrev ps PackerSync
