syntax enable
syntax on
filetype plugin indent on
" let vim know that the termianl supports 256 colors
let &t_Co=256


" map leader key to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" :Q to forcifully exit vim
nnoremap :QWE :q!

" :ec to edit init.vim
nnoremap :ec :tabe $HOME/.config/nvim/init.vim

" transparent background
hi Normal guibg=NONE ctermbg=NONE
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

" add a vertival line at column 80
set cc=80

"""" Key mappings """"
" Shift + TAB to remove tab in normal mode
nnoremap <S-Tab> <C-d>
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

" always show file name
set laststatus=2
set statusline+=%F

"Disable function highlighting (affects both C and C++ files)
"let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" Set airline theme to 'dark'
let g:airline_theme = 'dark'

command! Vb normal! <C-v>

" remove background color when not focused to allow pane dimming in tmux
" this color is for gruvbox; might not work otherwise
autocmd FocusLost * hi Normal guibg=NONE ctermbg=NONE
autocmd FocusGained * hi Normal guibg=NONE ctermbg=235

source ~/.local/share/nvim/plugins.vim

" setting colors after sourcing plugins because some colorschemes are
" installed there
set background=dark
colorscheme gruvbox

" execute init.lua
lua require("renny")

""" source additional settings """
for f in split(glob('~/.local/share/nvim/extra-plugins/*.vim'), '\n')
  exe 'source' f
endfor
