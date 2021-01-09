syntax on
set nocompatible
filetype plugin on
set hidden
set smartindent
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
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

" Permanent undo
set undodir=~/.config/nvim/undodir
set undofile

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

"" Search results centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" search replace
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>
vnoremap <Leader>sr :s/\<\>//g<left><left><left><left><left>
" nnoremap <Leader>sR :%s///g<Left><Left><Left>

" search number
nnoremap <leader>d :call search('\d\+')<CR>
nnoremap <leader>D :call search('\d\+', 'b')<CR>

" =============================================================================
" # Easymotion
" =============================================================================
nmap f <Plug>(easymotion-bd-fl)
omap f <Plug>(easymotion-bd-fl)
nmap t <Plug>(easymotion-bd-tl)
omap t <Plug>(easymotion-bd-tl)
nmap s <Plug>(easymotion-overwin-f2)
omap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_keys = 'hieatrspyoudncjkmlf'
" let g:EasyMotion_keys = '123456789'

" =============================================================================
" # Window Movements
" =============================================================================
" move between windows, if at the edge of screen, create new split
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <left> :call WinMove('h')<CR>
nnoremap <silent> <down> :call WinMove('j')<CR>
nnoremap <silent> <up> :call WinMove('k')<CR>
nnoremap <silent> <right> :call WinMove('l')<CR>

"" ******  Vanilla settings ************************************** 

" move through buffers
" nnoremap <C-j> :bp!<CR>
" nnoremap <C-k> :bn!<CR>

" " buffer delete
" nnoremap <leader>x :bd<CR>
" " delete all buffers execept this one
" nnoremap <leader>X :%bd\|e#<CR>

" ca tn tabnew
" ca tc tabclose


"" ******  barbar ************************************** 
"" Magic buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>
"" Sort automatically by...
" nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
" nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
"" Move to previous/next
nnoremap <silent> <C-j> :BufferPrevious<CR>
nnoremap <silent> <C-k> :BufferNext<CR>
"" Re-order to previous/next
" nnoremap <silent> <A-<> :BufferMovePrevious<CR>
" nnoremap <silent> <A->> :BufferMoveNext<CR>
"" Goto buffer in position...
" nnoremap <silent> <A-1> :BufferGoto 1<CR>
" nnoremap <silent> <A-2> :BufferGoto 2<CR>
" nnoremap <silent> <A-3> :BufferGoto 3<CR>
" nnoremap <silent> <A-4> :BufferGoto 4<CR>
" nnoremap <silent> <A-5> :BufferGoto 5<CR>
" nnoremap <silent> <A-6> :BufferGoto 6<CR>
" nnoremap <silent> <A-7> :BufferGoto 7<CR>
" nnoremap <silent> <A-8> :BufferGoto 8<CR>
" nnoremap <silent> <A-9> :BufferLast<CR>
"" Close buffer
nnoremap <silent> <leader>x :BufferClose<CR>
"" Wipeout buffer
"                          :BufferWipeout<CR>
"" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersRight<CR>

let bufferline = get(g:, 'bufferline', {})

let bufferline.icons = 'both'
let bufferline.closable = v:false
let bufferline.letters = 'trspkjdncbmlfaeihuoyqwgzxv'
let bufferline.maximum_padding = 1

" =============================================================================
" # General settings
" =============================================================================
" sourcing the vimrc
nnoremap <Leader>so :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>rc :e $MYVIMRC<CR>

" Redo with U
noremap U <C-R>

" Move visual block
vnoremap J :m '>+2<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Blackhole regster
vnoremap X "_d

" j and k ignores wrapping
noremap <silent><expr>j (v:count? 'j' : 'gj')
noremap <silent><expr>k (v:count? 'k' : 'gk')

" Yank to end of line
nmap Y v$y

" " This allow ENTER to open new line
nnoremap <buffer> <CR> o

" No pinkies please!
nnoremap <leader>a <S-a>
nnoremap <leader>i <S-i>

" use + and - to increment and decrement number
nnoremap + <C-a>
nnoremap - <C-x>

" use ( and ) for moving half page up and down
nmap ( <C-u>
nmap ) <C-d>

" quote args in a list
nnoremap <leader>ql :s/\([ a-zA-Z]\+\)\(,\\|\]\)/"\1"\2/g<CR>

" lsp hover tab is the same as C-i, so remap C-y to C-i
nnoremap <C-y> <C-i>
" change list
nnoremap gj g;
nnoremap gk g,
" scroll up and down
nnoremap <C-a> <C-y>


" Makes vim-surround easier
vmap s S

" --- Abbreviations
" cabbrev help tab help
cabbrev pup PlugUpdate

" --- Terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <CR> <CR><C-\><C-n>
