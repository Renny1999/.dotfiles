syntax enable
syntax on
filetype plugin indent on
" let vim know that the termianl supports 256 colors
let &t_Co=256


" map leader key to space
" nnoremap <SPACE> <Nop>
" let mapleader = " "

" :Q to forcifully exit vim
nnoremap :QWE :q!

command Initlua :tabe ~/.config/nvim/
command Initvim :tabe ~/.local/share/nvim
command Ec :tabe $HOME/.config/nvim/init.vim
command Src :source $HOME/.config/nvim/init.vim


" disable preset styles for certain filetypes
let g:python_recommended_style=0

set relativenumber
set number
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set scrolloff=3

" for lsp signs 
set signcolumn=yes

" for insert mode, highlight current line
autocmd InsertEnter,InsertLeave * set cul!

" remove background color when not focused to allow pane dimming in tmux
" this color is for gruvbox; might not work otherwise
"autocmd FocusLost * hi Normal guibg=NONE ctermbg=NONE
"autocmd FocusGained * hi Normal guibg=NONE ctermbg=235


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

" always show file name
set laststatus=2
set statusline+=%F

command! Vb normal! <C-v>

source ~/.config/nvim/plugins.vim

" setting colors after sourcing plugins because some colorschemes are installed there
set background=dark
" colorscheme gruvbox-material
colorscheme gruvbox
"lua require('colorbuddy').colorscheme('gruvbuddy')

" transparent background
"hi Normal guibg=NONE ctermbg=NONE

" execute init.lua
lua require("renny")

""" source additional settings """
for f in split(glob('~/.config/nvim/extra-plugins/*.vim'), '\n')
  exe 'source' f
endfor
