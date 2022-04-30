call plug#begin(stdpath('data') . '/plugged')

" lualine (prettier vim status bar)
Plug 'nvim-lualine/lualine.nvim'

" better vim syntax highlighting for C
" Plug 'https://github.com/justinmk/vim-syntax-extra.git'

" colorschemes
" Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'
" Plug 'altercation/vim-colors-solarized'
Plug 'ishan9299/nvim-solarized-lua'

" real-time markdown
Plug 'iamcco/markdown-preview.vim'

" fzf (requirs fzf to be installed)
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }

" allow vim to detect focus lost/gain in tmux 
Plug 'tmux-plugins/vim-tmux-focus-events'

" tmux pane switching integration
Plug 'christoomey/vim-tmux-navigator'

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


call plug#end()
