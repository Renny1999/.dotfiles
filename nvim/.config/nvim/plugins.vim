call plug#begin(stdpath('data') . '/plugged')

" lualine (prettier vim status bar)
Plug 'nvim-lualine/lualine.nvim'

" colorschemes
" Plug 'morhetz/gruvbox'
" Plug 'ishan9299/nvim-solarized-lua'
" Plug 'folke/tokyonight.nvim'
" Plug 'cranberry-clockworks/coal.nvim'
" Plug 'arturgoms/moonbow.nvim'
Plug 'mofiqul/vscode.nvim'

" telescope for fuzzy-finding
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" tagbar
Plug 'preservim/tagbar'

" tmux pane switching integration
Plug 'christoomey/vim-tmux-navigator'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'nvim-treesitter/nvim-treesitter', {'tag': '0.5-compat'}
Plug 'nvim-treesitter/playground'

" Draws vertical lines for indents
Plug 'lukas-reineke/indent-blankline.nvim'

" Commenting plugin
Plug 'numToStr/Comment.nvim'

""" LSP stuff
" Plug 'williamboman/nvim-lsp-installer'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Plug 'sunjon/shade.nvim'

Plug 'ggandor/leap.nvim'

Plug 'https://github.com/Renny1999/cscope_maps.nvim.git'
Plug 'mfussenegger/nvim-jdtls'

Plug 'stevearc/oil.nvim'


call plug#end()
