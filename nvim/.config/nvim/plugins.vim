call plug#begin(stdpath('data') . '/plugged')

" modern cpp syntax highlighting
Plug 'https://github.com/bfrg/vim-cpp-modern.git'

" airline (prettier vim status bar)
Plug 'https://github.com/vim-airline/vim-airline.git'

" better vim syntax highlighting
Plug 'https://github.com/justinmk/vim-syntax-extra.git'

" said to be the best colorscheme
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

" real-time markdown
"   MarkdownPreview -> opens preview window
"   MarkdownPreviewStop -> closes preview window and server
 Plug 'iamcco/markdown-preview.vim'

" better python syntax highlighting
Plug 'sheerun/vim-polyglot'

" fzf (requirs fzf to be installed)
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }

" allow vim to detect focus lost/gain in tmux 
Plug 'tmux-plugins/vim-tmux-focus-events'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Draws vertical lines for indents
Plug 'lukas-reineke/indent-blankline.nvim'

" Commenting plugin
Plug 'numToStr/Comment.nvim'


""" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'onsails/lspkind-nvim'

call plug#end()