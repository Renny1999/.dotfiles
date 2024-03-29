syntax enable

syntax on
filetype plugin indent on

" let vim know that the termianl supports 256 colors
let &t_Co=256
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors


" map leader key to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" for command mode tab completion
set nocompatible

" :Q to forcifully exit vim
nnoremap :QWE :q!

command! Conf :tabe ~/.config/nvim/
command! Data :tabe ~/.local/share/nvim
command! Src :source $HOME/.config/nvim/init.vim

" disable preset styles for certain filetypes
let g:python_recommended_style=0
let g:rust_recommended_style=0

set number
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set scrolloff=3

set mouse=""

" for lsp signs
set signcolumn=yes

set splitright

" add a vertival line at column 80
set cc=80

set tags=tags;/

"""" Key mappings """"
" scroll more lines
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

" Keep cursor centered for search (n/N) and J
nnoremap n nzz
nnoremap N Nzzz
nnoremap J mzJ`z

" set break points for undo
"   <c-g>u sets undo break point
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap <SPACE> <SPACE><c-g>u

" Esc in termianl mode will enter insert mode in terminal
tnoremap <Esc> <C-\><C-n>

" nnoremap <M-m> <c-w>h
" nnoremap <M-i> <c-w>l
" nnoremap <M-n> <c-w>j
" nnoremap <M-e> <c-w>k
"
nnoremap <c-w>h <c-w>15<
nnoremap <c-w>l <c-w>15>

" nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>b :Telescope buffers<CR>

" always show file name
set laststatus=2
set statusline+=%F

command! Vb normal! <C-v>

source ~/.config/nvim/plugins.vim

" setting colors after sourcing plugins because some colorschemes are installed there
set background=dark

""" gruvbox 
" colorscheme gruvbox

""" solarized
" let g:solarized_visibility= 'low'
" let g:solarized_termtrans = 1
" let g:solarized_darkbg = 1
let g:solarized_yellow_linenr = 1
colorscheme solarized
"
" colorsheme moonbow

" colorscheme coal

""" tokyo night
" let g:tokyonight_style = 'storm'
" colorscheme tokyonight

" transparent background
" hi Normal guibg=none ctermbg=none
" hi FoldColumn guibg=none ctermbg=none
" hi Folded guibg=none ctermbg=none
" hi ToolbarButton guibg=none ctermbg=none
" hi ToolbarLine guibg=none ctermbg=none
" hi FloatBorder guibg=none ctermbg=none

highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4

augroup NoModWhenReadOnly
    autocmd!
    autocmd BufRead * let &l:modifiable = !&readonly
augroup END

" highlight current line
set cursorline
set wildcharm=<tab>
" execute init.lua
lua require("renny")

""" source additional settings
" for f in split(glob('~/.config/nvim/extra-plugins/*.vim'), '\n')
"   exe 'source' f
" endfor
