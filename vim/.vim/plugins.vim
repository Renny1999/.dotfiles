call plug#begin('~/.vim/plugged')

" modern cpp syntax highlighting
Plug 'https://github.com/bfrg/vim-cpp-modern.git'

" airline (prettier vim status bar)
Plug 'https://github.com/vim-airline/vim-airline.git'

" better vim syntax highlighting
Plug 'https://github.com/justinmk/vim-syntax-extra.git'

" said to be the best colorscheme
Plug 'morhetz/gruvbox'

" real-time markdown
"   MarkdownPreview -> opens preview window
"   MarkdownPreviewStop -> closes preview window and server
" Plug 'iamcco/markdown-preview.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" better python syntax highlighting
Plug 'sheerun/vim-polyglot'

" fzf (requirs fzf to be installed)
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }

" allow vim to detect focus lost/gain in tmux 
Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()
