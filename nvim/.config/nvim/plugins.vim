call plug#begin(stdpath('data') . '/plugged')

" lualine (prettier vim status bar)
Plug 'nvim-lualine/lualine.nvim'

" colorschemes
Plug 'morhetz/gruvbox'
" Plug 'ishan9299/nvim-solarized-lua'
Plug 'folke/tokyonight.nvim'
Plug 'cranberry-clockworks/coal.nvim'

" real-time markdown
Plug 'iamcco/markdown-preview.vim'

" telescope for fuzzy-finding
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': 'nvim-0.6' }
" Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" bufferline
Plug 'akinsho/bufferline.nvim', {'tag': 'v2.*'}

" tagbar 
Plug 'preservim/tagbar'

" tmux pane switching integration
Plug 'christoomey/vim-tmux-navigator'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '5e894bd'}
" Plug 'nvim-treesitter/nvim-treesitter', {'tag': '0.5-compat'}
" Plug 'nvim-treesitter/playground'

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
Plug 'sunjon/shade.nvim'

call plug#end()
